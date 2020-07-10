class AddColumnToFlashcards < ActiveRecord::Migration[6.0]
  def change
    add_column :flashcards, :deck_id, :integer
  end
end
