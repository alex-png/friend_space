class UserPreference < ApplicationRecord
    belongs_to :user 
    belongs_to :preference
    validates_uniqueness_of :user_id, scope: :preference_id

    def p_name 
        self.preference.name
    end
end