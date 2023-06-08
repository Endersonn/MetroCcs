program CompraBoletos;

var
  deseaComprar: char;
  nombre, apellido, cedula: string;
  cantidadBoletos: integer;
  tipoBoleto: char;
  precioBoleto: real;
  deseaViajar: char;
  precioTotal: real;
  opcion: integer;

begin
	writeln('-----------------------------------------------------');
	writeln('Bienvenido a la compra de boletos del metro Caracas');
	writeln('-----------------------------------------------------');
  
  write('Desea comprar boletos? (S/N): ');
  readln(deseaComprar);
  
  if (deseaComprar = 'S') or (deseaComprar = 's') then
  begin
    write('Ingrese su nombre: ');
    readln(nombre);
    
    write('Ingrese su apellido: ');
    readln(apellido);
    
    write('Ingrese su cedula: ');
    readln(cedula);
    
    write('Ingrese la cantidad de boletos a comprar: ');
    readln(cantidadBoletos);
    
    write('Seleccione el tipo de boleto: ');
    readln(tipoBoleto);
    
  writeln('Boleto:');
  writeln('-------------------------------------------------------------');
  writeln('1. Simple    (Color: Amarillo)'); 
  write('Cobertura: 1 viaje en metro)');
  writeln('-------------------------------------------------------------');
  writeln;
  writeln('------------------------------------------------------------');
  writeln('2. Integrado (Color: Amarillo)'); 
  write('Cobertura: 1 viaje en metro o 1 viaje en metrobus)');
  writeln('------------------------------------------------------------');
  writeln;
  writeln('----------------------------------------------------');
  writeln('3. Ida y Vuelta   (Color: Amarillo)');
  write('Cobertura: 2 viaje en metro)');
  writeln('----------------------------------------------------');
  writeln;
  writeln('----------------------------------------------------------------');
  writeln('4. Ida y Vuelta integrado (Color: Amarillo)');
  write('Cobertura: 2 viaje en metro o 2 viaje en metrobus)');
  writeln('----------------------------------------------------------------');
  writeln;
  writeln('---------------------------------------------');
  writeln('5. MultiAbono    (Color: Naranja)');
  write('Cobertura: 10 viaje en metro)');
  writeln('---------------------------------------------');
  writeln;
  writeln('-------------------------------------------------------------');
  writeln('6. MultiAbono Integrado (Color: Naranja)'); 
  write('Cobertura: 10 viaje en metro o 2 viajes en metrobus)');
  writeln('-------------------------------------------------------------');
  writeln;
  writeln('-----------------------------------------------------------------------');
  writeln('7. Estudiantil Simple    (Color: Azul)');
  write('Cobertura: 10 viaje en metro)');
  writeln('-----------------------------------------------------------------------');
  writeln;
  writeln('------------------------------------------------------------');
  writeln('8. Estudiantil Integrado (Color: Azul)');
  write('Cobertura: 10 viaje en metro o 20 viaje en metrobus)');
  writeln('------------------------------------------------------------');
  writeln;
  writeln('------------------------------------------------');
  writeln('9. MetroTarjeta    (Color: Rojo)');
  write('Cobertura: 20 viajes, 30 viajes o 40 viajes)');
  writeln('------------------------------------------------');
  writeln;
  writeln('----------------------------------------------------');
  writeln('10. MetroTarjeta Integrada (Color: Rojo)');
  write('Cobertura: 20-30-40 viajes (metro y metro bus)');
  writeln('-----------------------------------------------------');
  
  write('Ingrese el numero del boleto que desea seleccionar: ');
  readln(opcion);
  
  case opcion of
    1:
    begin
      writeln('Ha seleccionado el boleto 1 - Simple');
      writeln('Color: Amarillo');
      writeln('Cobertura: Zona A');
    end;
    
    2:
    begin
      writeln('Ha seleccionado el boleto 2 - Integrado');
      writeln('Color: Amarillo');
      writeln('Cobertura: Zona B');
    end;
    
    3:
    begin
      writeln('Ha seleccionado el boleto 3 - Ida y Vuelta');
      writeln('Color: Amarillo');
      writeln('Cobertura: Zona C');
    end;
    
    4:
    begin
      writeln('Ha seleccionado el boleto 4 - Ida y Vuelta Integrado');
      writeln('Color: Amarillo');
      writeln('Cobertura: Zona A');
    end;
    
    5:
    begin
      writeln('Ha seleccionado el boleto 5 - MultiAbono');
      writeln('Color: Naranja');
      writeln('Cobertura: Zona B');
    end;
    
    6:
    begin
      writeln('Ha seleccionado el boleto 6 - MultiAbono Integrado');
      writeln('Color: Naranja');
      writeln('Cobertura: Zona C');
    end;
    
    7:
    begin
      writeln('Ha seleccionado el boleto 7 - Estudiantil Simple');
      writeln('Color: Azul');
      writeln('Cobertura: Zona A');
    end;
    
    8:
    begin
      writeln('Ha seleccionado el boleto 8 - Estudiantil Integrado');
      writeln('Color: Azul');
      writeln('Cobertura: Zona B');
    end;
    
    9:
    begin
      writeln('Ha seleccionado el boleto 9 - MetroTarjeta');
      writeln('Color: Rojo');
      writeln('Cobertura: Zona C');
    end;
    
    10:
    begin
      writeln('Ha seleccionado el boleto 10 - MetroTarjeta Integrada');
      writeln('Color: Rojo');
      writeln('Cobertura: Zona A');
    end;
    
    else
    begin
    end;
  end;
    
    // Calcular el precio del boleto según el tipo seleccionado
    if (tipoBoleto = 'M') or (tipoBoleto = 'm') then
    begin
      precioBoleto := 2.5;  // Precio del boleto de metro
    end
    else if (tipoBoleto = 'B') or (tipoBoleto = 'b') then
    begin
      precioBoleto := 3.0;  // Precio del boleto de metrobus
    end
    else
    begin
    end;
    
    // Calcular el precio total
    precioTotal := cantidadBoletos * precioBoleto;
    
    writeln;
    writeln('Resumen de compra');
    writeln('-----------------------');
    writeln('Nombre: ', nombre);
    writeln('Apellido: ', apellido);
    writeln('Cedula: ', cedula);
    writeln('Cantidad de boletos: ', cantidadBoletos);
    writeln('Tipo de boleto: ', tipoBoleto);
    writeln('Precio total: ', precioTotal:0:2);
    
    writeln;
    write('¿Desea viajar en metro o metrobus? (M: Metro, B: Metrobus): ');
    readln(deseaViajar);
    
    if (deseaViajar = 'M') or (deseaViajar = 'm') then
    begin
      writeln('Usted ha seleccionado viajar en metro.');
      writeln('El precio total de los boletos es: ', precioTotal:0:2);
    end
    else if (deseaViajar = 'B') or (deseaViajar = 'b') then
    begin
      writeln('Usted ha seleccionado viajar en metrobus.');
      writeln('El precio total de los boletos es: ', precioTotal:0:2);
    end
    else
    begin
    end;
    
    readln;
  end
  else if (deseaComprar = 'N') or (deseaComprar = 'n') then
  begin


    writeln('Gracias por visitarnos. Hasta luego!');
    readln;
  end
  else
  begin
    writeln('Opción no válida. Programa terminado.');
    readln;
  end;
end.
