class Check < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  validates_presence_of :cmd, :target, :interval, :desc
  validates :interval, :numericality => { :greater_than => 0 } 

  has_many :checkresults
  has_and_belongs_to_many :subscriptions
  has_many :nodes, :through => :checkresults
end
