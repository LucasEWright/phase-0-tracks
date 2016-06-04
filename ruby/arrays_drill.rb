def test_array(a, b, c)
 	array = a, b, c 
 	#below is a check to make sure it's returning an array 
 	#array[1].class
 	#array.class
end

test_array(1, "c", 5)


def test_array_2(a, b)
	a.push (b)
end 

test_array_2([1,2,3], "H")


def test_array_3(arr, value)
  arr[1].to_i == value.to_i
end]
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




#_____________DRIVER CODE_________________________

test_array(1, "c", 5)

test_array_2([1,2,3,"x","y","z"],"bunny")


p test_array_3([10, 9, 8], 9)