require 'pessoa'

RSpec.describe Pessoa, 'Matcher de Atributos com Let' do

  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  # é um helper. É como se declarasse uma função chamada 'pessoa'
  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = 'Uriel'
    pessoa.idade = 38
    expect(pessoa).to have_attributes(nome: 'Uriel', idade: (be >= 20))
  end

  it 'have_attributes' do
    pessoa.nome = 'José'
    pessoa.idade = 40
    expect(pessoa).to have_attributes(nome: 'José', idade: (be >= 20))
  end
end
