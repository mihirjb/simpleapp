class CreatePayslips < ActiveRecord::Migration
  def change
    create_table :payslips do |t|
      t.integer :payslipnum
      t.string :party
      t.string :status
      t.integer :user_id
      t.string :paid_at
      t.string :source

      t.timestamps
    end
  end
end
