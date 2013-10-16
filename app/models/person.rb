class Person < ActiveRecord::Base
  scope :ativo, -> { where(status: 'ativo')}
  
  belongs_to :capacity, polymorphic: true
  belongs_to :address
  belongs_to :contact

  validates :capacity_id, :address_id, :contact_id, :status, presence: true
end
