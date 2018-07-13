class ChangeAlbumColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :albums, :type ,:livestudio
  end
end
