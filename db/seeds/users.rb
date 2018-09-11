require 'csv'

csv_text = File.read('db/seeds/users.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  u=User.new
  u.role_id=row[0]
  u.name=row[1]
  u.email=row[2]
  u.mobile=row[3]
  u.password=row[4]
  u.save
end