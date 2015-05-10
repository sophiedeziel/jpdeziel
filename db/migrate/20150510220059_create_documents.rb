class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.string :name
      t.string :slug
      t.text :content

      t.timestamps null: false
    end
  end
end
