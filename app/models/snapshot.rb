class Snapshot < ActiveRecord::Base
  attr_reader :content_remote_url
  belongs_to :album

  has_attached_file :content,
    styles: { medium: "500x500>", thumb: "100x100>" },
    default_url: "/images/:style/missing.png"

  def content_remote_url=(url_str)
    self.content = URI.parse(url_str)
    @content_remote_url = url_str
  end
end
