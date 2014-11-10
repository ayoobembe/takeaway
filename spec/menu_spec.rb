require 'menu'

describe Menu do 

	let(:menu)											{Menu.new}
	let(:dish1)											{double :Dish}
	let(:dish2)											{double :Dish}
	let(:dish3)											{double :Dish}

	it "should exist when initialized" do
		expect(menu).not_to be_nil
	end

	it "should be able to populate dish hash with array" do 
		expect(menu.dish_menu.size).to eq 0
		menu.add_dishes!([dish1,dish2,dish3])
		expect(menu.dish_menu.size).to be 3
	end

	it "should be able to return dish hash" do 
		menu.add_dishes!([dish1,dish2,dish3])
		dish_menu = {1=>dish1,2=>dish2,3=>dish3}
		expect(menu.dish_menu).to eq dish_menu
	end

	it "should be able to return a dish when its key is selected" do 
		menu.add_dishes!([dish1,dish2,dish3])
		expect(menu.get_item(1)).to be dish1
	end

	


end
