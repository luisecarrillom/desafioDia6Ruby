def adivina_el_numero(rango)
  numero_secreto = rand(1..rango)

  puts "Bienvenido al juego 'Adivina el número'!"
  puts "El computador ha elegido un número del 1 al #{rango}."
  puts "Intenta adivinar cuál es..."

  intentos = 0
  while true
    intentos += 1

    puts "Ingresa tu número:"
    numero_usuario = gets.chomp.to_i

    if numero_usuario == numero_secreto
      puts "¡Felicidades! Adivinaste el número en #{intentos} intentos."
      break
    elsif numero_usuario < numero_secreto
      puts "El número es mayor. Sigue intentando."
    else
      puts "El número es menor. Sigue intentando."
    end
  end
end

puts "Ingresa el rango de números (hasta qué número quieres jugar):"
rango = gets.chomp.to_i

adivina_el_numero(rango)
