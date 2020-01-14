class Person                            #Person Class

  protected

  attr_accessor :name, :age, :email, :dob 

  def set_personal_data
    print "Enter Name : "
    @name = gets().chomp

    print "Enter Age : "
    @age = gets().chomp.to_i

    print "Enter E-mail Id : "
    @email = gets().chomp

    print "Enter Date of Birth : "
    @dob = gets().chomp

  end

  def get_personal_data

    puts "Name : #{@name} "
    puts "Age : #{@age} "
    puts "E-Mail Id : #{@email} "
    puts "Date of Birth : #{@dob} "
 
  end


end



class Employee < Person                       #Employee Class


  @@Employee_id = 0

  attr_reader :salary,:doj
  attr_accessor :job_profile,:manager_id

  def initialize
    set_personal_data

    print "Enter Date of Joining : "
    @doj = gets().chomp

    print "Enter Salary of Employee : "
    @salary = gets().chomp

    print "Enter Employee's Job Profile : "
    @job_profile = gets().chomp

    print "Enter ID of Assigned Manager : "
    @manager_id = gets().chomp.to_i

    @@Employee_id += 1
  end

  def employee_details
    get_personal_data

    puts "Employee ID : #{@@Employee_id} "
    puts "Date of Joining : #{@doj} "
    puts "Manager Assigned : #{@manager_id} "

  end

  def self.Employee_id
    @@Employee_id
  end

  
end



class Customer < Person                 #Customer Class

  @@Customer_id = 0

  attr_reader :cust_id

  def self.Customer_id
    @@Customer_id
  end

  def initialize

    set_personal_data
    @@Customer_id += 1
    @cust_id = @@Customer_id

  end


  def customer_details
    get_personal_data

    puts "Customer ID : #{@cust_id} "
  
  end

end

class Supervisor < Employee                 #Supervisor Class

  def supervisor_details
    employee_details
  end

  
end


puts "\n*****Customer 1*****\n"
customer1 = Customer.new

puts "\n*****Customer 2*****\n" 
customer2 = Customer.new


puts "\n*****Customer 1 Details*****\n"
customer1.customer_details

puts "\n*****Customer 2 Dtails*****\n"
customer2.customer_details

puts "\n*****Employee 1*****\n" 
employee1 = Employee.new

=begin

puts "\n*****Employee 2*****\n" 
employee2 = Employee.new

=end

puts "\n*****Employee 1 Details*****\n"
employee1.employee_details


=begin

puts "\n******Employee 2 Details*****\n"
employee2.employee_details

=end

puts "\n*****Manager 1*****\n" 
manager1 = Supervisor.new

=begin

puts "\n*****Manager 2*****\n" 
manager2 = Supervisor.new

=end


puts "\n*****Manager 1 Details*****\n"
manager1.supervisor_details


=begin 

puts "\n*****Manager 2 Details*****\n"
manager2.supervisor_details

=end
