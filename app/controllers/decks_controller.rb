class DecksController < ApplicationController
    before_action :set_decks, only: [:show, :edit, :update, :destroy]
    def index
        @decks = Deck.all 
    end 

    def new
        @deck = Deck.new
    end 

    def create
        @deck = Deck.new(deck_params)
        @deck.save 
        redirect_to decks_path
    end 

    def show 
        @deck_cards = @deck.flashcards
    end 

    private 
    
    def set_decks
        @deck = Deck.find(params[:id])
    end

    def deck_params
        params.require(:deck).permit(:name, :user_id)
    end 
end


