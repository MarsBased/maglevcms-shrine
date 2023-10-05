# frozen_string_literal: true

module Maglev
  module Shrine
    class Engine < ::Rails::Engine

      isolate_namespace Maglev::Shrine

    end
  end
end
