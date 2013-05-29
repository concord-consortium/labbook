require 'uuidtools'

class Album < ActiveRecord::Base
  self.primary_key = "uuid"

  has_many :snapshots

  before_create {|album| album.uuid = UUIDTools::UUID.random_create.to_s }
end
