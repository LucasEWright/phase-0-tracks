def test_array(a, b, c)
 	return a, b, c 
end


def test_array_2(a, b)
 	return a, b
end


def test_array_3(arr, value)
  arr[1].to_i == value.to_i
end
#_______________________________________

food = [ ]
p food 

food.push [
	"pizza",
	"taco",
	"hot dog",
	"salsa",
	"chip"
]
p food

food.delete_at(2)
p food

food.insert(2, "chili")
p food

food.shift
p food

food.include?("pizza")
p food

drinks = ["water", "beer", "pop"]
p drinks

new_array = food | drinks
p new_array




#_______________________________________
p test_array(1,5,"bunny")

p test_array_2([1,2,3,"x","y","z"],"bunny")


p test_array_3([10, 9, 8], 9)