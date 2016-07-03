def morning 

	puts "Is it before noon?"
	yield ("Felicia")
end

morning { |greeter| puts "Don't speak to me #{greeter}, I need coffee" }

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
modified_b_food = breakfast_food.map do |food|
	puts food
	food.capitalize
end
p modified_b_food

liguor_effects.each do |cause, effect|
	puts "When I drink #{cause} I feel #{effect}"
end

test_array= [1,2,3,4,5,6,7,8,9,10
]

test_array.reject! {|x| x<8} 

test_array.take_while { |x| x < 8 }

test_array.count { |x| x < 8 }

test_array.delete_if {|x| x<8} 