class CreateCircumstances < ActiveRecord::Migration[5.2]
  def change
    create_table :circumstances do |t|
      t.string :description

      t.timestamps
    end
  end
end
