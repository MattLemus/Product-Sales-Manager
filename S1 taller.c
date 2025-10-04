#include <stdio.h>

int main() {
    char id[20], nombre[20]; 
    int stock, vender, agregar, opcion; 
    float precio, ganancias = 0, totalVenta; 
    int cantidadVender, cantidadAgregar; 

    printf("=== Registro del Producto ===\n");

    printf("Ingrese ID del producto: ");
    scanf("%s", id);

    printf("Ingrese nombre del producto: ");
    scanf("%s", nombre);

    printf("Ingrese cantidad en stock: ");
    scanf("%d", &stock);

    printf("Ingrese precio unitario: ");
    scanf("%f", &precio);

    do {
        printf("\n");
        printf("=== MENU DE OPCIONES ===\n");
        printf("1. Vender producto\n");
        printf("2. Reabastecer producto\n");
        printf("3. Consultar informacion del producto\n");
        printf("4. Mostrar ganancias obtenidas\n");
        printf("5. Salir\n");
        printf("Seleccione una opcion: ");
        scanf("%d", &opcion);

        switch (opcion) {
            case 1:
                printf("--- Vender producto ---\n");

                do {
                    printf("Cuantas unidades desea vender? (positivo): ");
                    scanf("%d", &cantidadVender);

                    if (cantidadVender < 0) {
                        printf("Error: no se puede vender una cantidad negativa.\n");
                    }
                } while (cantidadVender < 0);

                if (cantidadVender <= stock) {
                    totalVenta = cantidadVender * precio;
                    ganancias += totalVenta;
                    stock -= cantidadVender;
                    printf("Venta realizada con exito. Total vendido: $%.2f\n", totalVenta);
                } else {
                    printf("No hay suficiente stock. Venta no realizada.\n");
                }
                break; // corregido: falta break

            case 2:
                printf("--- Reabastecer producto ---\n");
                do {
                    printf("Cuantas unidades desea agregar al stock? (positivo): ");
                    scanf("%d", &cantidadAgregar);
                    if (cantidadAgregar < 0) {
                        printf("Error: no se puede agregar una cantidad negativa.\n");
                    }
                } while (cantidadAgregar < 0);

                stock += cantidadAgregar;
                printf("Stock actualizado correctamente.\n");
                break;

            case 3:
                printf("--- Informacion del producto ---\n");
                printf("ID: %s\n", id);
                printf("Nombre: %s\n", nombre);
                printf("Cantidad en stock: %d\n", stock);
                printf("Precio unitario: $%.2f\n", precio);
                break;

            case 4:
                printf("--- Ganancias ---\n");
                printf("Ganancias obtenidas hasta el momento: $%.2f\n", ganancias);
                break;

            case 5:
                printf("Saliendo del programa...\n");
                break;

            default:
                printf("Opcion invalida. Intente nuevamente.\n");
                break;
        }

    } while (opcion != 5);

    return 0;
}
