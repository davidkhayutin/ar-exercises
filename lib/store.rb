class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than: 0}
  validates_associated :employees
  validate :apparel
end


def apparel
  if (!mens_apparel) && (!womens_apparel)
    errors.add(:mens_apparel, :womens_apparel)
  end
end