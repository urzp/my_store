class ItemsController < ApplicationController
    
    before_filter :find_item, only: [:show, :edit, :update, :destroy, :upvote]
    before_filter :check_if_admin, only: [:edit, :update, :new, :create, :destroy]
    
    def expensive
        @items = Item.where("price >300")
        render "index"
    end
    
    def upvote
        @item.increment!(:votes_count)
        redirect_to action: :index
    end
    
    def index
        @items =Item.all    
    end  
    
    
    #/items/1 GET
    def show
        unless @item
           render text:  "Page not found", status: 404 
       end   
    end
    
    def new
        @item=Item.new
    end
    

    
    #/items POST
    def create
       #render text: params.inspect
       #render text: params[:item].inspect
   
       @item =Item.create(item_params)
        if @item.errors.empty?
            redirect_to item_path(@item)
        else
            render "new"
        end
    end
    
     #/items/1/edit GET
    def edit
        
    end
    
    #/items/1 PUT
    def update
        
        @item.update_attributes(item_params)
        if @item.errors.empty?
            redirect_to item_path(@item)
        else
            render "new"
        end
    end
    
    #/items/1 DELETE
    def destroy
       
        @item.destroy
        redirect_to action: "index"
    end
    
   
    

    
    private
    
    def check_if_admin
        #unless current_user.admin == true
        #render text: "Access denied", status: 404 unless params[:admin]
        render_403 unless params[:admin]
    end
    
    def find_item
         @item =Item.find(params[:id])
        render_404 unless @item
    end
    
    
    def item_params
      params.require(:item).permit(:name, :description, :price, :weight, :real )
  end
end
