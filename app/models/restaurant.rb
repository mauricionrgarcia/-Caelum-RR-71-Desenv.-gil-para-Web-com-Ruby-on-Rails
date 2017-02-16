class Restaurant < ApplicationRecord

  # => associações
  has_many :qualifications
  has_and_belongs_to_many :dishes

  has_many :comments, :as => :commentable


  # Named Scopes
  #scope :pasta, where(specialty: 'pasta')
  scope :massas, -> {
    where(specialty: 'massas')
  }
  #scope :recently, where(["created_at > ?", 3.months.ago])
  scope :recently, -> {
    where(["created_at > ?", 3.months.ago])
  }

  #scope :order_by_name, order('name')
  scope :order_by_name, -> {
    order('name')
  }

  # => validações

  validates_presence_of :name, message: "value can't be blank"
  validates_presence_of :address, message: "value can't be blank"
  validates_presence_of :specialty, message: "value can't be blank"

  validates_uniqueness_of :name, message: 'name already registered'
  validates_uniqueness_of :address, message: 'address already registered'

  validate :first_char_should_be_uppercase, :on => [ :create, :update ]

  #private
  def first_char_should_be_uppercase
    errors.add(:name, 'First character should be uppercase') unless (0 == (name =~ /[A-Z].*/))
  end

  def to_s
    name << address
  end

  has_attached_file :picture, styles:
    { medium: "300x300>", thumb: "100x100>" },
    :default_url => ":style/missing_picture_restaurant.jpg"


  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/jpg', 'image/png']


end
