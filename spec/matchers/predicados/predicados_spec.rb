describe 'Matchers de Predicados' do
  # odd?
  it 'odd' do
    expect(1).to be_odd
  end
  # even?
  it 'even' do
    expect(2).to be_even
  end
  # para qualquer metodo predicado (que contenha o '?' na frente) você pode testar
end
