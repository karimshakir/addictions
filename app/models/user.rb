class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true

  has_many :addiction_occurences
  has_many :addictions, through: :addiction_occurences


  def unique_addictions
    addictions.uniq
  end
end
