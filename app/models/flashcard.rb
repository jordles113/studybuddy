class Flashcard < ApplicationRecord
    validates :name, presence: true
    validates :definition, presence: true 

    def self.search(search)
        where("name LIKE ?", "%#{search}%")
    end 
end
