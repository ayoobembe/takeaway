
class Menu

	def initialize
		@dish_menu = {}
	end

	def add_dishes!(dish_array)
		dish_array.each do |dish|
			@dish_menu[(dish_array.index(dish))+1] = dish 
		end
	end

	def dish_menu
		@dish_menu
	end

	def get_item(dish_key)
		@dish_menu.fetch(dish_key)
	end


end

