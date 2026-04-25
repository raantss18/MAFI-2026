def crible_eratosthene(n):
    """Retourne la liste des nombres premiers <= n"""
    est_premier = [True] * (n+1)
    est_premier[0] = est_premier[1] = False
    for p in range(2, int(n**0.5) + 1):
        if est_premier[p]:
            for multiple in range(p*p, n+1, p):
                est_premier[multiple] = False
    return [i for i, prime in enumerate(est_premier) if prime]

def compter_premiers(n):
    """Retourne le nombre de nombres premiers <= n"""
    return len(crible_eratosthene(n))
# Exemple
liste = crible_eratosthene(50)
print("Nombres premiers jusqu'à 50 :", liste)
print("Nombre de premiers jusqu'à 50 :", compter_premiers(50))

