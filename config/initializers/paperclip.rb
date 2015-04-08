if ENV['AWS_BUCKET']
  Paperclip::Attachment.default_options[:storage] = :s3
  Paperclip::Attachment.default_options[:s3_credentials] = {
    bucket: ENV['AWS_BUCKET'],
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
  }
  Paperclip::Attachment.default_options[:url] = ":s3_path_url" # only path-style works with HTTPS
  Paperclip::Attachment.default_options[:path] = "/snapshots/:hash.:extension"
  Paperclip::Attachment.default_options[:s3_protocol] = "https"
else
  Paperclip::Attachment.default_options[:url] = "/snapshots/:hash.:extension"
end

Paperclip::Attachment.default_options[:hash_secret] = (ENV['PAPERCLIP_SECRET'] || "default_paperclip_secret")
