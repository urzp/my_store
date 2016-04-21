class ItemsController < ApplicationController
    def index
        @items= Item.all
        render text: @items.map {|i| "  #{i.name} price #{i.price}$"}.join("<br/>")
    end    
    
    def create
         
        @item=Item.create(article_params)
        
       # @item=Item.create(params[:item])
       
        p params
        
        #create?item[name]=car&item[description]=good+car&item[price]=500000&item[weight]=0&item[real]=1
        
        
        #create?name=car&description=good+car&price=500000&weight=0&real=1
        
        render text: "#{@item.id}  #{@item.name} (#{!@item.new_record?})" 
    end
    
    private
  def article_params
      params.require(:item).permit(:name, :description, :price, :weight, :real )
  end
end
