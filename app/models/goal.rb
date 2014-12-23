class Goal < ActiveRecord::Base
    belongs_to :user
    has_many :pacts
    has_many :results
end
