module ApplicationHelper
  def snapshot_image_tag(snapshot, size=:medium)
    url = snapshot.content.url(size)
    alt = snapshot.content.original_filename || "missing snapshot"
    image_tag(url, alt: alt, title: alt)
  end
end
