class Note < ActiveRecord::Base
  scope :search_note_for_user, lambda {|u_id, p_id| where(:user => u_id, id: p_id)}
  belongs_to :user
end
