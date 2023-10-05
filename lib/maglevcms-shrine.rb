# frozen_string_literal: true

require 'maglev/shrine/engine'
require 'maglev/shrine/config'

module Maglev
  module Shrine
    # We use autoload instead of require to load these classes after Rails
    # initializers have loaded. Shrine uploaders inherit from the Shrine class
    # At the time of loading the class, it copies all configuration from the
    # Shrine class. This includes configuration done on the Shrine initializer
    # by using Shrine.plugin or other method calls.
    # If we require the AssetFileUploder class when requiring the gem, then it
    # will not copy any configuration, because the Shrine initializer has not
    # been run yet.
    # By delaying requiring until the classes is requested, we make sure the
    # Shrine base class already has all necessary configuration set up.
    autoload :AssetFileUploader, 'maglev/shrine/asset_file_uploader'
    autoload :Uploader, 'maglev/shrine/uploader'

    class << self

      def config
        @config ||= Config.new.tap do |c|
          c.accepted_mime_types = %w[image/jpeg image/png image/webp image/gif image/heic]
          c.max_file_size = 20.megabytes
          c.store_dimensions_plugin_analyzer = :ruby_vips
        end
      end

      def configure
        yield config
      end

    end
  end

  # Maglev allows to change the uploader by changing `config.uploader`.
  # However it searches the uploader only inside the maglevcms gem, so it's not possible
  # to specify a custom uploader. We override the `uploader` method to fix.
  class << self

    def uploader
      Maglev::Shrine::Uploader
    end

  end
end
