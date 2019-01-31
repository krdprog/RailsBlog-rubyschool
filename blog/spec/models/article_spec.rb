require 'rails_helper'

describe Article do
	it { should have_many :comments }
end