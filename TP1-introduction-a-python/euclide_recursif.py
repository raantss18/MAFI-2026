def euclide_etendu_recursif(a, b):
    """Retourne (d,u,v) avec d=pgcd(a,b)=a*u+b*v"""
    if b == 0:
        return a, 1, 0
    else:
        d, u1, v1 = euclide_etendu_recursif(b, a % b)
        u = v1
        v = u1 - (a // b) * v1
        return d, u, v

# --- Programme interactif ---
a = int(input("Entrez le premier entier a : "))
b = int(input("Entrez le deuxième entier b : "))

# Version récursive
d, u, v = euclide_etendu_recursif(a, b)
print(f"[Récursif] pgcd({a},{b}) = {d} avec u={u}, v={v}")
print(f"Vérification : {a}*{u} + {b}*{v} = {a*u + b*v}")