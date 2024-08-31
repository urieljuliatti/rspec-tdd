require 'string_nao_vazia'

describe String do
  describe StringNaoVazia do
    # o subject mais interno sobressai
    it "Não está vazia" do
      expect(subject).to eq("Não sou vazio")
    end
  end
end
