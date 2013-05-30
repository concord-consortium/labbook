class CreateSnapshots < ActiveRecord::Migration
  def change
    create_table :snapshots do |t|
      t.attachment :content
      t.text    :comment
      t.string  :album_id, :limit => 36

      t.timestamps
    end
  end
end
