# RSpec.describe 'Computer' do
#   it { is_expected.to have_db_column :commission_date }
#
#   context 'Computer commission confirmation. . .' do
#     it 'activates a Computer' do
#     expect{Computer.commission_date}.to eq(Computer.commission_date)
#     end
#   end
# end
require 'spec_helper'

RSpec.describe 'Computer' :type => :model do
  it "is not valid without a commission_date" do
    expect(Computer.new).to be_valid
  end
end