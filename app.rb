# 1) Solicitar Nome Completo e Idade
# - O usuário deve digitar seu nome
puts "--------------------------------------------------------------"
print "Como é seu nome? "
user_name = gets.chomp

# - O usuário deve digitar seu sobrenome
puts "--------------------------------------------------------------"
print "#{user_name} é um prazer, mas poderia agora me dizer seu sobrenome? "
user_surname = gets.chomp

# - O usuário deve informar sua idade.
puts "--------------------------------------------------------------"
print "#{user_name} #{user_surname}, quantos anos você tem? "
user_age = gets.chomp.to_i
sleep(1)

# 2) Formatar a Saída de Forma Bonita
# - O nome deve ser capitalizado corretamente (ex: "joão silva" → "João Silva").
nm_cpt = user_name.split.map(&:capitalize).join(' ')
snm_cpt = user_surname.split.map(&:capitalize).join(' ')
# - Exibir uma frase
puts "--------------------------------------------------------------"
puts "#{nm_cpt} #{snm_cpt}, você tem #{user_age} anos"
puts "Registrado com sucesso na biblioteca!\n"

# 3) Adicionar uma Mensagem Personalizada com Base na Idade

livros = []

if user_age <= 12
    puts "--------------------------------------------------------------"
    puts "#{nm_cpt} #{snm_cpt}, temos uma ótima seção infantil para você!"
    livros = [
        ["O Pequeno Príncipe", "https://pt.wikipedia.org/wiki/O_Pequeno_Pr%C3%ADncipe"],
        ["Alice no País das Maravilhas", "https://pt.wikipedia.org/wiki/Alice_no_Pa%C3%ADs_das_Maravilhas"],
        ["O Menino Maluquinho", "https://pt.wikipedia.org/wiki/O_Menino_Maluquinho"]
    ]
elsif user_age.between?(13, 18)
    puts "--------------------------------------------------------------"
    puts "#{nm_cpt} #{snm_cpt}, você pode gostar da nossa coleção jovem!"   
    livros = [
        ["Harry Potter e a Pedra Filosofal", "https://pt.wikipedia.org/wiki/Harry_Potter_e_a_Pedra_Filosofal"],
        ["Percy Jackson e o Ladrão de Raios", "https://pt.wikipedia.org/wiki/O_Ladr%C3%A3o_de_Raios"],
        ["A Culpa é das Estrelas", "https://pt.wikipedia.org/wiki/A_Culpa_%C3%89_das_Estrelas"]
    ]
else
    puts "--------------------------------------------------------------"
    puts "#{nm_cpt} #{snm_cpt}, explore nossos clássicos e best-sellers!"
    livros = [
        ["1984 – George Orwell", "https://pt.wikipedia.org/wiki/1984_(livro)"],
        ["Dom Casmurro – Machado de Assis", "https://pt.wikipedia.org/wiki/Dom_Casmurro"],
        ["O Código Da Vinci – Dan Brown", "https://pt.wikipedia.org/wiki/O_C%C3%B3digo_Da_Vinci"]
    ]
end

# Simulando um pequeno carregamento antes da exibição
puts "--------------------------------------------------------------"
puts "Gerando recomendações..."
sleep(1)

# Exibir lista de livros com opção de acessar o link
puts "--------------------------------------------------------------"
puts "📚 Recomendamos os seguintes livros para você:"
livros.each_with_index do |(titulo, link), index|
    puts "#{index + 1}. #{titulo} (Mais informações: #{link} )"
end

# Perguntar se o usuário quer abrir um link
puts "\nDigite o número de um livro para saber mais ou pressione Enter para sair: "
escolha = gets.chomp.to_i
