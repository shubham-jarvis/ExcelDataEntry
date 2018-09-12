class SupervisorController < ApplicationController
 @@i=0
 @@message
  def index
    if @@i==0
      @message="Assign"
    else
      @message="Assignment Done!"
    end
    @@i=0
  end
  def assign
    Customer.where(currently_assigned_to: nil).each do |c|
      User.where(role_id: 3).find_each do |i|
        if Customer.where(currently_assigned_to: i.id).count <= 5
          c.currently_assigned_to = i.id
          c.save
        end
      end
    end
    @@i=1
    redirect_to supervisor_index_path
  end

 def import
   keys=["Organization", "State", "Designation", "Name", "Gender", "Mobile_No", "Whatsapp_No", "Email", "Address", "Village", "Taluka", "District", "Pincode", "Vidhan_Sabha", "Booth", "Primary_Member_ID", "Voter_ID", "Caste", "Category", "Education", "Profession", "currently_assigned_to"]
   myfile = params[:file]
   @rowarraydisp = CSV.read (myfile.path)
   @rowarraydisp.each do |row|
     puts Customer.create(Hash[keys.zip(row)])
   end
   Customer.where(currently_assigned_to: nil).each do |c|
     User.where(role_id: 3).find_each do |i|
       if Customer.where(currently_assigned_to: i.id).count <= 5
         c.currently_assigned_to = i.id
         c.save
       end
     end
   end
 end

end
