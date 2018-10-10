class CreateAddictions < ActiveRecord::Migration[5.2]
  def change
    create_table :addictions do |t|
      t.string :name

      t.timestamps
    end
  end
end
