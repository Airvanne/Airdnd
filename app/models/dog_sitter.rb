class DogSitter < ApplicationRecord
  belongs_to :city
  has_many :strolls
  has_and_belongs_to_many :dogs, through: :stroll
end
