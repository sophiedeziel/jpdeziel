class CreateImageFiles < ActiveRecord::Migration
  def change
    create_table :image_files do |t|
      t.string :file

      t.timestamps null: false
    end
  end
end
