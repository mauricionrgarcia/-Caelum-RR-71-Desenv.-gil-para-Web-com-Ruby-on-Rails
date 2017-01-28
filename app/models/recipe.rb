class Recipe < ApplicationRecord

  belongs_to :dish

  validates_presence_of :name, message: "value can't be blank"

  # => validações das assocações
  validates_presence_of :dish_id
  validate_associated :dish

end
