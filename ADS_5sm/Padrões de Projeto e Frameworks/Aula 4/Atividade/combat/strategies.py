from abc import ABC, abstractmethod

class CombatStrategy(ABC):
    @abstractmethod
    def attack(self, attacker, defender):
        pass
    
    @abstractmethod
    def defend(self, defender, incoming_damage):
        pass

class GuerreiroStrategy(CombatStrategy):
    def attack(self, attacker, defender):
        if attacker.alive and defender.alive:
            return defender.defend(attacker.atk + 5)
        return -1

    def defend(self, defender, incoming_damage):
        dmg = max(0, incoming_damage - defender.armor)
        defender.hp = max(0, defender.hp - dmg)
        if defender.hp == 0:
            defender.alive = False
        return dmg

class TanqueStrategy(CombatStrategy):
    def attack(self, attacker, defender):
        if attacker.alive and defender.alive:
            return defender.defend(attacker.atk)
        return -1

    def defend(self, defender, incoming_damage):
        dmg = max(0, incoming_damage - (defender.armor + 10))
        defender.hp = max(0, defender.hp - dmg)
        if defender.hp == 0:
            defender.alive = False
        return dmg

class DragonStrategy(CombatStrategy):
    def attack(self, attacker, defender):
        if attacker.alive and defender.alive:
            return defender.defend(attacker.atk)
        return -1

    def defend(self, defender, incoming_damage):
        dmg = max(0, incoming_damage - (defender.armor + 5))
        defender.hp = max(0, defender.hp - dmg)
        if defender.hp == 0:
            defender.alive = False
        return dmg

class MageStrategy(CombatStrategy):
    def attack(self, attacker, defender):
        if attacker.alive and defender.alive:
            return defender.defend(attacker.atk + 10)
        return -1

    def defend(self, defender, incoming_damage):
        dmg = max(0, incoming_damage - defender.armor)
        defender.hp = max(0, defender.hp - dmg)
        if defender.hp == 0:
            defender.alive = False
        return dmg
