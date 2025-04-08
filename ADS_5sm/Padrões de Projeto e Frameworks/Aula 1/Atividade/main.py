from models import *

def main():
    dragao = Dragon("Dragão", 100, 30, 5)
    mago = Mage("Mago", 100, 15, 15)

    print(f"Início da batalha:")
    print(f"Dragão inicia um ataque ao Mago.")
    dmg = dragao.attack(mago)
    if dmg == -1:
        print(f"Ataque proibido, um dos NPCs está morto.")
    else:
        print(f"O ataque causou {dmg} de dano ao Mago.")

    print(f"Mago inicia um ataque ao Dragão.")
    dmg = mago.attack(dragao)
    if dmg == -1:
        print(f"Ataque proibido, um dos NPCs está morto.")
    else:
        print(f"O ataque causou {dmg} de dano ao Dragão.")

    print(f"Fim da rodada.")
    print(f"Dados finais:")
    print(f"Dragão: {dragao.hp} vida.")
    print(f"Mago: {mago.hp} vida.")

if __name__ == "__main__":
    main()

# python3 main.py