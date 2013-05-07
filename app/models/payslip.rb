class Payslip < ActiveRecord::Base
  attr_accessible :paid_at, :party, :payslipnum, :source, :status, :user_id
end
