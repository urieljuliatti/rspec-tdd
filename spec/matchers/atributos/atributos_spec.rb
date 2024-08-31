require 'pessoa'

RSpec.describe Pessoa, 'Matcher de Atributos' do

  before(:each) do
    @pessoa = Pessoa.new
  end

  after(:each) do
    @pessoa.nome = 'Sem nome!'
    puts "<<<<<<<< #{@pessoa.inspect}"
  end

  it 'have_attributes' do
    @pessoa.nome = 'Uriel'
    @pessoa.idade = 38
    expect(@pessoa).to have_attributes(nome: 'Uriel', idade: (be >= 20))
  end

  it 'have_attributes' do
    @pessoa.nome = 'José'
    @pessoa.idade = 40
    expect(@pessoa).to have_attributes(nome: 'José', idade: (be >= 20))
  end
end
