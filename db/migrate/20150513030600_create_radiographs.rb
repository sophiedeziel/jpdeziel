class CreateRadiographs < ActiveRecord::Migration
  def change
    create_table :radiographs do |t|
      t.integer :age
      t.string :image
      t.references :prevention_category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
