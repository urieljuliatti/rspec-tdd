require 'calculator'

describe Calculator do

  # Subject explicito
  # subject(:calc) { described_class.new() }

  # context '#sum' do
  #   it 'with positive numbers' do
  #     result = calc.sum(5, 7)
  #     expect(result).to eq(12)
  #   end
  #   it 'with negative and positive numbers' do
  #     result = calc.sum(-5, 7)
  #     expect(result).to eq(2)
  #   end
  #   it 'with negative' do
  #     result = calc.sum(-5, -7)
  #     expect(result).to eq(-12)
  #   end
  # end

  # Subject implícito
  context '#div' do
    it 'divided by zero' do
      #expect{subject.div(3, 0)}.to raise_exception # Colocando em um bloco pra avaliar o erro e pegar a exceção, mas é muito genérico
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError) # Colocando em um bloco pra avaliar o erro e pegar a exceção. Essa é a forma mais apropriada
      expect{subject.div(3, 0)}.to raise_error('divided by 0') # Colocando em um bloco pra avaliar o erro e pegar a exceção. Essa é a forma mais usando o texto
      expect{subject.div(3, 0)}.to raise_error(ZeroDivisionError, 'divided by 0') # Com  o texto e a exceção
      expect{subject.div(3, 0)}.to raise_error(/divided/) # Com expressão regular
    end
  end

  context '#sum', 'Soma da Calculadora' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eq(12)
    end
    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eq(2)
    end
    it 'with negative' do
      result = subject.sum(-5, -7)
      expect(result).to eq(-12)
    end
  end
end
