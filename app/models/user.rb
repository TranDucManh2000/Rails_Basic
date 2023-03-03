class User < ApplicationRecord
    has_secure_password
    has_many :students
    # test validates
    validates :name , presence: true
end
