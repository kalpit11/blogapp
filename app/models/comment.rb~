class Comment < ActiveRecord::Base
  belongs_to :blog
  attr_accessible :body, :commenter
  validates_presence_of  :commenter,:body
end
