module Stimulus
  class ControllerGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)
    def copy_initializer_file
      copy_file "template_controller.js", "app/javascript/controllers/#{file_name}_controller.js"
    end
  end
end