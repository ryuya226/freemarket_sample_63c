require 'rails_helper'
describe Credit do
  describe '#createアクションのテスト' do
    describe 'not nullのテスト' do
      it "is invalid without a customer_id" do
        credit = build(:credit, customer_id: "")
        credit.valid?
        expect(credit.errors[:customer_id]).to include("を入力してください")
      end

      it "is invalid without a card_id" do
        credit = build(:credit, card_id: "")
        credit.valid?
        expect(credit.errors[:card_id]).to include("を入力してください")
      end
    end
  end
end


# RSpec.describe Credit, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"

