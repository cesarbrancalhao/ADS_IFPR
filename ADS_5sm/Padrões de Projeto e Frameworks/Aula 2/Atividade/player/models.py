from abc import ABC, abstractmethod

class Player(ABC):
    def __init__(self, name: str, hp: int, atk: int, armor: int):
        self.name = name
        self.hp = hp
        self.atk = atk
        self.armor = armor # defesa

    @abstractmethod
    def attack(self, npc):
        pass

    @abstractmethod
    def defend(self, atk):
        pass

class Guerreiro(Player):
    def __init__(self, name: str, hp: int, atk: int, armor: int):
        super().__init__(name, hp, atk, armor)
        self.alive = True

    def attack(self, npc) -> tuple:
        if self.alive and npc.alive:
            return npc.defend(self.atk + 5) # + dano
        
        return -1

    def defend(self, atk):
        dmg = max(0, atk - self.armor)
        self.hp = max(0, self.hp - dmg)
        
        if self.hp == 0:
            self.alive = False
            
        return dmg

class Tanque(Player):
    def __init__(self, name: str, hp: int, atk: int, armor: int):
        super().__init__(name, hp, atk, armor)
        self.alive = True

    def attack(self, npc) -> tuple:
        if self.alive and npc.alive:
            return npc.defend(self.atk)
        
        return -1

    def defend(self, atk):
        dmg = max(0, atk - (self.armor + 10)) # + escudo
        self.hp = max(0, self.hp - dmg)
        
        if self.hp == 0:
            self.alive = False
            
        return dmg