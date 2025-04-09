from abc import ABC, abstractmethod

class NPC(ABC):
    def __init__(self, name: str, hp: int, atk: int, armor: int, combat_strategy):
        self.name = name
        self.hp = hp
        self.atk = atk
        self.armor = armor
        self.combat_strategy = combat_strategy
        self.alive = True

    def attack(self, player):
        return self.combat_strategy.attack(self, player)

    def defend(self, atk):
        return self.combat_strategy.defend(self, atk)

class Dragon(NPC):
    def __init__(self, name: str, hp: int, atk: int, armor: int, combat_strategy):
        super().__init__(name, hp, atk, armor, combat_strategy)

class Mage(NPC):
    def __init__(self, name: str, hp: int, atk: int, armor: int, combat_strategy):
        super().__init__(name, hp, atk, armor, combat_strategy)