

# frozen_string_literal: true
$counter = 0

RSpec.describe 'Matchers do let' do
  let(:count) { $counter += 1 }

  it 'memoriza o valor' do
    expect(count).to eq(1) # primeira vez é carregado
    expect(count).to eq(1) # fica em cache no mesmo teste
  end

  #  Aqui o valor de count é redefinido
  it 'não é cacheado entre os testes' do
    expect(count).to eq(2)
  end
end
