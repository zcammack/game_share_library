class User < ActiveRecord::Base

    has_many :games

    has_secure_password

    validates :username, :email, presence: true
    validates :email, uniqueness: true
end
