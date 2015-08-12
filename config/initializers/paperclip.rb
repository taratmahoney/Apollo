require "paperclip"

Paperclip.options[:command_path] = 'C:\Program Files\ImageMagick-6.9.1-Q16'
Paperclip.options[:swallow_stderr] = false
Paperclip::Attachment.default_options[:url] = 'apolloportalinc.s3.amazonaws.com'
Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'