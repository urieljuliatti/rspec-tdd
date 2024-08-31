require 'string_nao_vazia'

describe 'Matchers de Classe' do
  it 'be_instance_of' do
    expect(10).to be_instance_of(Integer) # Exatamente a classe
  end

  it 'be_kind_of' do
    str = StringNaoVazia.new
    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer) # Pode ser por herança ou a própria classe
  end

  it 'respond_to' do
    expect('ruby').to respond_to(:size)
    expect('ruby').to respond_to(:count) # responde a determinado método
  end

  # semelhante a be_kind_of
  it 'be_a / be_an' do
    str = StringNaoVazia.new
    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end
end
