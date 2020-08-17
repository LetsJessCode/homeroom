class Subject < ApplicationRecord
    belongs_to :user
    belongs_to :assignment
    
    validates_presence_of :name, :assignment
    validates_uniqueness_of :name

    accepts_nested_attributes_for :assignment
end
