import player.models as m
from combat.strategies import GuerreiroStrategy, TanqueStrategy
from enum import Enum

class PlayerType(Enum):
    GUERREIRO = 'G'
    TANQUE = 'T'

def criar_player(name: str, hp: int, atk: int, armor: int, player_type: PlayerType):
    if player_type == PlayerType.GUERREIRO:
        return m.Guerreiro(name, hp, atk, armor, GuerreiroStrategy())
    elif player_type == PlayerType.TANQUE:
        return m.Tanque(name, hp, atk, armor, TanqueStrategy())
    else:
        raise ValueError(f'Tipo de jogador inválido: {player_type}')