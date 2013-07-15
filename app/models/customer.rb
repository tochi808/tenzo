class Customer < ActiveRecord::Base
  attr_accessible :name

  has_many :saikens

  after_destroy :destroy_saikens

  def destroy_saikens
  	self.saikens.each do |saiken|
  		saiken.destroy
  	end
  end
end
