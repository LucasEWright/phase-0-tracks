def TodoList

	def initialize(*args)
		#@list = list
		@list = *args
		#@list.push(*args)
		
	end

	def get_items
		#@list.each { |i| p i }
		@list[0]
	end
	def add_item(item)
		@list[0] << item
	end
		def delete_item(item)
		#@list.delete[item] << item
		@list[0].delete = @list[0] - [item]
	end
	def get_item(index)
		@list[0][index]
	end
end	
