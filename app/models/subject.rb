class Subject < ApplicationRecord
    belongs_to :user
    has_many_belongs_to :assignments
    
    # accepts_nested_attributes_for :assignments
    
    validates_presence_of :name, :assignment
    validates_uniqueness_of :name

    def assignments_attributes=(element)

    end
end
