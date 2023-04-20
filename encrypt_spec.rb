require_relative 'lib/encrypt'

describe "#encrypt" do
  it "Retorna um string vazia, caso o paramêtro da função seja vazio" do
    expected = ""
    actual = encrypt("")
    expect(actual).to eq expected
  end

  it "Retorna a frase completa com os novos caracteres 3 posições anteriores" do
    expected = "QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD"
    actual = encrypt("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    expect(actual).to eq(expected)
  end
end


