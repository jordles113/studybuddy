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
        if @deck.save 
            redirect_to deck_path(@deck)
        else  
            render :new
        end 
    end

    

    private 
    
    def set_decks
        @deck = Deck.find(params[:id])
    end

    def deck_params
        params.require(:deck).permit(:name)
    end 
end


