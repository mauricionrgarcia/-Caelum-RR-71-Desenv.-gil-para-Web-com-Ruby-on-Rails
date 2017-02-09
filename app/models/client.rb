class Client < ApplicationRecord

  has_many :qualifications

  def to_s
    name
  end

  validates_presence_of :name, message: "value can't be blank"
  validates_uniqueness_of :name, message: 'name already registered'
  validates_numericality_of :years_old, greater_than: 0,
                                    less_than: 140,
                                    message: 'Must be a number between 0 and 100'



end
