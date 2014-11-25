class AddAnnotationToSnapshots < ActiveRecord::Migration
  def change
    add_column :snapshots, :annotation, :text, :limit => 4.megabytes
  end
end
