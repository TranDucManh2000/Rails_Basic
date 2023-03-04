class Student < ApplicationRecord
  belongs_to :user
  validates :name,:gender,:class_name,presence: true
  validates :age,numericality: { only_integer: true }
end
