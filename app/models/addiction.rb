class Addiction < ApplicationRecord
  has_many :addiction_occurences
  has_many :users, through: :addiction_occurences

end
