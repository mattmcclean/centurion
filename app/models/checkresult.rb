class Checkresult < ActiveRecord::Base
  belongs_to :returncode
  validates_associated :returncode, :presence => true
  belongs_to :node
  validates_associated :node, :presence => true
  belongs_to :check
  validates_associated :check, :presence => true
end
