require 'rails_helper'

describe Article do
	describe "validations" do
		it { should validate_presence_of :title }
		it { should validate_presence_of :text }
	end

	describe "assotiations" do
		it { should have_many :comments }
	end
end