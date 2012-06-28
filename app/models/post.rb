class Post < ActiveRecord::Base

	validates :name,  :presence => true
	validates :title, :presence => true,
						:length => { :minimum => 5 }
	validates :content, :presence => true,
						:length => { :minimum => 5, :maximum => 140}
						
	has_many :comments, :dependent => :destroy					
end
