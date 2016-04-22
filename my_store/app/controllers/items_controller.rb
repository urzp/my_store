class ItemsController < ApplicationController
    
    def index
        @items =Item.all    
    end  
    
    
    #/items/1 GET
    def show
        unless @item=Item.where(id: params[:id]).first
           render text:  "Page not found", status: 404 
       end   
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
    
   
    

    
    private
    
    def item_params
      params.require(:item).permit(:name, :description, :price, :weight, :real )
  end
end
