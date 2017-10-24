RSpec.describe 'Computer' do
  it { is_expected.to have_db_column :commission_date }

  context 'Computer commission confirmation. . .' do
    it 'activates a Computer' do
    expect{Computer.commission_date}.to eq(Computer.commission_date)
    end
  end
end


RSpec.describe 'Computer' do
  it { is_expected.to include(:id) }
end
