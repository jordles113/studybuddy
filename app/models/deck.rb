class Deck < ApplicationRecord
    has_many :flashcards, dependent: :destroy 
    validates :name, presence: true, uniqueness: true 
    # default_scope { where(public: true) }
    scope :public_deck, -> { where(public_deck: true) }

end
