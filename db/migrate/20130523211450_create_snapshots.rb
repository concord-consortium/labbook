class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.binary  :content, :limit => 10.megabytes
      t.text    :comment
      t.integer :album_id

      t.timestamps
    end
  end
end
