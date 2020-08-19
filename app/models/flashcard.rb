class Flashcard < ApplicationRecord
    belongs_to :deck
    belongs_to :user
    validates :name, presence: true
    validates :definition, presence: true 

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end 

    #def self.public_card
        #need to set flashcards to public when added to public deck and flash are you sure message 
        #need to add a public boolean to flashcards and default to false 
        #need to change to public with addition to public deck 
    #end 
    
end
