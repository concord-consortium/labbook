class AddTokenToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :token, :string, :limit => 40 # 40 chars is the length of a sha1 hash in hex
    add_index :albums, :token
  end
end
