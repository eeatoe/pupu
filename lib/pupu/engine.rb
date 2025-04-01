# frozen_string_literal: true

require "stimulus-rails"
require "turbo-rails"
require "view_component"

module Pupu
  class Engine < ::Rails::Engine
    isolate_namespace Pupu

    initializer "pupu.importmap", before: "importmap" do |app|
      app.config.importmap.paths += [Engine.root.join("config/importmap.rb")]

      app.config.importmap.cache_sweepers << root.join("app/assets/javascripts")
    end

    # Компилируем стили находящиеся в манифесте
    initializer "pupu.assets" do |app|
      app.config.assets.paths << root.join("app/javascript")
      # manifest has to be precompiled
      app.config.assets.precompile += %w[pupu_manifest]
    end
  end
end
