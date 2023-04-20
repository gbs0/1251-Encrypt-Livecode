def encrypt(string)
  # 1. Retornar uma string vazia se o parâmetro for vazio.
  if string == ""
    ""
  end
  # 2. Definir um conjunto de 26 caracteres do alfabeto
  alfabeto = ("A".."Z").to_a
  # 3. Separar cada letra do texto em uma array
  letras = string.split("")
  # 4. Pra cada letra em uma palavra, precisamos achar qual a sua letra substituta
  nova_frase = letras.map do |letra|
    if letra == " "
        " "
    else
      # 4.1. Procura no array alfabeto, qual o indice em que a letra se encontra
      indice_no_alfabeto = alfabeto.index(letra)
      # 4.2 A partir do indice, buscar no alfabeto qual a letra corresponde com o index - 3
      letra_nova = alfabeto[indice_no_alfabeto - 3]
    end
  end
  # 5. Dada a array separada, juntamos as palavras novamente e entregamos a frase final
  nova_frase.join
end


