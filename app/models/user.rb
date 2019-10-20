class User < ApplicationRecord
  has_secure_password
  # validates :email, presence: true, uniqueness: true

  has_many :addiction_occurrences
  has_many :addictions, through: :addiction_occurrences

  def unique_addictions
    addictions.uniq
  end
end
