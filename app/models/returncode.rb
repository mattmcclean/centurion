class Returncode < ActiveRecord::Base
  validates :name, :uniqueness => true, :presence => true
  validates :code, :uniqueness => true, :presence => true, :numericality => { :greater_than_or_equal_to => 0, :less_than_or_equal_to => 3  }
  has_many :checkresults
end
