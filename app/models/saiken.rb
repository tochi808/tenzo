class Saiken < ActiveRecord::Base
  attr_accessible :creditor_id, :customer_id, :wakai_gaku

  belongs_to :creditor
  belongs_to :customer

end
