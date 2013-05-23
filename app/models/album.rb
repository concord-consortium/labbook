class Album < ActiveRecord::Base
  has_many :snapshots
end
