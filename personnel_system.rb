class Employee
	attr_accessor :employee, :role, :location
	
			def initialize(employee, role, location)
				@employee = employee
				@role = role
				@location = location
			end
			
			def employee_change(new_emp)
				@employee = new_emp
			end

			def role_change(new_role)
				@role = new_role
			end	
			

			def location_change(new_loc)
				@location = new_loc
			end	 
end
		
def main_menu
	puts "Welcome to the Employee Portal"
	puts "Please select an option below: "
	puts "---------------------"
	puts "1. Create New Employee Record."
	puts "2. View an existing record."
	puts "3. Modify an existing record."
	puts "4. Exit Portal"

		option = gets.chomp.to_i

		if option == 1
				create_record
				main_menu
				
		elsif option == 2
				view_record

		elsif option == 3
				modify
				
		elsif option == 4
				puts "Thank you for using the Employee Portal"
				exit
		else
				puts "Not a valid option. Please try again."
				main_menu
				system("clear")

		end
end


def create_record
	puts "Create New Employee Record, click 'Enter' to begin"
	puts "Enter Employee Name: "
	employee = gets.chomp.capitalize

	puts "Enter Employee's Role: "
	role = gets.chomp.capitalize

	puts "Enter Employee's Current Work Location: "
	location = gets.chomp.capitalize
	
	puts "\n"
	
	new_record = Employee.new(employee, role, location)
	@records.push(new_record)

		puts "New Employee Record has been created."
		puts "Name: #{employee}"
		puts "Role: #{role}"
		puts "Location: #{location}"
	
		
		main_menu
end

def view_record
	

	puts "Enter Employee Name to view record: "
	name = gets.chomp.capitalize

			if a = @records.detect { |rec| rec.employee == name }

				puts "\n"
				puts "Employee Information "
				puts "--------------------"
				puts " Name :  #{a.employee}"
				puts " Role(s) :  #{a.role}"
				puts " Location(s) :  #{a.location}"
				puts "\n"
				puts " Type 'Exit' to return to the Main Menu "
				puts "\n"
			
				
				
			else	
				puts "That is not a valid entry, please try again."
				view_record
			end
			
		
end	


def modify
	system("clear")
	puts "Enter employee name to modify existing record: "
	name = gets.chomp.capitalize
	
	if @records.detect { |rec| rec.employee == name }
		
			puts "Employee found."
			puts "Select an option to modify."
			puts "-----------------------------------"
			puts "1.) Modify employee's name."
			puts "2.) Modify employee's role."
			puts "3.) Modify employee's location."
			puts "4.) Return to Main Menu"
			puts "\n"
			
			option = gets.chomp.to_i
			
				if option == 1
					puts "Enter new employee name: "
					new_emp = gets.chomp.capitalize
						@records.each do |n|
							 if n.employee == name
									n.employee_change(new_emp)
									system("clear")
									puts "Employee\'s name has been updated to #{n.employee}"
									puts "\n"
									
							 end
						end
				end
				
				if option == 2
					puts "Enter employee\'s new role: "
					new_role = gets.chomp.capitalize 
						@records.each do |n|
							 if n.employee == name
									n.role_change(new_role)
									system("clear")
									puts "Employee\'s new role has been updated to #{n.role}"
									
							 end
						end
				end
				
				if option == 3
					puts "Enter employee\'s new location: "
					new_loc = gets.chomp.capitalize
						@records.each do |n|
							if n.employee == name
								n.location_change(new_loc)
								system("clear")
								puts "Employee\'s new location is #{n.location}"
								
							end
						end
				end
				
			main_menu
				
				if option == 4
					main_menu	
				end	
					
				else
					puts "Invalid selection. Please try again."
						modify
				end	
end
				




@records = []
system("clear")
main_menu