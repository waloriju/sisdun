class Address < ActiveRecord::Base
  belongs_to :city
  has_one    :person

  validates :address, :complement, :number, :cep, :city_id, presence: true
  validates :number, length: { maximum: 7 }
  
  VALID_CEP_REGEX = /\d{5}\-\d{3}/
  validates :cep, format: { with: VALID_CEP_REGEX }
end