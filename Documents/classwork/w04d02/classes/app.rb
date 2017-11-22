class Human
	def initialize(name, age)
		@name = name
		@age = age
	end

	def display
		puts "#{@name} is #{@age}"
	end

	def canVote
		if @age > 18
			return true

		else
			return false
		end	
	end

	def vote
		if canVote
			puts "Vote for L/C/LB?"
			choice = gets.chomp

			case choice
				when "L"
					puts "#{@name} voted for labour"
				when "C"
					puts "#{@name} voted for conservatives"
				when "LB"
					puts "#{@name} voted for lib-dems"

				else
					puts "WHO DAFUQ IS THAT"

				end

		else 
			puts "can't vote"
		end
	end
end

puts "name?"
name = gets.chomp
puts "age?"
age = gets.to_i

keir = Human.new(name, age)
keir.display

puts keir.vote