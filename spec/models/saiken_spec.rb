#encoding: utf-8

require 'spec_helper'

describe Saiken do
	describe '#wakai_gaku' do
		it 'wakai_gaku not to be blank' do
			@saiken = Saiken.new
			@saiken.customer_id = 1
			@saiken.creditor_id = 1
			@saiken.wakai_gaku = 100
			expect(@saiken).to be_valid

			@saiken.wakai_gaku = nil
			expect(@saiken).not_to be_valid
		end
	end
end
