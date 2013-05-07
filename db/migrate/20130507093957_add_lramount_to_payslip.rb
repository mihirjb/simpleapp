class AddLramountToPayslip < ActiveRecord::Migration
  def change
    add_column :payslips, :lramount, :integer
  end
end
