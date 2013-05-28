class Snapshot < ActiveRecord::Base
  belongs_to :album

  has_attached_file :content,
    styles: { medium: "500x500>", thumb: "100x100>" },
    url: "/system/snapshots/:hash.:extension",
    hash_secret: (ENV['PAPERCLIP_SECRET'] || "default_paperclip_secret"),
    default_url: "/images/:style/missing.png"
end
