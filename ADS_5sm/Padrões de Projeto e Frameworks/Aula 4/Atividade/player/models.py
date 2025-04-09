from abc import ABC, abstractmethod

class Player(ABC):
    def __init__(self, name: str, hp: int, atk: int, armor: int, strategy):
        self.name = name
        self.hp = hp
        self.atk = atk
        self.armor = armor
        self.strategy = strategy
        self.alive = True

    def attack(self, npc):
        return self.strategy.attack(self, npc)

    def defend(self, atk):
        return self.strategy.defend(self, atk)

class Guerreiro(Player):
    def __init__(self, name: str, hp: int, atk: int, armor: int, strategy):
        super().__init__(name, hp, atk, armor, strategy)

class Tanque(Player):
    def __init__(self, name: str, hp: int, atk: int, armor: int, strategy):
        super().__init__(name, hp, atk, armor, strategy)