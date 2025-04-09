from player.player_factory import criar_player, PlayerType
from npc.NPC_factory import criar_npc, NPCType

def main():
    inimigo_dragao = criar_npc("Dragão", 160, 15, 5, NPCType.DRAGON)
    inimigo_mago = criar_npc("Mago", 80, 8, 5, NPCType.MAGE)

    player_warrior = criar_player("Mario", 100, 12, 8, PlayerType.GUERREIRO)

    print(f"Início da batalha:")
    print(f"Dragão inicia um ataque ao Guerreiro.")
    dmg = inimigo_dragao.attack(player_warrior)
    if dmg == -1:
        print(f"Ataque proibido, um dos NPCs está morto.")
    else:
        print(f"O ataque causou {dmg} de dano ao Guerreiro.")

    print(f"Mago inicia um ataque ao Guerreiro.")
    dmg = inimigo_mago.attack(player_warrior)
    if dmg == -1:
        print(f"Ataque proibido, um dos NPCs está morto.")
    else:
        print(f"O ataque causou {dmg} de dano ao Guerreiro.")

    print(f"Guerreiro inicia um ataque ao Dragão.")
    dmg = player_warrior.attack(inimigo_dragao)
    if dmg == -1:
        print(f"Ataque proibido, um dos NPCs está morto.")
    else:
        print(f"O ataque causou {dmg} de dano ao Dragão.")

    print(f"Fim da rodada.")
    print(f"Dados finais:")
    print(f"Dragão: {inimigo_dragao.hp} vida.")
    print(f"Mago: {inimigo_mago.hp} vida.")
    print(f"Guerreiro: {player_warrior.hp} vida.")

if __name__ == "__main__":
    main()