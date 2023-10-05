# frozen_string_literal: true

Maglev::Shrine.configure do |config|
  # Change accepted file formats when uploading assets.
  # Used by the Shrine validation plugin.
  # config.accepted_mime_types = %w[image/jpeg image/png image/webp image/gif image/heic]

  # Change maximum allowed file size.
  # Used by the Shrine validation plugin.
  # config.max_file_size = 20.megabytes

  # Change analyzer used to extract image dimensions.
  # This value is used by the Shrine store_dimensions plugin. Refer to the plugin
  # documentation for a list of supported values.
  # https://shrinerb.com/docs/plugins/store_dimensions
  # config.store_dimensions_plugin_analyzer = :ruby_vips
end
