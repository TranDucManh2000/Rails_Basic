class Parent < ApplicationRecord
  # belongs_to :student
  validates :name,:address,presence: true
  validates :phone_number,numericality: { only_integer: true }
end
