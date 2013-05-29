class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums, :id => false do |t|
      t.string :uuid, :limit => 36, :primary => true

      t.timestamps
    end
  end
end
