

class OrderingSystem

	@@menu={'Dal_Makhni'=>10,'Dal_Rice'=>10,'Veg_Roll'=>2,'Paneer_Roll'=>2,'Butter_chicken'=>2,'Biryani'=>2}
	@@order_id=0
	
	attr_reader :name,:customer_id,:phone
	attr_accessor :order_status,:order_id

	def initialize(name,customer_id,phone)
		@name=name
		@customer_id=customer_id
		@phone=phone
	end

        def self.order_id
		@@order_id
	end 
	
	def self.menu
		@@menu
        end

	def show_menu
		@@menu.each do |key, value|
  			puts "#{key}"
		end
	end


	def profile
		puts "Customer_Name : "+ @name
		puts "Customer_ID : "+@customer_id.to_s()
		puts "Phone Number :"+@phone.to_s()
	end

	def accept_order(food_item)
		id=@@menu.fetch(food_item,-1).to_i()
		if(id>0)
			@@menu[food_item]-=1
			@@order_id+=1
			@order_status=1
			return 1
		elsif (id==-1)
			puts "Please Enter Correct Item"
		else
			puts "Sorry ! Item Not Available"
			return 0
		end
	end

	def check_availability(food_item)
		quant=@@menu.fetch(food_item,-1)
		if(quant>0)
			puts "Item Available to Order"
			puts "Quantity available : " + quant.to_s()
		elsif (quant==-1)
			puts "Please Enter Correct Item"
		elsif (quant==0)
			puts "Item Not Available"
		end	
	end

	def display_order_status(acc_status)
		if(acc_status==1)	
			puts "Order is Placed and Being Prepared"
			print "Order ID : "+@@order_id.to_s()
		elsif (acc_status==-1)
			puts "Order Not Placed , Place Order First"
		elsif (acc_status==11)
			puts "Order Is Delivered"
		else
			puts "Order Not Placed, Food Item Not Available"
		end
	end

	def order_stat
		@order_status=11
		return @order_status
	end



end

sagar=OrderingSystem.new("Sagar Sonwane",7893210546,9425952353)


loop do

puts "\n\n*****CHOICES*****"
puts "1. Show User Info"
puts "2. Show Menu"
puts "3. Check Availability of Food Item"
puts "4. Order Food"
puts "5. Change Status of Order"
puts "6. Exit"

print "Enter Your Choice : "
opt=gets().chomp

order_status=-1



	case opt
		when '1'
			puts "\n\n*****Customer Details*****"
			sagar.profile	
		when '2'
			puts "\n\n*****MENU*****"
			sagar.show_menu
		when '3'
			print "\n\nPlease Enter the Food Item You Wish To Check Availability of  : "
			food_item = gets().chomp
			sagar.check_availability(food_item)
		when '4'
			puts "\n\n*****Place Your Order Here*****"
			print "Please Enter the Food Item You Wish To Order : "
			food_item = gets().chomp

			order_status = sagar.accept_order(food_item)
			sagar.display_order_status(order_status)
		when '5'
			puts "*****Change Order Status*****"
			order_status = sagar.order_stat
			sagar.display_order_status(order_status)
			
			
			
	end

	break if opt=='6'

end
















