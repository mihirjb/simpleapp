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

require 'spec_helper'

describe Payslip do
  pending "add some examples to (or delete) #{__FILE__}"
end
