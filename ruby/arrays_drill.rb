def test_array(a, b, c)
 	return a, b, c 
end


def test_array_2(a, b)
 	return a, b
end



def test_array_3(arr, value)
  arr[1].to_i == value.to_i
end












p test_array(1,5,"bunny")

p test_array_2([1,2,3,"x","y","z"],"bunny")


p test_array_3([10, 9, 8], 9)