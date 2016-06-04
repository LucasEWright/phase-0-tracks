def say_good_morning(a)
	name1 = a
	puts "Good Morning!"
	yield (name1)
end

say_good_morning { |name1| puts "Please go away #{name1}, I haven't had my coffee." }
