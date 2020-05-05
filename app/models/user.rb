class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :student_id, {presence: true, uniqueness: true, length: {is: 7}}
    validates :first_name, {presence: true, length: {maximum: 16}}
    validates :last_name, {presence: true, length: {maximum: 16}}
    validates :email, {presence: true, format: {with: VALID_EMAIL_REGEX}, uniqueness: {case_sensitive: false}}
    validates :password, {presence: true, length: {minimum: 8}}

    has_secure_password
end
