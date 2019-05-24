class Point < ApplicationRecord
  require 'csv'
	#validates :user, :steps, :distance, :exercise, :sleep, :calories, presence: true

	def self.import(file)
		CSV.foreach(file.path, {encoding: "UTF-8", col_sep: ";", headers: true, header_converters: :symbol, converters: :all}) do |row|
			if Point.exists?(name: row[:name])
				puts 'this point already exists'
			else
				Point.create! row.to_hash
			end
		end
	end


end
