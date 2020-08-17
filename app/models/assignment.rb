class Assignment < ApplicationRecord
    has_and_belongs_to_many :subjects
    has_many :users, through: :subjects
end
