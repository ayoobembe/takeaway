require 'dish'

	describe Dish do 
		let(:dish){Dish.new("Lasagna", 5)}

		it "should exist when initialized" do 
			expect(dish).not_to be_nil
		end

		it "should be able to return its name" do 
			expect(dish.name).to eq "Lasagna"
		end

		it "should be able to return its price" do  
			expect(dish.price).to eq 5
		end

	end

