ActiveSupport::Inflector.inflections do |inflect|    
  inflect.irregular 'pais', 'paises'    
end 

# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Factory::Application.initialize!


