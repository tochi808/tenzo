#encoding: utf-8

require 'spec_helper'

describe Saiken do

	before(:each) do 
		@saiken = Saiken.new
		@saiken.customer_id = 1
		@saiken.creditor_id = 1
		@saiken.payment_type = 0
		@saiken.wakai_gaku = 100
	end

	describe '#wakai_gaku' do
		it ' not to be blank' do
		
			expect(@saiken).to be_valid

			@saiken.wakai_gaku = nil
			expect(@saiken).not_to be_valid
		end
	end

	describe '#payment_type' do
		it ' should be 0 or 1' do
			expect(@saiken).to be_valid			

			@saiken.payment_type = 3
			expect(@saiken).not_to be_valid
		end

	end
end
