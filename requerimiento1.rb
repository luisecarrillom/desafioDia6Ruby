def calcular_aumento(salario, porcentaje_minimo)
  aumento = salario * porcentaje_minimo / 100
  nuevo_salario = salario + aumento
  return nuevo_salario
end

def obtener_datos_colaborador
  puts "Ingrese el nombre del colaborador/a:"
  nombre = gets.chomp

  puts "Ingrese el salario actual del colaborador/a:"
  salario_actual = gets.chomp.to_f

  puts "Ingrese el porcentaje mínimo de aumento:"
  porcentaje_minimo = gets.chomp.to_f

  return nombre, salario_actual, porcentaje_minimo
end

def mostrar_resultado(nombre, salario_actual, nuevo_salario)
  puts "Datos del colaborador/a:"
  puts "Nombre: #{nombre}"
  puts "Salario actual: #{salario_actual}"
  puts "Nuevo salario: #{nuevo_salario}"
end

nombre, salario_actual, porcentaje_minimo = obtener_datos_colaborador
nuevo_salario = calcular_aumento(salario_actual, porcentaje_minimo)
mostrar_resultado(nombre, salario_actual, nuevo_salario)
