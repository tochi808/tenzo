class AddFirstPaymentGakuToSaiken < ActiveRecord::Migration
  def change
    add_column :saikens, :first_payment_gaku, :integer, default: 0
  end
end
