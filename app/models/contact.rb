class Contact < ActiveRecord::Base
  has_one :person
  before_save { email.downcase! }

  VALID_PHONE_REGEX = /(\(11\) [9][0-9]{4}-[0-9]{4})|(\(1[2-9]\) [5-9][0-9]{3}-[0-9]{4})|(\([2-9][1-9]\) [5-9][0-9]{3}-[0-9]{4})/
  validates :phone1, :phone2, :phone3, format: { with: VALID_PHONE_REGEX }
  validates :phone2, :phone3, :email, allow_nill: true, allow_black: true
  validates :phone1, :email, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
end
