class ItemsController < ApplicationController
    
    #/items/1 GET
    def show
    end
    
    
    def new
    end
    
    #/items/1/edit GET
    def edit
    end
    
    #/items POST
    def create
        render text: "item create"
    end
    
    #/items/1 PUT
    def update
    end
    
    #/items/1 DELETE
    def destroy
    end
    
    def index
        @items= Item.all
        render text: @items.map {|i| "  #{i.name} price #{i.price}$"}.join("<br/>")
    end    
    

    
    private
    
    def item_params
      params.require(:item).permit(:name, :description, :price, :weight, :real )
  end
end
