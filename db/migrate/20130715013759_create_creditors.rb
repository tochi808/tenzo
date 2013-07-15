class CreateCreditors < ActiveRecord::Migration
  def change
    create_table :creditors do |t|
      t.string :name
      t.string :simple_name

      t.timestamps
    end
  end
end
