class Alertstatus < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  has_many :alerts
end
