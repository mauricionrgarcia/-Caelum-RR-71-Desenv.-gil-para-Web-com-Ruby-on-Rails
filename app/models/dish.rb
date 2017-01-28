class Dish < ApplicationRecord
  validates_presence_of :name, message: "value can't be blank"
  validates_uniqueness_of :name, message: 'name already registered'

end
