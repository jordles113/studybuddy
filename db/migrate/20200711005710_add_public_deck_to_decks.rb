class AddPublicDeckToDecks < ActiveRecord::Migration[6.0]
  def change
    add_column :decks, :public_deck, :boolean, default: 0
  end
end
