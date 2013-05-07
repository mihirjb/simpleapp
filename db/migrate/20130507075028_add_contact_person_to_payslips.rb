class AddContactPersonToPayslips < ActiveRecord::Migration
  def change
    add_column :payslips, :contactperson, :string
  end
end
