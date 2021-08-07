class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  
  connects_to database: { writes: :animals, readonly: :animals }
end
