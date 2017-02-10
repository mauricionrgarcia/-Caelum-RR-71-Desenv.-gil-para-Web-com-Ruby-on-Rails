class Qualification < ApplicationRecord

  belongs_to :client
  belongs_to :restaurant

  has_many :comments, :as => :commentable

  validates_presence_of :note, message: "note can't be blank"
  #validates_uniqueness_of :amount_spent, message: 'amount spent already registered'

  validates_numericality_of :note, greater_than_or_equal_to: 0,
                                           less_than_or_equal_to: 10,
                                           message: 'note must be a number between 0 and 10'

  validates_numericality_of :amount_spent, greater_than: 0, message: 'amount spent must be a number greater than 0'

  # => validações das assocações
  validates_presence_of :client_id, :restaurant_id
  validates_associated :client, :restaurant
end
