class Restaurant < ApplicationRecord

  # => associações
  has_many :qualifications
  has_and_belongs_to_many :dishes

  # Named Scopes
  scope :pasta, where(specialty: 'pasta')
  scope :recently, where(["created_at > ?", 3.months.ago])
  scope :orger_by_name, order('name')
  # => validações

  validates_presence_of :name, message: "value can't be blank"
  validates_presence_of :address, message: "value can't be blank"
  validates_presence_of :specialty, message: "value can't be blank"

  validates_uniqueness_of :name, message: 'name already registered'
  validates_uniqueness_of :address, message: 'address already registered'

  validate :first_char_should_be_uppercase

  private
  def first_char_should_be_uppercase
    errors.add(:name, 'First character should be uppercase') unless name =~ /[A-Z].*/
  end

end
