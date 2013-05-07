class AddContactPhoneToPayslips < ActiveRecord::Migration
  def change
    add_column :payslips, :contactphone, :string
  end
end
