require 'csv'

csv_text = File.read('db/seeds/roles.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  Role.create(title: row[0])
end