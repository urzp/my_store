class Item < ActiveRecord::Base
    #attr_accessible :price, :name  # позволяте установливать поля черех хеш i=Item.new(price: 100, name: "new item")
    
    validates :price, { numericality: { greater_than: 0, allow_nil: true} } 
    validates :name, :price, :description, presence: true
    

end
