# frozen_string_literal: true

module Maglev
  module Shrine
    class InstallGenerator < Rails::Generators::Base

      desc 'Install Maglev Shrine integration'
      source_root File.expand_path('templates/install', __dir__)

      def migrations
        rake 'maglev_shrine:install:migrations'
        rake 'db:migrate'
      end

      def create_initializer
        directory 'config'
      end

      def instructions
        $stdout.puts <<~INFO
          Done! 🎉

          You can now tweak config/initializers/maglev_shrine.rb
        INFO
      end

    end
  end
end
