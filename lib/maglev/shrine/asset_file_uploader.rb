# frozen_string_literal: true

module Maglev
  module Shrine
    class AssetFileUploader < ::Shrine

      plugin :determine_mime_type,
             analyzer: :marcel,
             analyzer_options: { filename_fallback: true }

      plugin :store_dimensions,
             analyzer: Maglev::Shrine.config.store_dimensions_plugin_analyzer

      plugin :validation_helpers

      Attacher.validate do
        validate_max_size Maglev::Shrine.config.max_file_size
        validate_mime_type Maglev::Shrine.config.accepted_mime_types
      end

    end
  end
end
