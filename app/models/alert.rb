class Alert < ActiveRecord::Base
  belongs_to :alertstatus
  validates_associated :alertstatus, :presence => true
  belongs_to :checkresult
  validates_associated :checkresult, :presence => true
end
