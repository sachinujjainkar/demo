class Product < ApplicationRecord
  has_many :order_products
  has_many :orders, through: :order_products

  validates :name, presence: true  


  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      all
    end
  end

end
