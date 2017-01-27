class Voiture < ApplicationRecord
  belongs_to :catalogue, uniqueness: true
end
