class Student < ApplicationRecord
  belongs_to :user
  has_many :parent,dependent: :destroy
  accepts_nested_attributes_for :parent
  validates :name,:gender,:class_name,presence: true
  validates :age,numericality: { only_integer: true }
end
