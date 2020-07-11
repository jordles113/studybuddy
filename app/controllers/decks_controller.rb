class DecksController < ApplicationController
    before_action :set_decks, only: [:show, :edit, :update, :destroy]
    
    def index
        @decks = Deck.all
        
    end 
    
    def show
    end

    def new
        @deck = Deck.new
    end
    
    def create
        @deck = Deck.new(deck_params)
        if @deck.valid? 
            @deck.save 
            redirect_to deck_path(@deck)
        else  
            render :new
        end 
    end

    def edit
    end 

    def update
        @deck.update(deck_params)
        if @deck.valid? 
            @deck.save
            redirect_to deck_path(@deck)
        else  
            render :edit
        end 
    end 

    def destroy
        @deck.destroy
        redirect_to decks_path
    end 

    

    private 
    
    def set_decks
        @deck = Deck.find(params[:id])
    end

    def deck_params
        params.require(:deck).permit(:name, :public_deck)
    end 
end


