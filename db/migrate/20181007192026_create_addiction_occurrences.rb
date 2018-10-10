class CreateAddictionOccurrences < ActiveRecord::Migration[5.2]
  def change
    create_table :addiction_occurrences do |t|
      t.integer :user_id
      t.integer :addiction_id
      t.integer :location
      t.string :circumstance
      t.integer :amount
      t.decimal :cost
      t.boolean :craving

      t.timestamps
    end
  end
end
