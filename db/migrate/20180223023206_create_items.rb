class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.text :name
      t.text :description
      t.integer :quantity
      t.decimal :price
      t.belongs_to :list, foreign_key: true

      t.timestamps
    end
  end
end
