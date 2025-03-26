from abc import ABC, abstractmethod
import random

class NPC(ABC):
    def __init__(self, name: str, hp: int, atk: int, armor: int):
        self.name = name
        self.hp = hp
        self.atk = atk
        self.armor = armor

    @abstractmethod
    def attack(self, npc):
        pass

    @abstractmethod
    def defend(self, atk):
        pass

class Dragon(NPC):
    def __init__(self, name: str, hp: int, atk: int, armor: int):
        super().__init__(name, hp, atk, armor)
        self.alive = True

    def attack(self, npc) -> tuple:
        if self.alive and npc.alive:
            return npc.defend(self.atk)
        
        return -1

    def defend(self, atk):
        dmg = max(0, atk - (self.armor + 5)) # + armadura das escamas
        self.hp = max(0, self.hp - dmg)
        
        if self.hp == 0:
            self.alive = False
            
        return dmg

class Mage(NPC):
    def __init__(self, name: str, hp: int, atk: int, armor: int):
        super().__init__(name, hp, atk, armor)
        self.alive = True

    def attack(self, npc) -> tuple:
        if self.alive and npc.alive:
            return npc.defend(self.atk + 10) # + dano mágico
        
        return -1

    def defend(self, atk):
        dmg = max(0, atk - self.armor)
        self.hp = max(0, self.hp - dmg)
        
        if self.hp == 0:
            self.alive = False
            
        return dmg