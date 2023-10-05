# frozen_string_literal: true

module Maglev
  module Shrine
    module Uploader
      extend ActiveSupport::Concern

      included do
        before_save :set_metadata

        include AssetFileUploader::Attachment(:file)

        delegate :url, to: :file
      end

      def download
        file.download.read
      end

      private

      def set_metadata
        metadata = file.metadata
        assign_attributes(
          filename: metadata['filename'],
          content_type: metadata['mime_type'],
          byte_size: metadata['size'],
          height: metadata['height'],
          width: metadata['width']
        )
      end

      module ClassMethods
        def optimized
          all
        end
      end
    end
  end
end
