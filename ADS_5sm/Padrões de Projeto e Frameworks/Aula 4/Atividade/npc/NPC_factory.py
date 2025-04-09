import npc.models as m
from combat.strategies import DragonStrategy, MageStrategy
from enum import Enum

class NPCType(Enum):
    DRAGON = 'D'
    MAGE = 'M'

def criar_npc(name: str, hp: int, atk: int, armor: int, npc_type: NPCType):
    if npc_type == NPCType.DRAGON:
        return m.Dragon(name, hp, atk, armor, DragonStrategy())
    elif npc_type == NPCType.MAGE:
        return m.Mage(name, hp, atk, armor, MageStrategy())
    else:
        raise ValueError(f'Tipo de NPC inválido: {npc_type}')