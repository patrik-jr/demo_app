class Picopost < ActiveRecord::Base
	belongs_to :user
	validates :content, :length => { :maximum => 100 } 
	validates_presence_of :user_id
end
