class FieldDefinition < ActiveRecord::Base
  belongs_to :type
  belongs_to :pages
end
