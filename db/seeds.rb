# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "csv"

Athlete.destroy_all

filepath = "data/names2.csv"
csv_text = File.read(Rails.root.join(filepath))
puts csv_text
csv = CSV.parse(csv_text, :headers => true)

csv.each do |row|
  # puts "hello"
  a = Athlete.new
  a.name = row['name']
  a.save
  puts " #{a.name} is saved"

end
