class Snapshot < ActiveRecord::Base
  belongs_to :album

  has_attached_file :content,
    styles: { medium: "500x500>", thumb: "100x100>" },
    default_url: "/images/:style/missing.png"
end
