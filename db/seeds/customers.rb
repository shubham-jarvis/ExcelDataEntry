require 'csv'

csv_text = File.read('db/seeds/customers.csv')
csv = CSV.parse(csv_text, :headers => true)
csv.each do |row|
  c=Customer.new
  c.Organization = row[0]
  c.State = row[1]
  c.Designation = row[2]
  c.Name = row[3]
  c.Gender = row[4]
  c.Mobile_No = row[5]
  c.Whatsapp_No = row[6]
  c.Email = row[7]
  c.Address = row[8]
  c.Village = row[9]
  c.Taluka = row[10]
  c.District = row[11]
  c.Pincode = row[12]
  c.Vidhan_Sabha = row[13]
  c.Booth = row[14]
  c.Primary_Member_ID = row[15]
  c.Voter_ID = row[16]
  c.Caste = row[17]
  c.Category = row[18]
  c.Education = row[19]
  c.Profession = row[20]
  c.currently_assigned_to = row[21]
  c.is_complete=false
  c.save
end