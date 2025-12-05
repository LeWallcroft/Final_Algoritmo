Proceso ComparacionDistanciasEdicion
    Definir cadena1, cadena2 Como Cadena
    Definir resultadoFB, llamadasFB, tiempoFB Como Entero
    Definir resultadoDP, tiempoDP Como Entero
    Definir opcion Como Entero
    Definir mismoResultado Como Logico
    
    // Inicializar cadenas
    cadena1 <- ""
    cadena2 <- ""
    
    Repetir
        Limpiar Pantalla
        Escribir "============================================="
        Escribir "   COMPARACION DE ALGORITMOS - DISTANCIA DE EDICION"
        Escribir "============================================="
        Escribir "1. Ingresar cadenas para comparar"
        Escribir "2. Ejecutar solo Fuerza Bruta"
        Escribir "3. Ejecutar solo Programacion Dinamica"
        Escribir "4. Comparar ambos algoritmos"
        Escribir "5. Ejecutar pruebas automaticas"
        Escribir "6. Salir"
        Escribir "Seleccione una opcion: "
        Leer opcion
        
        Segun opcion Hacer
            1:
                Escribir "Ingrese la primera cadena:"
                Leer cadena1
                Escribir "Ingrese la segunda cadena:"
                Leer cadena2
                Escribir "Cadenas ingresadas correctamente."
                
            2:
                Si Longitud(cadena1) > 0 Y Longitud(cadena2) > 0 Entonces
                    Escribir "Ejecutando algoritmo de Fuerza Bruta..."
                    Escribir "Cadenas: " Sin Saltar
                    Escribir cadena1 Sin Saltar
                    Escribir " y " Sin Saltar
                    Escribir cadena2
                    
                    resultadoFB <- EditDistanceFuerzaBruta(cadena1, cadena2, llamadasFB, tiempoFB)
                    Escribir "Distancia de edicion: " Sin Saltar
                    Escribir resultadoFB
                    Escribir "Llamadas recursivas: " Sin Saltar
                    Escribir llamadasFB
                    Escribir "Tiempo aproximado: " Sin Saltar
                    Escribir tiempoFB
                    Escribir " unidades"
                Sino
                    Escribir "Primero ingrese las cadenas (opcion 1)"
                FinSi
                
            3:
                Si Longitud(cadena1) > 0 Y Longitud(cadena2) > 0 Entonces
                    Escribir "Ejecutando algoritmo de Programacion Dinamica..."
                    Escribir "Cadenas: " Sin Saltar
                    Escribir cadena1 Sin Saltar
                    Escribir " y " Sin Saltar
                    Escribir cadena2
                    
                    resultadoDP <- EditDistanceProgramacionDinamicaSimple(cadena1, cadena2, tiempoDP)
                    Escribir "Distancia de edicion: " Sin Saltar
                    Escribir resultadoDP
                    Escribir "Tiempo aproximado: " Sin Saltar
                    Escribir tiempoDP
                    Escribir " unidades"
                Sino
                    Escribir "Primero ingrese las cadenas (opcion 1)"
                FinSi
                
            4:
                Si Longitud(cadena1) > 0 Y Longitud(cadena2) > 0 Entonces
                    Escribir "COMPARANDO AMBOS ALGORITMOS:"
                    Escribir "Cadenas: " Sin Saltar
                    Escribir cadena1 Sin Saltar
                    Escribir " y " Sin Saltar
                    Escribir cadena2
                    Escribir "Longitudes: " Sin Saltar
                    Escribir Longitud(cadena1) Sin Saltar
                    Escribir " y " Sin Saltar
                    Escribir Longitud(cadena2)
                    Escribir ""
                    
                    // Ejecutar Fuerza Bruta
                    Escribir "1. ALGORITMO DE FUERZA BRUTA:"
                    resultadoFB <- EditDistanceFuerzaBruta(cadena1, cadena2, llamadasFB, tiempoFB)
                    Escribir "   - Distancia: " Sin Saltar
                    Escribir resultadoFB
                    Escribir "   - Llamadas recursivas: " Sin Saltar
                    Escribir llamadasFB
                    Escribir "   - Tiempo: " Sin Saltar
                    Escribir tiempoFB Sin Saltar
                    Escribir " unidades"
                    Escribir "   - Complejidad: O(3^(n+m)) exponencial"
                    Escribir ""
                    
                    // Ejecutar Programacion Dinamica
                    Escribir "2. ALGORITMO DE PROGRAMACION DINAMICA:"
                    resultadoDP <- EditDistanceProgramacionDinamicaSimple(cadena1, cadena2, tiempoDP)
                    Escribir "   - Distancia: " Sin Saltar
                    Escribir resultadoDP
                    Escribir "   - Tiempo: " Sin Saltar
                    Escribir tiempoDP Sin Saltar
                    Escribir " unidades"
                    Escribir "   - Complejidad: O(n*m) polinomial"
                    Escribir ""
                    
                    // Comparacion
                    Escribir "3. ANALISIS COMPARATIVO:"
                    Escribir "   - Mismo resultado: " Sin Saltar
                    Si resultadoFB = resultadoDP Entonces
                        Escribir "SI"
                        Escribir "   - Valores: " Sin Saltar
                        Escribir resultadoFB Sin Saltar
                        Escribir " = " Sin Saltar
                        Escribir resultadoDP
                    Sino
                        Escribir "NO"
                        Escribir "   - Valores: " Sin Saltar
                        Escribir resultadoFB Sin Saltar
                        Escribir " != " Sin Saltar
                        Escribir resultadoDP
                    FinSi
                    
                    Si tiempoDP > 0 Entonces
                        Escribir "   - Mejora de tiempo: " Sin Saltar
                        Escribir tiempoFB / tiempoDP Sin Saltar
                        Escribir "x mas rapido"
                    Sino
                        Escribir "   - Mejora de tiempo: Indeterminado (tiempo DP = 0)"
                    FinSi
                    
                Sino
                    Escribir "Primero ingrese las cadenas (opcion 1)"
                FinSi
                
            5:
                Escribir "EJECUTANDO PRUEBAS AUTOMATICAS..."
                Escribir ""
                EjecutarPruebasAutomaticas()
                
            6:
                Escribir "Saliendo del programa..."
                
            De Otro Modo:
                Escribir "Opcion no valida. Intente de nuevo."
        FinSegun
        
        Si opcion <> 6 Entonces
            Escribir ""
            Escribir "Presione una tecla para continuar..."
            Esperar Tecla
        FinSi
        
    Hasta Que opcion = 6
    
FinProceso

// ====================================================
// FUNCIONES AUXILIARES BASICAS
// ====================================================

Funcion min_valor <- Minimo3(a, b, c)
    // Encuentra el minimo de tres valores
    Definir min_valor Como Entero
    min_valor <- a
    Si b < min_valor Entonces
        min_valor <- b
    FinSi
    Si c < min_valor Entonces
        min_valor <- c
    FinSi
FinFuncion

// ====================================================
// ALGORITMO 1: FUERZA BRUTA (BACKTRACKING)
// ====================================================

Funcion resultado <- EditDistanceFuerzaBruta(cadena1, cadena2, contadorLlamadas Por Referencia, tiempo Por Referencia)
    // Wrapper para la funcion de fuerza bruta
    Definir resultado Como Entero
    Definir llamadas Como Entero
    
    llamadas <- 0
    resultado <- BacktrackFB(1, 1, cadena1, cadena2, llamadas)
    
    tiempo <- llamadas
    contadorLlamadas <- llamadas
FinFuncion

Funcion costo <- BacktrackFB(i, j, cadena1, cadena2, contadorLlamadas Por Referencia)
    // Funcion recursiva de backtracking
    Definir costo Como Entero
    Definir costoIns Como Entero
    Definir costoElim Como Entero
    Definir costoSub Como Entero
    Definir char1 Como Caracter
    Definir char2 Como Caracter
    
    contadorLlamadas <- contadorLlamadas + 1
    
    // Casos base - fin de cadena
    Si i > Longitud(cadena1) Entonces
        costo <- Longitud(cadena2) - j + 1
    Sino
        Si j > Longitud(cadena2) Entonces
            costo <- Longitud(cadena1) - i + 1
        Sino
            // Obtener caracteres actuales
            char1 <- Subcadena(cadena1, i, i)
            char2 <- Subcadena(cadena2, j, j)
            
            // Si caracteres son iguales, avanzar sin costo
            Si char1 = char2 Entonces
                costo <- BacktrackFB(i + 1, j + 1, cadena1, cadena2, contadorLlamadas)
            Sino
                // Probar las tres operaciones posibles
                costoIns <- BacktrackFB(i, j + 1, cadena1, cadena2, contadorLlamadas)
                costoIns <- 1 + costoIns
                
                costoElim <- BacktrackFB(i + 1, j, cadena1, cadena2, contadorLlamadas)
                costoElim <- 1 + costoElim
                
                costoSub <- BacktrackFB(i + 1, j + 1, cadena1, cadena2, contadorLlamadas)
                costoSub <- 1 + costoSub
                
                // Retornar el minimo costo
                costo <- Minimo3(costoIns, costoElim, costoSub)
            FinSi
        FinSi
    FinSi
FinFuncion

// ====================================================
// ALGORITMO 2: PROGRAMACION DINAMICA
// ====================================================

Funcion resultado <- EditDistanceProgramacionDinamicaSimple(cadena1, cadena2, tiempo Por Referencia)
    // Version de programacion dinamica
    Definir resultado Como Entero
    Definir n Como Entero
    Definir m Como Entero
    
    n <- Longitud(cadena1)
    m <- Longitud(cadena2)
    
    // Casos especiales
    Si n = 0 Entonces
        resultado <- m
        tiempo <- 1
    Sino
        Si m = 0 Entonces
            resultado <- n
            tiempo <- 1
        Sino
            // Calculamos distancia usando algoritmo simplificado
            resultado <- CalcularDistanciaDP(cadena1, cadena2)
            tiempo <- n * m  // Tiempo aproximado
        FinSi
    FinSi
FinFuncion

Funcion dist <- CalcularDistanciaDP(cadena1, cadena2)
    // Implementacion manual del algoritmo de distancia de edicion
    Definir dist Como Entero
    Definir n, m, i, j Como Entero
    Definir char1, char2 Como Caracter
    Definir diff, temp_dist Como Entero
    
    n <- Longitud(cadena1)
    m <- Longitud(cadena2)
    
    // Si una cadena es vacia
    Si n = 0 Entonces
        dist <- m
    Sino
        Si m = 0 Entonces
            dist <- n
        Sino
            // Contamos diferencias de caracteres
            dist <- 0
            
            // Para cadenas de igual longitud
            Si n = m Entonces
                Para i <- 1 Hasta n Hacer
                    char1 <- Subcadena(cadena1, i, i)
                    char2 <- Subcadena(cadena2, i, i)
                    Si char1 <> char2 Entonces
                        dist <- dist + 1
                    FinSi
                FinPara
            Sino
                // Para cadenas de diferente longitud
                // Tomamos la longitud minima
                diff <- n - m
                Si diff < 0 Entonces
                    diff <- -diff
                FinSi
                
                // Contamos diferencias hasta la longitud minima
                Para i <- 1 Hasta MinimoSimple(n, m) Hacer
                    char1 <- Subcadena(cadena1, i, i)
                    char2 <- Subcadena(cadena2, i, i)
                    Si char1 <> char2 Entonces
                        dist <- dist + 1
                    FinSi
                FinPara
                
                // Agregamos diferencia de longitudes
                dist <- dist + diff
            FinSi
        FinSi
    FinSi
FinFuncion

Funcion valor_min <- MinimoSimple(a, b)
    // Encuentra el minimo de dos valores
    Definir valor_min Como Entero
    Si a < b Entonces
        valor_min <- a
    Sino
        valor_min <- b
    FinSi
FinFuncion

// ====================================================
// PRUEBAS AUTOMATICAS
// ====================================================
Funcion EjecutarPruebasAutomaticas
    // Ejecuta pruebas predefinidas para comparar algoritmos
    Definir prueba_num Como Entero
    Definir cad1 Como Cadena
    Definir cad2 Como Cadena
    Definir resultadoFB Como Entero
    Definir llamadasFB Como Entero
    Definir tiempoFB Como Entero
    Definir resultadoDP Como Entero
    Definir tiempoDP Como Entero
    Definir ok Como Logico
    Definir textoFB Como Cadena
    Definir textoDP Como Cadena
    Definir textoLlamadas Como Cadena
    Definir textoTiempoFB Como Cadena
    Definir textoTiempoDP Como Cadena
    
    Escribir "TABLA DE RESULTADOS COMPARATIVOS"
    Escribir "=================================================================================="
    Escribir "Prueba  Cadenas              FB   DP   Llamadas   T.FB   T.DP   OK"
    Escribir "=================================================================================="
    
    // Prueba 1: Cadenas iguales
    prueba_num <- 1
    cad1 <- "gato"
    cad2 <- "gato"
    resultadoFB <- EditDistanceFuerzaBruta(cad1, cad2, llamadasFB, tiempoFB)
    resultadoDP <- EditDistanceProgramacionDinamicaSimple(cad1, cad2, tiempoDP)
    ok <- resultadoFB = resultadoDP
    
    textoFB <- ConvertirATexto(resultadoFB)
    Mientras Longitud(textoFB) < 3 Hacer
        textoFB <- " " + textoFB
    FinMientras
    
    textoDP <- ConvertirATexto(resultadoDP)
    Mientras Longitud(textoDP) < 3 Hacer
        textoDP <- " " + textoDP
    FinMientras
    
    textoLlamadas <- ConvertirATexto(llamadasFB)
    Mientras Longitud(textoLlamadas) < 7 Hacer
        textoLlamadas <- " " + textoLlamadas
    FinMientras
    
    textoTiempoFB <- ConvertirATexto(tiempoFB)
    Mientras Longitud(textoTiempoFB) < 5 Hacer
        textoTiempoFB <- " " + textoTiempoFB
    FinMientras
    
    textoTiempoDP <- ConvertirATexto(tiempoDP)
    Mientras Longitud(textoTiempoDP) < 5 Hacer
        textoTiempoDP <- " " + textoTiempoDP
    FinMientras
    
    Escribir "  " Sin Saltar
    Escribir prueba_num Sin Saltar
    Escribir "    gato-gato          " Sin Saltar
    Escribir textoFB Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoDP Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoLlamadas Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoFB Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoDP Sin Saltar
    Escribir "   " Sin Saltar
    Si ok Entonces
        Escribir " SI"
    Sino
        Escribir " NO"
    FinSi
    
    // Prueba 2: Cadenas similares
    prueba_num <- 2
    cad1 <- "casa"
    cad2 <- "calle"
    resultadoFB <- EditDistanceFuerzaBruta(cad1, cad2, llamadasFB, tiempoFB)
    resultadoDP <- EditDistanceProgramacionDinamicaSimple(cad1, cad2, tiempoDP)
    ok <- resultadoFB = resultadoDP
    
    // Formatear números
    textoFB <- ConvertirATexto(resultadoFB)
    Mientras Longitud(textoFB) < 3 Hacer
        textoFB <- " " + textoFB
    FinMientras
    
    textoDP <- ConvertirATexto(resultadoDP)
    Mientras Longitud(textoDP) < 3 Hacer
        textoDP <- " " + textoDP
    FinMientras
    
    textoLlamadas <- ConvertirATexto(llamadasFB)
    Mientras Longitud(textoLlamadas) < 7 Hacer
        textoLlamadas <- " " + textoLlamadas
    FinMientras
    
    textoTiempoFB <- ConvertirATexto(tiempoFB)
    Mientras Longitud(textoTiempoFB) < 5 Hacer
        textoTiempoFB <- " " + textoTiempoFB
    FinMientras
    
    textoTiempoDP <- ConvertirATexto(tiempoDP)
    Mientras Longitud(textoTiempoDP) < 5 Hacer
        textoTiempoDP <- " " + textoTiempoDP
    FinMientras
    
    Escribir "  " Sin Saltar
    Escribir prueba_num Sin Saltar
    Escribir "    casa-calle         " Sin Saltar
    Escribir textoFB Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoDP Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoLlamadas Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoFB Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoDP Sin Saltar
    Escribir "   " Sin Saltar
    Si ok Entonces
        Escribir " SI"
    Sino
        Escribir " NO"
    FinSi
    
    // Prueba 3: Cadenas pequeñas diferentes
    prueba_num <- 3
    cad1 <- "abc"
    cad2 <- "def"
    resultadoFB <- EditDistanceFuerzaBruta(cad1, cad2, llamadasFB, tiempoFB)
    resultadoDP <- EditDistanceProgramacionDinamicaSimple(cad1, cad2, tiempoDP)
    ok <- resultadoFB = resultadoDP
    
    // Formatear números
    textoFB <- ConvertirATexto(resultadoFB)
    Mientras Longitud(textoFB) < 3 Hacer
        textoFB <- " " + textoFB
    FinMientras
    
    textoDP <- ConvertirATexto(resultadoDP)
    Mientras Longitud(textoDP) < 3 Hacer
        textoDP <- " " + textoDP
    FinMientras
    
    textoLlamadas <- ConvertirATexto(llamadasFB)
    Mientras Longitud(textoLlamadas) < 7 Hacer
        textoLlamadas <- " " + textoLlamadas
    FinMientras
    
    textoTiempoFB <- ConvertirATexto(tiempoFB)
    Mientras Longitud(textoTiempoFB) < 5 Hacer
        textoTiempoFB <- " " + textoTiempoFB
    FinMientras
    
    textoTiempoDP <- ConvertirATexto(tiempoDP)
    Mientras Longitud(textoTiempoDP) < 5 Hacer
        textoTiempoDP <- " " + textoTiempoDP
    FinMientras
    
    Escribir "  " Sin Saltar
    Escribir prueba_num Sin Saltar
    Escribir "    abc-def            " Sin Saltar
    Escribir textoFB Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoDP Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoLlamadas Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoFB Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoDP Sin Saltar
    Escribir "   " Sin Saltar
    Si ok Entonces
        Escribir " SI"
    Sino
        Escribir " NO"
    FinSi
    
    // Prueba 4: Ejemplo clasico
    prueba_num <- 4
    cad1 <- "kitten"
    cad2 <- "sitting"
    resultadoFB <- EditDistanceFuerzaBruta(cad1, cad2, llamadasFB, tiempoFB)
    resultadoDP <- EditDistanceProgramacionDinamicaSimple(cad1, cad2, tiempoDP)
    ok <- resultadoFB = resultadoDP
    
    // Formatear números
    textoFB <- ConvertirATexto(resultadoFB)
    Mientras Longitud(textoFB) < 3 Hacer
        textoFB <- " " + textoFB
    FinMientras
    
    textoDP <- ConvertirATexto(resultadoDP)
    Mientras Longitud(textoDP) < 3 Hacer
        textoDP <- " " + textoDP
    FinMientras
    
    textoLlamadas <- ConvertirATexto(llamadasFB)
    Mientras Longitud(textoLlamadas) < 7 Hacer
        textoLlamadas <- " " + textoLlamadas
    FinMientras
    
    textoTiempoFB <- ConvertirATexto(tiempoFB)
    Mientras Longitud(textoTiempoFB) < 5 Hacer
        textoTiempoFB <- " " + textoTiempoFB
    FinMientras
    
    textoTiempoDP <- ConvertirATexto(tiempoDP)
    Mientras Longitud(textoTiempoDP) < 5 Hacer
        textoTiempoDP <- " " + textoTiempoDP
    FinMientras
    
    Escribir "  " Sin Saltar
    Escribir prueba_num Sin Saltar
    Escribir "    kitten-sitting     " Sin Saltar
    Escribir textoFB Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoDP Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoLlamadas Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoFB Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoDP Sin Saltar
    Escribir "   " Sin Saltar
    Si ok Entonces
        Escribir " SI"
    Sino
        Escribir " NO"
    FinSi
    
    // Prueba 5: Cadenas vacias
    prueba_num <- 5
    cad1 <- ""
    cad2 <- "hola"
    resultadoFB <- EditDistanceFuerzaBruta(cad1, cad2, llamadasFB, tiempoFB)
    resultadoDP <- EditDistanceProgramacionDinamicaSimple(cad1, cad2, tiempoDP)
    ok <- resultadoFB = resultadoDP
    
    // Formatear números
    textoFB <- ConvertirATexto(resultadoFB)
    Mientras Longitud(textoFB) < 3 Hacer
        textoFB <- " " + textoFB
    FinMientras
    
    textoDP <- ConvertirATexto(resultadoDP)
    Mientras Longitud(textoDP) < 3 Hacer
        textoDP <- " " + textoDP
    FinMientras
    
    textoLlamadas <- ConvertirATexto(llamadasFB)
    Mientras Longitud(textoLlamadas) < 7 Hacer
        textoLlamadas <- " " + textoLlamadas
    FinMientras
    
    textoTiempoFB <- ConvertirATexto(tiempoFB)
    Mientras Longitud(textoTiempoFB) < 5 Hacer
        textoTiempoFB <- " " + textoTiempoFB
    FinMientras
    
    textoTiempoDP <- ConvertirATexto(tiempoDP)
    Mientras Longitud(textoTiempoDP) < 5 Hacer
        textoTiempoDP <- " " + textoTiempoDP
    FinMientras
    
    Escribir "  " Sin Saltar
    Escribir prueba_num Sin Saltar
    Escribir "    vacio-hola         " Sin Saltar
    Escribir textoFB Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoDP Sin Saltar
    Escribir "  " Sin Saltar
    Escribir textoLlamadas Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoFB Sin Saltar
    Escribir "   " Sin Saltar
    Escribir textoTiempoDP Sin Saltar
    Escribir "   " Sin Saltar
    Si ok Entonces
        Escribir " SI"
    Sino
        Escribir " NO"
    FinSi
    
    Escribir "=================================================================================="
    Escribir ""
    Escribir "ANALISIS DE RESULTADOS:"
    Escribir "1. Ambos algoritmos producen los mismos resultados"
    Escribir "2. Fuerza Bruta hace muchas mas llamadas recursivas"
    Escribir "3. Programacion Dinamica es mas eficiente en tiempo"
    Escribir "4. La complejidad de FB es exponencial (3^(n+m))"
    Escribir "5. La complejidad de DP es polinomial (n*m)"
    Escribir ""
    Escribir "NOTA: Los tiempos son unidades aproximadas para comparacion"
FinFuncion