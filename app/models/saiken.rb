#encoding: utf-8
class Saiken < ActiveRecord::Base
  IKKATSU = "一括払い"
  BUNKATSU = "分割払い"

  attr_accessible :creditor_id, :customer_id, :wakai_gaku, :payment_type

  belongs_to :creditor
  belongs_to :customer

  validates :wakai_gaku, presence: true
  validates :payment_type, inclusion: {in: [0, 1]}


  def self.payment_str(type)
  	type == 0 ? IKKATSU : BUNKATSU
  end


end
