class FlashcardsController < ApplicationController
    before_action :set_flashcard, only: [:show, :edit, :update, :destroy]

    def index 
        @flashcards = Flashcard.search(params[:search])
    end 

    def new 
        @flashcard = Flashcard.new
    end 

    def create 
        @flashcard = Flashcard.new(flashcard_params)
        if @flashcard.valid? 
            @flashcard.save
            redirect_to flashcard_path(@flashcard)
        else 
            render :new
        end

    end 

    def show
    end 

    def edit
    end 

    def update 
        @flashcard.update(flashcard_params)
        if @flashcard.valid? 
            redirect_to flashcard_path(@flashcard)
        else 
            render :edit
        end 
    end 

    def destroy
       @flashcard.destroy
       redirect_to flashcards_path
    end 


    private 

    def set_flashcard
        @flashcard = Flashcard.find(params[:id])
    end 

    def flashcard_params
        params.require(:flashcard).permit(:name, :definition, :search, :deck_name)
    end 
end
