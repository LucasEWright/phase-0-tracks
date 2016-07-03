def say_good_morning(a)
	name1 = a
	puts "#{name1}: Good Morning Lucas!!!"
	yield (name1)
end

say_good_morning("Ivan") { |name1| puts "Lucas: Please go away #{name1}, I haven't had my coffee." }
#say_good_morning("Ivan")


#==============================

breakfast_food = [
	"eggs",
	"bacon",
	"pancakes",
	"coffee"
]

liquor_effects = {
	"tequilla"=>"crazy",
	"whiskey"=>"rowdy",
	"vodka"=>"ill",
	"gin"=>"happy"
}

# iterate over array using .each to return what I had for breakfast
breakfast_food.each { |a| puts "This morning I ate #{a}."}


# iterate over array using .map to modify strings to iteger representing the strings length- this 
# changes the items in the array because of the bang (!)
breakfast_quantity = breakfast_food.map! do |x| 
	puts x 
	x.length
end


# iterate over hash array to display the key value pairs of the array.
liquor_effects.each { |x, y| puts "When I consume copious amounts of #{x}, I become #{y}" }


#==================================

numbers = [1.2,3,4,5,6,7,8,9,10]
letter_colors = {a: "blue", c: "red", e: "green"}

#delete if certain condition is met
numbers.delete_if { |x| x > 6 }
letter_colors.delete_if { |key, value| value == "red" }

# keep if certain condition is met
numbers.keep_if { |key| key < 8 }
letter_colors.keep_if { |key, value| key != :a }

# other ways to do the above
numbers.reject { |x| x == (4 + 3) }
letter_colors.reject { |x, y| y.length < 4 }

# remove items until condition returns false
numbers.drop_while { |x| x < 5 }


