import npc.models as m
from enum import Enum

class NPCType(Enum):
    DRAGON = 'D'
    MAGE = 'M'

def criar_npc(name: str, hp: int, atk: int, armor: int, npc_type: NPCType):
    if npc_type == NPCType.DRAGON:
        return m.Dragon(name, hp, atk, armor)
    elif npc_type == NPCType.MAGE:
        return m.Mage(name, hp, atk, armor)
    else:
        raise ValueError(f'Tipo de NPC inválido: {npc_type}')