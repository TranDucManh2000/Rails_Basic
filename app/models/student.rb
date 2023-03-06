class Student < ApplicationRecord
  belongs_to :user
  has_many :parents,dependent: :destroy
  accepts_nested_attributes_for :parents, reject_if: :all_blank, allow_destroy: true
  validates :name,:gender,:class_name,presence: true
  validates :age,numericality: { only_integer: true }
end
