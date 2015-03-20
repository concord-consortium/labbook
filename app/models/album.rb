require 'uuidtools'

class Album < ActiveRecord::Base
  self.primary_key = "uuid"

  has_many :snapshots

  before_create { |album| album.uuid = UUIDTools::UUID.random_create.to_s }

  def self.token(source, user_id)
    Digest::SHA1.hexdigest("#{source}-#{user_id}")
  end

  def replace_all_snapshots(source_album)
    self.transaction do
      snapshots.destroy_all
      new_snapshots = source_album.snapshots.map { |s| s.dup }
      self.snapshots = new_snapshots
      save!
    end
  end
end
