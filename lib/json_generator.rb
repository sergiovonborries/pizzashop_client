module JsonGenerator
    def generate_ingredients
        generated = {:pizza_item_ingredients_attributes => []}
        rand(0..5).times do 
            generated[:pizza_item_ingredients_attributes] << {:ingredient_id => rand(1..25)}
        end
        generated
    end

    def generate_toppings
        generated = {:pizza_item_toppings_attributes => []}
        rand(0..5).times do 
            generated[:pizza_item_toppings_attributes] << {:topping_id => rand(1..20)}
        end
        generated
    end

    def generate_other_product_item
        generated = {:other_product_item_attributes => {:other_product_id=>rand(1..3)}}
    end

    def generate_pizza_items
        generated = {:cheese=>2, :sauce=>0, :crust=>1, :pizza_id=>1, :pizza_size_id=>4}.merge(generate_toppings)
        generated = generated.merge(generate_ingredients)
        generated = {:pizza_item_attributes => generated}
        generated
    end

    def generate_order_items
        generated = {:order_items_attributes => []}
        rand(1..5).times do 
            temp_hash = [true, false].sample ? generate_pizza_items : generate_other_product_item
            generated[:order_items_attributes] << {:quantity => rand(1..3)}.merge(temp_hash)
        end
        generated
    end

    def generate_delivery
        [true, false].sample ? {:delivery_attributes => {:address=>Faker::Address.street_address, :ask_for=>Faker::Name.name}} : {:delivery_attributes => {}}
    end

    def generate_orders
        generated = {:customer_name=>Faker::Name.name_with_middle, comment: Faker::Lorem.sentence}.merge(generate_delivery)
        generated = generated.merge(generate_order_items)
        generated = {:order => generated}
        generated
    end
end
