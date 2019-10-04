class ProfileComment < ApplicationRecord
    belongs_to :commenter, class_name: 'User'
    belongs_to :profile, class_name: 'User'

end
