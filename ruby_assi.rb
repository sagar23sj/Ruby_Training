#! /home/sagar23sj/.rvm/rubies/ruby-2.6.5/bin/ruby

puts "Please Enter Number of Students : "
student_count = gets.to_i()
stud_arr=[]

for i in 1..student_count do
	student={}
	puts "Please Enter Your Name : "
	name =gets()
	puts "Please Enter Your Attendance : "
	atte=gets.to_i()
	puts "Please Enter Your Marks : "
	marks=gets.to_i()

	student[:name]=name
	student[:attendance]=atte
	student[:marks]=marks


	stud_arr.append(student)
end

sum_marks=0
maxi=-999999
for i in 0...student_count do
	if (stud_arr[i][:attendance]<75)
          puts "You are Detained : " + stud_arr[i][:name]
        end

        if (stud_arr[i][:marks]>=maxi)
            maxi=stud_arr[i][:marks]
        end  	

	sum_marks=sum_marks+stud_arr[i][:marks]
end


for i in 0...student_count do
    if (stud_arr[i][:marks]==maxi)
	puts "Student With Maximum Marks : "+ stud_arr[i][:name]
    end

end

average_marks=0
average_marks=sum_marks/student_count 
puts "Average Marks of "+student_count.to_s()+" students is : "+average_marks.to_s()


