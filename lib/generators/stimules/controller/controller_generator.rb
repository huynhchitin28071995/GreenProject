module Stimules
  class ControllerGenerator < Rails::Generators::NamedBase
    source_root File.expand_path('templates', __dir__)
    
    def create_initialize_file
      copy_flie "template_controller.js", "app/javascript/controller/#{file_name}_controller.js"
    end
  end  
end