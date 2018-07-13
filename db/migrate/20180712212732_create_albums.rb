class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.integer :year, null:false
      t.string :title, null: false
      t.boolean :type, null: false , default: true
      t.timestamps
    end
  end
end
