RSpec.describe 'Matcher do Satisfy' do
  it { expect(10).to satisfy {|x| x % 2 == 0 } }
  # multiplo de 3
  it {
    expect(9).to satisfy('be a multiple of 3') do
      |x| x % 3 == 0
    end
  }
end
