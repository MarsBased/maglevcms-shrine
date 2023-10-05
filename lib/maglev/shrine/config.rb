# frozen_string_literal: true

module Maglev
  module Shrine
    Config = Struct.new(:accepted_mime_types, :max_file_size,
                        :store_dimensions_plugin_analyzer)
  end
end
