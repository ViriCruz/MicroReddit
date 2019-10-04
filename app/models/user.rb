class User < ApplicationRecord
    validates :name, presence: true, uniqueness: true, length: {maximum: 80}
 

    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    validates :email, presence: true, uniqueness: true, length: {maximum: 255},
        format: { with: VALID_EMAIL_REGEX }
end