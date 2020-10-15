class Resource < ApplicationRecord
  has_many :addsuggestions
  has_many :removesuggestions
  belongs_to :county
  has_one :category
end
