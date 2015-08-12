require "paperclip"
Paperclip::Attachment.default_options[:url] = ':s3_domain_ur'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
Paperclip.options[:command_path] = 'C:\Program Files\ImageMagick-6.9.1-Q16'
Paperclip.options[:swallow_stderr] = false
