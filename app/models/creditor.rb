class Creditor < ActiveRecord::Base
  attr_accessible :name, :simple_name

  has_many :saikens
end
