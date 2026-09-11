def euclide_etendu_iteratif(a, b):
    """Retourne (d,u,v) avec d=pgcd(a,b)=a*u+b*v"""
    u0, v0, u1, v1 = 1, 0, 0, 1
    while b != 0:
        q = a // b
        a, b = b, a % b
        u0, u1 = u1, u0 - q * u1
        v0, v1 = v1, v0 - q * v1
    return a, u0, v0
# Programme interactif ---
a = int(input("Entrez le premier entier a : "))
b = int(input("Entrez le deuxième entier b : "))

# Version itérative
d, u, v = euclide_etendu_iteratif(a, b)
print(f"[Itératif] pgcd({a},{b}) = {d} avec u={u}, v={v}")
print(f"Vérification : {a}*{u} + {b}*{v} = {a*u + b*v}")
