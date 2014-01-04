--[[
Illarion Server

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU Affero General Public License as published by the Free
Software Foundation, either version 3 of the License, or (at your option) any
later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the GNU Affero General Public License for more
details.

You should have received a copy of the GNU Affero General Public License along
with this program.  If not, see <http://www.gnu.org/licenses/>. 
]]
-- Default look-at script

require("base.common")
require("base.gems")
require("base.money")

module("base.lookat", package.seeall)

-- init german descriptions
GenericQualDe = {"perfekt", "exzellent", "sehr gut", "gut", "normal", "m��ig", "schlecht", "sehr schlecht", "schrecklich", "furchtbar"}
GenericDuraDe = {}
GenericDuraDe[1] = {"nagelneu", "neu",       "fast neu", "gebraucht", "leicht abgenutzt", "abgenutzt", "sehr abgenutzt", "alt", "rostig",        "klapprig"  }
GenericDuraDe[2] = {"nagelneu", "neu",       "fast neu", "gebraucht", "leicht abgenutzt", "abgenutzt", "sehr abgenutzt", "alt", "morsch",        "zerfallend"}
GenericDuraDe[3] = {"nagelneu", "neu",       "fast neu", "gebraucht", "leicht abgenutzt", "abgenutzt", "sehr abgenutzt", "alt", "fadenscheinig", "zerfetzt"  }
GenericDuraDe[4] = {"funkelnd", "strahlend", "gl�nzend", "gebraucht", "angekratzt",       "zerkratzt", "matt",           "alt", "stumpf",        "br�chig"   }

-- init english descriptions
GenericQualEn = {"perfect", "excellent", "very good", "good", "normal", "average", "bad", "very bad", "awful", "horrible"}
GenericDuraEn = {}
GenericDuraEn[1] = {"brand new", "new",   "almost new", "used", "slightly scraped",   "scraped",   "highly scraped",   "old", "rusty",      "corroded"      }
GenericDuraEn[2] = {"brand new", "new",   "almost new", "used", "slightly scratched", "scratched", "highly scratched", "old", "rotten",     "nearly decayed"}
GenericDuraEn[3] = {"brand new", "new",   "almost new", "used", "slightly frayed",    "frayed",    "highly frayed",    "old", "threadbare", "ragged"        }
GenericDuraEn[4] = {"sparkling", "shiny", "glittery",   "used", "slightly scraped",   "scraped",   "highly scraped",   "old", "tarnished",  "fragile"       }

GenericDuraLm = {90, 80, 70, 60, 50, 40, 30, 20, 10, 0}

NONE = 0
METAL = 1
WOOD = 2
CLOTH = 3
JEWELLERY = 4

WeaponType = {}
WeaponType[WeaponStruct.slashing] = {de = "Hiebwaffe", en = "Slashing Weapon", skill = Character.slashingWeapons}
WeaponType[WeaponStruct.concussion] = {de = "Schlagwaffe", en = "Concussion Weapon", skill = Character.concussionWeapons}
WeaponType[WeaponStruct.puncture] = {de = "Stichwaffe", en = "Puncture Weapon", skill = Character.punctureWeapons}
WeaponType[WeaponStruct.slashingTwoHand] = WeaponType[WeaponStruct.slashing]
WeaponType[WeaponStruct.concussionTwoHand] = WeaponType[WeaponStruct.concussion]
WeaponType[WeaponStruct.punctureTwoHand] = WeaponType[WeaponStruct.puncture]
WeaponType[WeaponStruct.firearm] = {de = "Distanzwaffe", en = "Distance Weapon", skill = Character.distanceWeapons}
WeaponType[WeaponStruct.arrow] = {de = "Pfeil", en = "Arrow", skill = Character.distanceWeapons}
WeaponType[WeaponStruct.bolt] = {de = "Bolzen", en = "Bolt", skill = Character.distanceWeapons}
WeaponType[WeaponStruct.stone] = {de = "Munition", en = "Ammunition", skill = Character.distanceWeapons}
WeaponType[WeaponStruct.stave] = {de = "Zauberstab", en = "Wand"}
WeaponType[WeaponStruct.shield] = {de = "Schild", en = "Shield", skill = Character.parry}

ArmourType = {}
ArmourType[ArmorStruct.clothing] = {de = "Kleidung", en = "Clothing"}
ArmourType[ArmorStruct.general] = {de = "Allgemeine R�stung", en = "General Armour"}
ArmourType[ArmorStruct.light] = {de = "Leichte R�stung", en = "Light Armour", skill = Character.lightArmour}
ArmourType[ArmorStruct.medium] = {de = "Mittlere R�stung", en = "Medium Armour", skill = Character.mediumArmour}
ArmourType[ArmorStruct.heavy] = {de = "Schwere R�stung", en = "Heavy Armour", skill = Character.heavyArmour}
ArmourType[ArmorStruct.juwellery] = {de = "Schmuck", en = "Jewellery"}

function GenerateLookAt(user, item, material)
    if user == nil then
        debug("Sanity check failed, no valid character supplied.")
        return
    end
    
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    material = material or NONE

    if material < NONE or material > JEWELLERY then
        debug("Sanity check failed, no valid material supplied.")
    end
    
    local itemCommon = world:getItemStatsFromId(item.id)
    local lookAt = ItemLookAt()
    
    local isGerman = user:getPlayerLanguage() == Player.german
    
    local usedName
    if isGerman then
        usedName = item:getData("nameDe")
    else
        usedName = item:getData("nameEn")
    end
    if base.common.IsNilOrEmpty(usedName) then
        usedName = world:getItemName(item.id, user:getPlayerLanguage())
    end

    lookAt.name = TitleCase(usedName)
    
    local rarenessData = item:getData("rareness")
    if rarenessData == nil then
        lookAt.rareness = ItemLookAt.commonItem
    else
        local value = tonumber(rarenessData)
        if value ~= nil then
            lookAt.rareness = value
        end
    end
    
    local usedDescription
    if isGerman then
        usedDescription = item:getData("descriptionDe")
    else
        usedDescription = item:getData("descriptionEn")
    end
    
    if not base.common.IsNilOrEmpty(usedDescription) then
        lookAt.description = usedDescription
    end
    
    if itemCommon.AgeingSpeed < 255 and itemCommon.Weight < 30000 then
        local craftedByData = item:getData("craftedBy")
        
        if not base.common.IsNilOrEmpty(craftedByData) then
            lookAt.craftedBy = craftedByData
        end
        
        lookAt.weight = item.number * itemCommon.Weight
        
        if not base.money.IsCurrency(item.id) then
            lookAt.worth = 20*item.number * itemCommon.Worth
        end
        
        if material > NONE then
            local itemDura = math.mod(item.quality, 100)
            local itemQual = (item.quality - itemDura) / 100
            
            local duraIndex
            for i, duraLimit in pairs(GenericDuraLm) do
                if itemDura >= duraLimit then
                    duraIndex = i
                    break
                end
            end

            local qualIndex = 10 - itemQual
            
            if qualIndex < 1 then
                qualIndex = 1
            elseif qualIndex > 10 then
                qualIndex = 10
            end
            
            if (isGerman) then
                lookAt.qualityText = GenericQualDe[qualIndex]
                lookAt.durabilityText = GenericDuraDe[material][duraIndex]
            else
                lookAt.qualityText = GenericQualEn[qualIndex]
                lookAt.durabilityText = GenericDuraEn[material][duraIndex]
            end
            
            lookAt.durabilityValue = itemDura + 1
        end

        lookAt = AddWeaponOrArmourType(lookAt, user, item.id)

        lookAt.diamondLevel = GetGemLevel(item, "magicalDiamond")
        lookAt.emeraldLevel = GetGemLevel(item, "magicalEmerald")
        lookAt.rubyLevel = GetGemLevel(item, "magicalRuby")
        lookAt.sapphireLevel = GetGemLevel(item, "magicalSapphire")
        lookAt.amethystLevel = GetGemLevel(item, "magicalAmethyst")
        lookAt.obsidianLevel = GetGemLevel(item, "magicalObsidian")
        lookAt.topazLevel = GetGemLevel(item, "magicalTopaz")
        lookAt.bonus = base.gems.getGemBonus(item)
    end
    
    return lookAt
end

function GenerateItemLookAtFromId(user, itemId, stackSize, data)
    local lookAt = ItemLookAt()
    local isGerman = user:getPlayerLanguage() == Player.german
    data = data or {}
    
    local usedName
    if isGerman then
        usedName = data["nameDe"]
    else
        usedName = data["nameEn"]
    end
    if base.common.IsNilOrEmpty(usedName) then
        usedName = world:getItemName(itemId, user:getPlayerLanguage())
    end
    lookAt.name = TitleCase(usedName)
    
    local rarenessData = data["rareness"]
    if rarenessData == nil then
        lookAt.rareness = ItemLookAt.commonItem
    else
        local value = tonumber(rarenessData)
        if value ~= nil then
            lookAt.rareness = value
        end
    end
    
    local usedDescription
    if isGerman then
        usedDescription = data["descriptionDe"]
    else
        usedDescription = data["descriptionEn"]
    end
    
    if not base.common.IsNilOrEmpty(usedDescription) then
        lookAt.description = usedDescription
    end

    local itemCommon = world:getItemStatsFromId(itemId)
    lookAt.weight = stackSize * itemCommon.Weight
    lookAt.worth = 20*stackSize * itemCommon.Worth
    
    lookAt = AddWeaponOrArmourType(lookAt, user, itemId)

    return lookAt
end

function TitleCase(name)
    local function tchelper(first, rest)
        return first:upper()..rest:lower()
    end
    
    return name:gsub("([%a������])([%w�������_']*)", tchelper)
end

function AddWeaponOrArmourType(lookAt, user, itemId)
    local armourfound, armour = world:getArmorStruct(itemId)
    local weaponfound, weapon = world:getWeaponStruct(itemId)

    if weaponfound then
        lookAt = AddTypeAndLevel(lookAt, user, WeaponType, weapon.WeaponType, weapon.Level)
    else
        if armourfound then
            lookAt = AddTypeAndLevel(lookAt, user, ArmourType, armour.Type, armour.Level)
        end
    end
    
    return lookAt
end

function AddTypeAndLevel(lookAt, user, nameAndSkillTable, itemType, itemLevel)
    lookAt.level = itemLevel
    local nameAndSkill = nameAndSkillTable[itemType]
    local skill = 100
    
    if nameAndSkill.skill then
        skill = user:getSkill(nameAndSkill.skill)
    end
    
    if user:getPlayerLanguage() == Player.german then
        lookAt.type = nameAndSkill.de
    else
        lookAt.type = nameAndSkill.en
    end

    lookAt.usable = skill >= itemLevel
    
    return lookAt
end

function GetGemLevel(item, dataEntry)
    local dataEntry = item:getData(dataEntry)
    if dataEntry == nil then
        return 0
    end
    
    local value = tonumber(dataEntry)
    if value == nil then
        return 0
    end
    
    if value < 0 or value > 10 then
        return 0
    else
        return value
    end
end

function GetItemDescription(User, Item, material, Weapon, Priest)
    return GenerateLookAt(User, Item, material)
end

--- Apply a special name to a item. The name is stored in the data values.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
-- @param german the german name this item is supposed to display
-- @param english the english name this item is supposed to display
function SetSpecialName(item, german, english)    
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    if german == nil or english == nil then
        debug("Sanity check failed, no valid item names supplied.")
        return
    end
    
    item:setData("nameDe", german)
    item:setData("nameEn", english)
end

--- Remove the special name from a item. This changes the data values of the item.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
function UnsetSpecialName(item)
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    item:setData("nameDe", "")
    item:setData("nameEn", "")
end

--- Apply a special description to the item. The description is stored in the data values.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
-- @param german the german description this item is supposed to display
-- @param english the english description this item is supposed to display
function SetSpecialDescription(item, german, english)    
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    if german == nil or english == nil then
        debug("Sanity check failed, no valid item descriptions supplied.")
        return
    end
    
    item:setData("descriptionDe", german)
    item:setData("descriptionEn", english)
end

--- Remove the special description from a item. This changes the data values of the item.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
function UnsetSpecialDescription(item)
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    item:setData("descriptionDe", "")
    item:setData("descriptionEn", "")
end

--- Change the rareness of a item. The rareness value is stored in the data values.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
-- @param rare the rareness value, valid values are: ItemLookAt.commonItem, ItemLookAt.uncommonItem, ItemLookAt.rareItem, ItemLookAt.epicItem
function SetItemRareness(item, rare)    
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    if rare ~= ItemLookAt.commonItem and rare ~= ItemLookAt.uncommonItem and rare ~= ItemLookAt.rareItem and rare ~= ItemLookAt.epicItem then
        debug("Sanity check failed, no valid item rareness supplied")
        return
    end
    
    item:setData("rareness", rare)
end

--- Set the item rareness back to its default value. This changes the data values of the item.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
function UnsetItemRareness(item)
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    item:setData("rareness", "")
end

--- Set or change the name of the crafter who created this item. The rareness value is stored in the data values.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
-- @param name the name of the person who created this item
function SetItemCraftedBy(item, name)    
    if item == nil then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    if name == nil then
        debug("Sanity check failed, no valid crafter name supplied.")
        return
    end
    
    item:setData("craftedBy", name)
end

--- Remove the name of the person who created this item from the item. This changes the data values of the item.
--  This function does NOT call world:changeItem()! You have to do this yourself.
--
-- @param item the item that is supposed to receive the new values
function UnsetItemCraftedBy(item)
    if (item == nil) then
        debug("Sanity check failed, no valid item supplied.")
        return
    end
    
    item:setData("craftedBy", "")
end
