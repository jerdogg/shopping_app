class CreateStores < ActiveRecord::Migration[5.1]
  def change
    create_table :stores do |t|
      t.text :name

      t.timestamps
    end
  end
end
