class Node < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  has_many :checkresults
  has_many :checks, :through => :checkresults
end
