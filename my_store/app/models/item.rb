class Item < ActiveRecord::Base
    #attr_accessible :price, :name  # позволяте установливать поля черех хеш i=Item.new(price: 100, name: "new item")
end
