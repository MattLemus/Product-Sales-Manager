Proceso GestionarVentaProducto
	
    Definir id, nombre Como Cadena
    Definir cantidadStock, cantidadVender, cantidadAgregar Como Entero
    Definir precioUnitario, ganancias, totalVenta Como Real
    Definir opcion Como Entero
	
    ganancias <- 0
	
    Escribir "=== Registro del Producto ==="
	
    Repetir
        Escribir "Ingrese el ID del producto:"
        Leer id
        Si id = "" Entonces
            Escribir "El ID no puede estar vac�o."
        FinSi
    Hasta Que id <> ""
	
    Repetir
        Escribir "Ingrese el nombre del producto:"
        Leer nombre
        Si nombre = "" Entonces
            Escribir "El nombre no puede estar vac�o."
        FinSi
    Hasta Que nombre <> ""
	
    Repetir
        Escribir "Ingrese la cantidad en stock (n�mero positivo):"
        Leer cantidadStock
        Si cantidadStock < 0 Entonces
            Escribir "Error: la cantidad no puede ser negativa."
        FinSi
    Hasta Que cantidadStock >= 0
	
    Repetir
        Escribir "Ingrese el precio unitario (n�mero positivo):"
        Leer precioUnitario
        Si precioUnitario < 0 Entonces
            Escribir "Error: el precio no puede ser negativo."
        FinSi
    Hasta Que precioUnitario >= 0
	
    Repetir
        Escribir ""
        Escribir "=== MEN� DE OPCIONES ==="
        Escribir "1. Vender producto"
        Escribir "2. Reabastecer producto"
        Escribir "3. Consultar informaci�n del producto"
        Escribir "4. Mostrar ganancias obtenidas"
        Escribir "5. Salir"
        Escribir "Seleccione una opci�n:"
        Leer opcion
		
        Segun opcion Hacer
            1:
                Escribir "--- Vender producto ---"
                Repetir
                    Escribir "�Cu�ntas unidades desea vender? (positivo)"
                    Leer cantidadVender
                    Si cantidadVender < 0 Entonces
                        Escribir "Error: no se puede vender una cantidad negativa."
                    FinSi
                Hasta Que cantidadVender >= 0
				
                Si cantidadVender <= cantidadStock Entonces
                    totalVenta <- cantidadVender * precioUnitario
                    ganancias <- ganancias + totalVenta
                    cantidadStock <- cantidadStock - cantidadVender
                    Escribir "Venta realizada con �xito. Total vendido: $", totalVenta
                Sino
                    Escribir "No hay suficiente stock. Venta no realizada."
                FinSi
				
            2:
                Escribir "--- Reabastecer producto ---"

                Repetir
                    Escribir "�Cu�ntas unidades desea agregar al stock? (positivo)"
                    Leer cantidadAgregar
                    Si cantidadAgregar < 0 Entonces
                        Escribir "Error: no se puede agregar una cantidad negativa."
                    FinSi
                Hasta Que cantidadAgregar >= 0
				
                cantidadStock <- cantidadStock + cantidadAgregar
                Escribir "Stock actualizado correctamente."
				
            3:
                Escribir "--- Informaci�n del producto ---"
                Escribir "ID: ", id
                Escribir "Nombre: ", nombre
                Escribir "Cantidad en stock: ", cantidadStock
                Escribir "Precio unitario: $", precioUnitario
				
            4:
                Escribir "--- Ganancias ---"
                Escribir "Ganancias obtenidas hasta el momento: $", ganancias
				
            5:
                Escribir "Saliendo del programa..."
				
            De Otro Modo:
                Escribir "Opci�n inv�lida. Intente nuevamente."
				
        FinSegun
		
    Hasta Que opcion = 5

FinProceso
