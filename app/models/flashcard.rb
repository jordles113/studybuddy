class Flashcard < ApplicationRecord
    belongs_to :decks
    validates :name, presence: true
    validates :definition, presence: true 

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end 

    def deck_name=(name)
        self.decks = Deck.find_by(name: name)
    end
    
    def deck_name
        self.decks ? self.decks.name : nil
    end
end
