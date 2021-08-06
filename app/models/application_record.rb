class ApplicationRecord < ActiveRecord::Base
  connects_to database: { writing: :animals, reading: :animals }
  
  self.abstract_class = true
end
