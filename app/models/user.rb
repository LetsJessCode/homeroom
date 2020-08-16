class User < ApplicationRecord
    has_many :subjects
    
    has_secure_password
    validates :email, presence: true, uniqueness: true
end
