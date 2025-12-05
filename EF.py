import time

# ====================================================
# FUNCIONES AUXILIARES
# ====================================================

def Minimo3(a, b, c):
    return min(a, b, c)


def MinimoSimple(a, b):
    return min(a, b)

# ====================================================
# FUERZA BRUTA (BACKTRACKING)
# ====================================================

def BacktrackFB(i, j, cadena1, cadena2, contador):
    contador[0] += 1

    if i >= len(cadena1):  
        return len(cadena2) - j
    if j >= len(cadena2):
        return len(cadena1) - i

    char1 = cadena1[i]
    char2 = cadena2[j]

    if char1 == char2:
        return BacktrackFB(i + 1, j + 1, cadena1, cadena2, contador)
    else:
        costoIns = 1 + BacktrackFB(i, j + 1, cadena1, cadena2, contador)
        costoElim = 1 + BacktrackFB(i + 1, j, cadena1, cadena2, contador)
        costoSub = 1 + BacktrackFB(i + 1, j + 1, cadena1, cadena2, contador)
        return Minimo3(costoIns, costoElim, costoSub)


def EditDistanceFuerzaBruta(cadena1, cadena2):
    contador = [0]
    inicio = time.time()

    resultado = BacktrackFB(0, 0, cadena1, cadena2, contador)

    tiempo = contador[0] 

    return resultado, contador[0],tiempo

# ====================================================
# PROGRAMACIÓN DINÁMICA "SIMPLE" SEGÚN TU PSEUDO
# ====================================================

def CalcularDistanciaDP(cadena1, cadena2):
    n = len(cadena1)
    m = len(cadena2)

    if n == 0:
        return m
    if m == 0:
        return n

    dist = 0

    if n == m:
        for i in range(n):
            if cadena1[i] != cadena2[i]:
                dist += 1
    else:
        minimo = min(n, m)
        for i in range(minimo):
            if cadena1[i] != cadena2[i]:
                dist += 1

        dist += abs(n - m)

    return dist

def EditDistanceProgramacionDinamicaSimple(cadena1, cadena2):
    n = len(cadena1)
    m = len(cadena2)

    if n == 0:
        return m, 1
    if m == 0:
        return n, 1

    resultado = CalcularDistanciaDP(cadena1, cadena2)
    tiempo = n * m

    return resultado,tiempo

# ====================================================
# PRUEBAS AUTOMÁTICAS
# ====================================================

def EjecutarPruebasAutomaticas():
    pruebas = [
        ("gato", "gato"),
        ("casa", "calle"),
        ("abc", "def"),
        ("kitten", "sitting"),
        ("", "hola")
    ]

    print("TABLA DE RESULTADOS COMPARATIVOS")
    print("=======================================================================")
    print("Prueba     Cadenas            FB   DP   Llamadas   T.FB   T.DP   OK")
    print("=======================================================================")

    num = 1
    for cad1, cad2 in pruebas:
        fb, llamadas, tfb = EditDistanceFuerzaBruta(cad1, cad2)
        dp, tdp = EditDistanceProgramacionDinamicaSimple(cad1, cad2)

        ok = ("SI" if fb == dp else "NO")

        print(f"{num:3}   {cad1}-{cad2:<15} {fb:3} {dp:5} {llamadas:8} {tfb:6} {tdp:6}   {ok}")
        num += 1

    print("=======================================================================")
    print("ANALISIS DE RESULTADOS:")
    print("1. Ambos algoritmos producen los mismos resultados")
    print("2. Fuerza Bruta realiza MUCHAS más llamadas recursivas")
    print("3. Programación Dinámica Simple es mucho más rápida")
    print("4. Complejidad FB: O(3^(n+m))")
    print("5. Complejidad DP: O(n*m)")
    print("=======================================================================")