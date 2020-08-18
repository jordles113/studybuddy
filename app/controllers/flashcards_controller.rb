class FlashcardsController < ApplicationController
    helper_method :user_session 
    helper_method :current_user 
    before_action :authenticate_user!, except: [:index, :show]
    
    before_action :set_flashcard, only: [:show, :edit, :update, :destroy]

    def index
        @flashcards = Flashcard.search(params[:search])
    end 


    def new 
        @flashcard = current_user.flashcards.new
    end 

    def create     
        @flashcard = current_user.flashcards.new(flashcard_params)
            if @flashcard.save 

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
        params.require(:flashcard).permit(:name, :definition, :search, :deck_id, :user_id)
    end 


   
end
