class Recipe < ApplicationRecord
  validates_presence_of :name, message: "value can't be blank"
end
