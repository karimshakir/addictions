class User < ApplicationRecord
  has_many :addiction_occurences
  has_many :addictions, through: :addiction_occurences

  def unique_addictions
    addictions.uniq
  end
end
