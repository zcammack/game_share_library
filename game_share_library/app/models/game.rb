class Game < ActiveRecord::Base
    belongs_to :user

    validates :title, :platform, presence: true
end
