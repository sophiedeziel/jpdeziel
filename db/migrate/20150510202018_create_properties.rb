class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :name
      t.text :value
      t.timestamps null: false
    end
  end
end
