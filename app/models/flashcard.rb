class Flashcard < ApplicationRecord
    belongs_to :deck
    belongs_to :user 
    validates :name, presence: true
    validates :definition, presence: true 

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end 

    def deck_name=(name)
        self.deck = Deck.find_by(name: name)
    end
    
    def deck_name
        self.deck ? self.deck.name : nil
    end
end
