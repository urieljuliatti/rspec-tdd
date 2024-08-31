describe 'Matchers de Igualdade' do
  # equal
  # ele testa o objeto, não o conteúdo
  it '#equal # Testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"

    expect(x).not_to equal(y)
    expect(x).to equal(x)
  end

  # be
  # ele testa o objeto, não o conteúdo
  it '#be # Testa se é o mesmo objeto' do
    x = "ruby"
    y = "ruby"

    expect(x).not_to be(y)
    expect(x).to be(x)
  end

  # eql
  # ele testa valor/conteudo
  it '#eql # Testa o valor/conteudo' do
    x = "ruby"
    y = "ruby"

    expect(x).to eql(y)
  end

  # eq
  # ele testa o valor/conteudo
  it '#eq # Testa o valor/conteudo' do
    x = "ruby"
    y = "ruby"

    expect(x).to eq(y)
  end
end
