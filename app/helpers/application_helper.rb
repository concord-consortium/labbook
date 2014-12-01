module ApplicationHelper
  def snapshot_image_tag(snapshot, size=:medium)
    url = snapshot.content.url(size)
    alt = snapshot.content.original_filename || "missing snapshot"
    image_tag(url, alt: alt, title: alt)
  end
  def annotated_snapshot_image_tag(snapshot, size=:medium)
    return snapshot_image_tag(snapshot, size) unless snapshot.annotated_content
    url = snapshot.annotated_content.url(size)
    alt = snapshot.annotated_content.original_filename || "missing snapshot"
    image_tag(url, alt: alt, title: alt)
  end
end
