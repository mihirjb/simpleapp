# == Schema Information
#
# Table name: payslips
#
#  id         :integer          not null, primary key
#  payslipnum :integer
#  party      :string(255)
#  status     :string(255)
#  user_id    :integer
#  paid_at    :string(255)
#  source     :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Payslip < ActiveRecord::Base
  attr_accessible :paid_at, :party, :payslipnum, :source, :status, :user_id, :contactperson, :contactphone, :lramount
  
  belongs_to :user
end
