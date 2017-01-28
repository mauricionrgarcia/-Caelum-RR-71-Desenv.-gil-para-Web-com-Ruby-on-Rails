class Dish < ApplicationRecord

  has_and_belongs_to_many :restaurants
  has_one :recipe

  validates_presence_of :name, message: "value can't be blank"
  validates_uniqueness_of :name, message: 'name already registered'

  # => validações das assocações
  validate :validate_presence_of_more_than_one_restaurant

  private
  def validate_presence_of_more_than_one_restaurant
    errors.add('restaurant', 'there must be less by the restaurant') if restaurants.empty?
  end

end
