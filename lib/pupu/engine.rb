module Pupu
  class Engine < ::Rails::Engine
    isolate_namespace Pupu

    # class Engine < ::Rails::Engine
    #   initializer "pupu.assets" do |app|
    #     app.config.assets.paths << root.join("app", "assets").to_s
    #   end
    # end

    # Компилируем стили находящиеся в манифесте
    initializer "pupu.assets" do |app|
      # manifest has to be precompiled
      app.config.assets.precompile += %w[pupu_manifest]
    end
  end
end
