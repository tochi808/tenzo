class AddPaymentTypeToSaiken < ActiveRecord::Migration
  def change
    add_column :saikens, :payment_type, :integer, default: 0
  end
end
