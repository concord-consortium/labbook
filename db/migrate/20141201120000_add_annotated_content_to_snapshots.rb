class AddAnnotatedContentToSnapshots < ActiveRecord::Migration
  def up
    add_attachment :snapshots, :annotated_content
  end

  def down
    remove_attachment :snapshots, :annotated_content
  end
end
