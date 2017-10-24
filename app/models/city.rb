class City < ApplicationRecord

  has_many :historical_conditions, dependent: :destroy

end
