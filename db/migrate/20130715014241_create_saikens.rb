class CreateSaikens < ActiveRecord::Migration
  def change
    create_table :saikens do |t|
      t.integer :customer_id
      t.integer :creditor_id
      t.integer :wakai_gaku

      t.timestamps
    end
  end
end
