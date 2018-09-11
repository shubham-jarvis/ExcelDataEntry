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
        if Customer.where(currently_assigned_to: i.name).count <= 5
          puts i.name
          puts Customer.where(currently_assigned_to: i.name).count
          c.currently_assigned_to = i.name
          c.save
        end
      end
    end
    @@i=1
    redirect_to supervisor_index_path
  end
end
