class CreatePreventionCategories < ActiveRecord::Migration
  def change
    create_table :prevention_categories do |t|
      t.string :name
      t.text :description
      t.string :slug
      t.timestamps null: false
    end
  end
end
