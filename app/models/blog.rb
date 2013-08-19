class Blog < ActiveRecord::Base
  attr_accessible :message, :title
  validates_presence_of :title, :message
  validates_uniqueness_of :title
  has_many :comments, dependent: :destroy
end
