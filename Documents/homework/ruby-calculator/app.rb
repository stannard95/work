

# puts out the sum of two numbers by the relative operator
def calculate
	puts "Your first number?"
		num1 = gets.to_f

		puts "Your second number?"
		num2 = gets.to_f

		puts "And your operator?"
		operator = gets.chomp

	case operator
		when "+"
			puts num1 + num2

		when "-"
			puts num1 - num2

		when "*"
			puts num1 * num2

		when "/"
			puts num1 / num2

		when "**"
			puts num1 ** num2

		when "//"
			puts Math.sqrt(num1)

		else 
			puts "invalid choice"	
	end
end

#calculates the bmi with weight and height
def bmi_calculate
	puts "Your height?"
	height = gets.to_f
	puts "Your weight?"
	weight = gets.to_f
	puts "Your BMI is #{(weight/height**2)*703}"

end

puts "welcome to the Ruby Calulator, would you like to do some maths or BMI? m/b/n"

choice = gets.chomp

while choice == "m" || choice == "b"
	case choice
		when "m"
			calculate
	
		when "b"
			bmi_calculate

		else 
			puts "invalid choice"
	end
	puts "would you like to do some maths or BMI? m/b/n"
	choice = gets.chomp
end
