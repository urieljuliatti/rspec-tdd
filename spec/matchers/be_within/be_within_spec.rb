RSpec.describe 'Matchers be_within' do
  # é um intervalo de um delta de 0.5
  it{ expect(12.5).to be_within(0.5).of(12.0) }
  it{ expect([11.6, 12.1, 12.4]).to all (be_within(0.5).of(12.0))}
end
