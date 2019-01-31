require 'rails_helper'

describe Article do
	describe "validations" do
		it { should validate_presence_of :title }
		it { should validate_presence_of :text }
	end

	describe "assotiations" do
		it { should have_many :comments }
	end

	describe "#subject" do
		it "returns the article title" do
			article = create(:article, title: 'Foo Bar')

			expect(article.subject).to  eq 'Foo Bar'
		end
	end
end