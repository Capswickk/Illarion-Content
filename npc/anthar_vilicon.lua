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
--------------------------------------------------------------------------------
-- NPC Name: Anthar Vilicon                                           Cadomyr --
-- NPC Job:  Chancellor                                                       --
--                                                                            --
-- NPC Race: elf                        NPC Position:  117, 528, 0            --
-- NPC Sex:  male                       NPC Direction: south                  --
--                                                                            --
-- Author:   Estralis Seborian                                                --
--                                                     easyNPC Parser v1.23.1 --
--------------------------------------------------------------------------------

--[[SQL
INSERT INTO "npc" ("npc_type", "npc_posx", "npc_posy", "npc_posz", "npc_faceto", "npc_name", "npc_script", "npc_sex", "npc_hair", "npc_beard", "npc_hairred", "npc_hairgreen", "npc_hairblue", "npc_skinred", "npc_skingreen", "npc_skinblue") 
VALUES (3, 117, 528, 0, 4, 'Anthar Vilicon', 'npc.anthar_vilicon', 0, 2, 0, 85, 107, 47, 255, 218, 185);
---]]

require("npc.base.basic")
require("npc.base.condition.chance")
require("npc.base.condition.item")
require("npc.base.condition.language")
require("npc.base.condition.quest")
require("npc.base.condition.town")
require("npc.base.consequence.deleteitem")
require("npc.base.consequence.inform")
require("npc.base.consequence.item")
require("npc.base.consequence.money")
require("npc.base.consequence.quest")
require("npc.base.consequence.rankpoints")
require("npc.base.talk")
module("npc.anthar_vilicon", package.seeall)

function initNpc()
mainNPC = npc.base.basic.baseNPC();
local talkingNPC = npc.base.talk.talkNPC(mainNPC);
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Help");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Game Help] This NPC is Anthar Vilicon the chancellor. Keywords: Hello, Mission, Chancellor, Cadomyr, Elf."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hilfe");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Spielhilfe] Dieser NPC ist Anthar Vilicon der Kanzler. Schl�sselw�rter: Hallo, Mission, Kanzler, Cadomyr, Elf."));
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hello");
talkEntry:addTrigger("Greet");
talkEntry:addTrigger("Hail");
talkEntry:addTrigger("Good day");
talkEntry:addTrigger("Good morning");
talkEntry:addTrigger("Good evening");
talkEntry:addTrigger("Good night");
talkEntry:addResponse("Be greeted. A good day for a good deed - maybe I have a mission for you.");
talkEntry:addResponse("Hail! Welcome to the Palace of the Edwards. Do not dare to disrespect the Queen and you life will be a long one.");
talkEntry:addResponse("Chancellor Vilicon greets you. You came here for your orders, I assume? The administration of Cadomyr appreciates your assistance.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gr��");
talkEntry:addTrigger("Gru�");
talkEntry:addTrigger("Guten Morgen");
talkEntry:addTrigger("Guten Tag");
talkEntry:addTrigger("Guten Abend");
talkEntry:addTrigger("Gute Nacht");
talkEntry:addTrigger("Mahlzeit");
talkEntry:addTrigger("Tach");
talkEntry:addTrigger("Moin");
talkEntry:addTrigger("Mohltied");
talkEntry:addResponse("Seid gegr��t. Ein guter Tag f�r eine gute Tat - vielleicht habe ich eine Mission f�r euch.");
talkEntry:addResponse("Willkommen im Palast der Edwards. Gehorcht der K�nigin und euer Leben wird ein langes sein.");
talkEntry:addResponse("Kanzler Vilicon gr��t euch. Ihr kamt wegen eurer Befehle her, nehme ich an. Die Verwaltung Cadomyrs begr��t eure Unterst�tzung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Be greeted. A good day for a good deed - maybe I have a mission for you.");
talkEntry:addResponse("Hail! Welcome to the Palace of the Edwards. Do not dare to disrespect the Queen and you life will be a long one.");
talkEntry:addResponse("Chancellor Vilicon greets you. You came here for your orders, I assume? The administration of Cadomyr appreciates your assistance.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Hiho");
talkEntry:addTrigger("Hallo");
talkEntry:addTrigger("Hey");
talkEntry:addTrigger("Greeb");
talkEntry:addResponse("Seid gegr��t. Ein guter Tag f�r eine gute Tat - vielleicht habe ich eine Mission f�r euch.");
talkEntry:addResponse("Willkommen im Palast der Edwards. Gehorcht der K�nigin und euer Leben wird ein langes sein.");
talkEntry:addResponse("Kanzler Vilicon gr��t euch. Ihr kamt wegen eurer Befehle her, nehme ich an. Die Verwaltung Cadomyrs begr��t eure Unterst�tzung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Farewell");
talkEntry:addTrigger("Bye");
talkEntry:addTrigger("Fare well");
talkEntry:addTrigger("See you");
talkEntry:addResponse("Go with the gods' blessing.");
talkEntry:addResponse("May the gods protect you as they protect her Majesty.");
talkEntry:addResponse("Farewell and best of luck.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Tsch��");
talkEntry:addTrigger("Tsch�ss");
talkEntry:addTrigger("Wiedersehen");
talkEntry:addTrigger("Gehab wohl");
talkEntry:addResponse("Gehet mit dem Segen der G�tter.");
talkEntry:addResponse("M�gen die G�tter euch so besch�tzen, wie sie die K�nigin beh�ten.");
talkEntry:addResponse("Gehabt euch wohl und alles gute.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Go with the gods' blessing.");
talkEntry:addResponse("May the gods protect you as they protect her Majesty.");
talkEntry:addResponse("Farewell and best of luck.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ciao");
talkEntry:addTrigger("Adieu");
talkEntry:addTrigger("Au revoir");
talkEntry:addTrigger("Farebba");
talkEntry:addResponse("Gehet mit dem Segen der G�tter.");
talkEntry:addResponse("M�gen die G�tter euch so besch�tzen, wie sie die K�nigin beh�ten.");
talkEntry:addResponse("Gehabt euch wohl und alles gute.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("How are you");
talkEntry:addTrigger("How feel");
talkEntry:addTrigger("How do you do");
talkEntry:addResponse("My health is not an issue here. I am an elf as you might see.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wie geht");
talkEntry:addTrigger("Wie f�hlst");
talkEntry:addTrigger("Wie ist es ergangen");
talkEntry:addTrigger("Wie Befind");
talkEntry:addResponse("Meine Gesundheit spielt keine Rolle. Ich bin ein Elf, wie ihr seht.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("your name");
talkEntry:addTrigger("who are you");
talkEntry:addTrigger("who art thou");
talkEntry:addResponse("I am Anthar Vilicon, Chancellor of Cadomyr. I am the head of administration and if you are loyal, I have a mission for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("ihr name");
talkEntry:addTrigger("dein name");
talkEntry:addTrigger("wer bist du");
talkEntry:addTrigger("wer seid ihr");
talkEntry:addTrigger("wie hei�t");
talkEntry:addResponse("Ich bin Anthar Vilicon, Kanzler Cadomyrs. Ich bin das Oberhaupt der Administration und wenn ihr loyal seid, dann habe ich eine Mission f�r euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Farewell and my best 'regards' to your Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Hinfort mit euch und meine besten 'Gr��e' an euren Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Farewell and my best 'regards' to your Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(3));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Hinfort mit euch und meine besten 'Gr��e' an euren Don.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("When you get back to Runewick, could you greet Elvaine Morgan? Tell him he should reconsider the offer I gave him twelve years ago.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Wenn ihr wieder nach Runewick kommt, so gr��t doch Elvaine Morgan von mir. Er m�ge nochmal �ber mein Angebot nachdenken, dass ich im vor zw�lf Jahren machte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addTrigger("order");
talkEntry:addResponse("When you get back to Runewick, could you greet Elvaine Morgan? Tell him he should reconsider the offer I gave him twelve years ago.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.town.town(2));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Wenn ihr wieder nach Runewick kommt, so gr��t doch Elvaine Morgan von mir. Er m�ge nochmal �ber mein Angebot nachdenken, dass ich im vor zw�lf Jahren machte.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(120, "~=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I don't have a mission for you at this moment. Please come back later.");
talkEntry:addResponse("I appreciate that you want to do deeds in the name of her Majesty, but currently, there are no orders for you.");
talkEntry:addResponse("Your words honour you and the day will come when you can prove your loyality to the throne by deeds, but this day is not today. Please come back later.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(120, "~=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Derzeit gibt es keine Mission f�r euch. Kommt bitte sp�ter wieder.");
talkEntry:addResponse("Ich sch�tze eure Bereitschaft, Taten im Namen der K�nigin zu vollbringen. Derzeit habe ich jedoch keine Befehle f�r euch.");
talkEntry:addResponse("Eure Worte ehren euch und der Tag wird kommen, an dem ihr euren Worten Taten folgen lassen k�nnt und eure Loyalit�t dem Thron gegen�ber beweisen k�nnt. Aber dieser Tag ist nicht heute, kommt bitte sp�ter wieder.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(120, "~=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I don't have a mission for you at this moment. Please come back later.");
talkEntry:addResponse("I appreciate that you want to do deeds in the name of her majesty, but currently, there are no orders for you.");
talkEntry:addResponse("Your words honour you and the day will come when you can prove your loyality to the throne by deeds, but this day is not today. Please come back later.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(120, "~=", 0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Derzeit gibt es keine Mission f�r euch. Kommt bitte sp�ter wieder.");
talkEntry:addResponse("Ich sch�tze eure Bereitschaft, Taten im Namen der K�nigin zu vollbringen. Derzeit habe ich jedoch keine Befehle f�r euch.");
talkEntry:addResponse("Eure Worte ehren euch und der Tag wird kommen, an dem ihr euren Worten Taten folgen lassen k�nnt und eure Loyalit�t dem Thron gegen�ber beweisen k�nnt. Aber dieser Tag ist nicht heute, kommt bitte sp�ter wieder.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 1));
talkEntry:addResponse("Your mission today: The Queen desires sweet fruit and I will not disappoint her. Bring me five strawberries as fast as possible and I'll mention your name in front of her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 1));
talkEntry:addResponse("Eure heutige Mission: Die K�nigin verlang nach s��en Fr�chten und ich werde sie nicht entt�uschen. Bringt mir f�nf Erdbeeren und ich werde euren Namen ihr gegen�ber lobend erw�hnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 1));
talkEntry:addResponse("Your mission today: The Queen desires sweet fruit and I will not disappoint her. Bring five strawberries as fast as possible and I'll mention your name in front of her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 1));
talkEntry:addResponse("Eure heutige Mission: Die K�nigin verlang nach s��en Fr�chten und ich werde sie nicht entt�uschen. Bringt mir f�nf Erdbeeren und ich werde euren Namen ihr gegen�ber lobend erw�hnen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded two silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(151, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Very good. I am authorised to grant you a small reward. The Queen will enjoy these fruits!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zwei Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(151, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Sehr gut. Ich bin berechtigt, euch eine kleine Belohnung zu zahlen. Die K�nigin wird sich �ber diese Fr�chte sicher freuen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I told you to bring five strawberries. Her Majesty has to rule a whole realm and you fail in such a simple task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe euch befohlen, f�nf Erdbeeren zu beschaffen. Ihre Majest�t regiert ein ganzes Reich und ihr versagt bei so einer einfachen Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I told you to bring five strawberries. Her Majesty has to rule a whole realm and you fail in such a simple task?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 1));
talkEntry:addCondition(npc.base.condition.item.item(151, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe euch befohlen, f�nf Erdbeeren zu beschaffen. Ihre Majest�t regiert ein ganzes Reich und ihr versagt bei so einer einfachen Aufgabe?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.26));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 2));
talkEntry:addResponse("Cadomyr's economy is based on sand. Very funny, I know - but take a look at the treasury and you won't laugh anymore. A shipment of quartz sand abroad lacks twenty piles. Please provide them sometime soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.26));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 2));
talkEntry:addResponse("Cadomyrs Wirtschaft ist auf Sand gebaut. Sehr witzig, ich wei� - aber wenn ihr einen Blick in die Schatzkammer werfen d�rftet, w�rde euch das Lachen vergehen. Einer Lieferung Quartzsand ins Ausland fehlen noch zwanzig Haufen. Beschafft sie bitte m�glichst bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.26));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 2));
talkEntry:addResponse("Cadomyr's economy is based on sand. Very funny, I know - but take a look at the treasury and you won't laugh anymore. A shipment of quartz sand abroad lacks twenty piles. Please provide them sometime soon.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.26));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 2));
talkEntry:addResponse("Cadomyrs Wirtschaft ist auf Sand gebaut. Sehr witzig, ich wei� - aber wenn ihr einen Blick in die Schatzkammer werfen d�rftet, w�rde euch das Lachen vergehen. Einer Lieferung Quartzsand ins Ausland fehlen noch zwanzig Haufen. Beschafft sie bitte m�glichst bald.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(316, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a shovel. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(316, 20, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(24, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Very good! The shipment can leave Cadomyr in time. Next time, be a bit faster. Here you have a shovel, that might be helpful.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(316, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine Schaufel. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(316, 20, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(24, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Sehr gut! Die Lieferung kann Cadomyr p�nktlich verlassen. Aber n�chstes mal: Seid noch schneller. Hier, nehmt diese Schaufel, sie d�rfte euch helfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(316, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The ship cannot wait much longer. Twenty piles of quartz sand are needed for the export.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(316, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Das Schiff kann nicht mehr lange warten. Zwanzig Haufen Quarzsand werden f�r den Export ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(316, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The ship cannot wait much longer. Twenty piles of quartz sand are needed for the export.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 2));
talkEntry:addCondition(npc.base.condition.item.item(316, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Das Schiff kann nicht mehr lange warten. Zwanzig Haufen Quarzsand werden f�r den Export ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.56));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 3));
talkEntry:addResponse("I have a special assignement for you. Queen Rosaline wants to send a diadem to her grand aunt in Albar as present. For that diadem, three cut rubies are needed. You are the one who will get them!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.56));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 3));
talkEntry:addResponse("Ich habe eine besondere Aufgabe f�r euch. K�nigin Rosaline m�chte ein Diadem als Geschenk an ihre Gro�tante in Albar senden. F�r dieses Diadem werden noch drei geschliffene Rubine ben�tigt. Ihr werdet derjenige sein, der sie besorgt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.56));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 3));
talkEntry:addResponse("I have a special assignement for you. Queen Rosaline wants to send a diadem to her grand nice in Albar as present. For that diadem, three cut rubies are needed. You are the one who will get them!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.56));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 3));
talkEntry:addResponse("Ich habe eine besondere Aufgabe f�r euch. K�nigin Rosaline m�chte ein Diadem als Geschenk an ihre Gro�tante in Albar senden. F�r dieses Diadem werden noch drei geschliffene Rubine ben�tigt. Ihr werdet derjenige sein, der sie besorgt!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(46, "all", ">", 2, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded six silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(46, 3, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 24));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("I thank you. The diadem, albeit not the first present this year, will reduce the tensions between Cadomyr and Albar. Here, have this little compensation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(46, "all", ">", 2, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst sechs Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(46, 3, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 24));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ich danke euch. Das Diadem, auch wenn es nicht das erste Geschenk in diesem Jahr ist, wird die Spannung zwischen Cadomyr und Albar reduzieren. Hier, nehmt diese Entlohnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(46, "all", "<", 3, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Just imagine what happens when the Queen finds out you did not bring the three cut rubies for her grand aunt's diadem in time... better hurry!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(46, "all", "<", 3, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Stellt euch nur mal vor, was passiert, wenn die K�nigin herausfindet, dass ihr es seid, der die drei geschliffenen Rubine f�r das Diadem ihrer Gro�tante nicht besorgen konntet... beilt euch besser.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(46, "all", "<", 3, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Just imagine what happens when the Queen finds out you did not bring the three cut rubies for her grand aunt's diadem in time... better hurry!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 3));
talkEntry:addCondition(npc.base.condition.item.item(46, "all", "<", 3, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Stellt euch nur mal vor, was passiert, wenn die K�nigin herausfindet, dass ihr es seid, der die drei geschliffenen Rubine f�r das Diadem ihrer Gro�tante nicht besorgen konntet... beilt euch besser.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.88));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 4));
talkEntry:addResponse("#me points at the ceiling: 'As administrator of the palace, I even have to take care of leaks in the ceiling. Did you see that hole? To fix it, the artisans need ten cherry wood boards. Please provide them and the Queen will be grateful.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(5.88));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 4));
talkEntry:addResponse("#me deutet zur Decke: 'Als Verwalter des Palastes muss ich mich sogar um L�cher in der Decke k�mmern, habt ihr jenes gesehen? Die Artisanen brauchen zehn Kirschholzbretter, um es auszubessern. Bitte besorgt diese und der Dank der K�nigin ist euch gewiss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.88));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 4));
talkEntry:addResponse("#me points at the ceiling: 'As administrator of the palace, I even have to take care of leaks in the ceiling. Did you see that hole? To fix it, the artisans need ten cherry wood boards. Please provide them and the Queen will be grateful.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(5.88));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 4));
talkEntry:addResponse("#me deutet zur Decke: 'Als Verwalter des Palastes muss ich mich sogar um L�cher in der Decke k�mmern, habt ihr jenes gesehen? Die Artisanen brauchen zehn Kirschholzbretter, um es auszubessern. Bitte besorgt diese und der Dank der K�nigin ist euch gewiss.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(545, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(545, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("With that cherry wood, the artisans can fix the ceiling. I don't want to think about what could have happened when it rains the next time...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(545, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(545, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Mit diesem Kirschholz k�nnen die Artisanen die Decke ausbessern. Ich m�chte mir gar nicht ausmalen, was geschehen w�re, wenn es das n�chste mal geregnet h�tte...");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(545, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("If there is one thing the Queen hates, it is a water drop falling from the ceiling and hitting her hair. Bring ten cherry wood boards to fix the ceiling before next rainfall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(545, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Wenn die K�nigin etwas ha�t, dann ist das ein Wassertropfen, der von der Decke auf ihr Haar f�llt. Bringt zehn Bretter Kirscholz um das Dach auszubessern, bevor der Regen einsetzt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(545, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("If there is one thing the Queen hates, it is a water drop falling from the ceiling and hitting her hair. Bring ten cherry wood boards to fix the ceiling before next rainfall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 4));
talkEntry:addCondition(npc.base.condition.item.item(545, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Wenn die K�nigin etwas ha�t, dann ist das ein Wassertropfen, der von der Decke auf ihr Haar f�llt. Bringt zehn Bretter Kirscholz um das Dach auszubessern, bevor der Regen einsetzt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(6.25));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 5));
talkEntry:addResponse("A new maidservant recently started working for her Majesty. To dress her properly, a white heraldic dress is needed. Quick, run to one of the tailors and obtain one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(6.25));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 5));
talkEntry:addResponse("Eine neue Zofe steht seit kurzem im Dienste ihrer Majest�t. Um sie geb�hrend einzukleiden wird ein wei�es Wappenkleid ben�tigt. Los, lauft zu einem Schneider und besorgt eines.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(6.25));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 5));
talkEntry:addResponse("A new maidservant recently started working for her Majesty. To dress her properly, a white heraldic dress is needed. Quick, run to one of the tailors and obtain one.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(6.25));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 5));
talkEntry:addResponse("Eine neue Zofe steht seit kurzem im Dienste ihrer Majest�t. Um sie geb�hrend einzukleiden wird ein wei�es Wappenkleid ben�tigt. Los, lauft zu einem Schneider und besorgt eines.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(852, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a golden ring. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(852, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(235, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Excellent, that dress is even the right size. This ring will remind you every day of your service for your Queen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(852, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen goldenen Ring. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(852, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(235, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Exzellent, das Kleid hat sogar die richtige Gr��e. Dieser Ring soll euch ewig an eure Dienste f�r die K�nigin erinnern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(852, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The maidservant is still clad in rags! This way, I cannot let her serve the Queen. Please, bring a white heraldic dress for the maidservant and I have a special reward for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(852, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die Zofe ist noch immer in Lumpen geh�llt. So kann sie doch nicht der K�nigin dienen. Besorgt bitte ein wei�es Wappenkleid und ich werde eine besondere Belohnung f�r euch haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(852, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The maidservant is still clad in rags! This way, I cannot let her serve the Queen. Please, bring a white heraldic dress for the maidservant and I have a special reward for you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 5));
talkEntry:addCondition(npc.base.condition.item.item(852, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die Zofe ist noch immer in Lumpen geh�llt. So kann sie doch nicht der K�nigin dienen. Besorgt bitte ein wei�es Wappenkleid und ich werde eine besondere Belohnung f�r euch haben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(6.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 6));
talkEntry:addResponse("Today's mission is a little more important: The town wall of Cadomyr is in need of constant repair. There is a small amount of damage to the southern wall, nothing serious, but still, twenty bricks are needed to fix it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(6.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 6));
talkEntry:addResponse("Die heutige Mission ist etwas wichtiger: Die Stadtmauer Cadomyrs muss st�ndig in Schuss gehalten werden. In der S�dmauer ist ein kleiner Schaden, nichts schlimmes, aber dennoch werden zwanzig Ziegelsteine ben�tigt, um sie auszubessern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(6.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 6));
talkEntry:addResponse("Today's mission is a little more important: The town wall of Cadomyr is in need of constant repair. There is a small amount of damage to the southern wall, nothing serious, but still, twenty bricks are needed to fix it.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(6.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 6));
talkEntry:addResponse("Die heutige Mission ist etwas wichtiger: Die Stadtmauer Cadomyrs muss st�ndig in Schuss gehalten werden. In der S�dmauer ist ein kleiner Schaden, nichts schlimmes, aber dennoch werden zwanzig Ziegelsteine ben�tigt, um sie auszubessern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 6));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a bag. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2588, 20, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(97, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 24));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("The masons will immediately start fixing the wall with your bricks. Have this bag, it might help you in future missions.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 6));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine Tasche. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2588, 20, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(97, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 24));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Die Maurer werden sofort damit beginnen, die Mauer mit euren Ziegeln auszubessern. Nehmt diesen Sack, er wird euch in zuk�nftigen Missionen gute Dienste erweisen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 6));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Cadomyr's enemies are just waiting for a sign of weakness. We must not show any, so twenty bricks are what we need to fix the small breach in the town wall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 6));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Cadomyrs Feinde warten doch nur auf ein Zeichen der Schw�che. Wir d�rfen keines zeigen; zwanzig Ziegelsteine werden ben�tigt, um die kleine Bresche in der Stadtmauer zu reparieren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 6));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Cadomyr's enemies are just waiting for a sign of weakness. We must not show any, so twenty bricks are what we need to fix the small breach in the wall.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 6));
talkEntry:addCondition(npc.base.condition.item.item(2588, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Cadomyrs Feinde warten doch nur auf ein Zeichen der Schw�che. Wir d�rfen keines zeigen; zwanzig Ziegelsteine werden ben�tigt, um die kleine Bresche in der Stadtmauer zu reparieren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(7.14));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 7));
talkEntry:addResponse("You! I just checked the armoury and found a long sword missing! Please investigate this theft - either, bring me the head of the thief or a newly crafted long sword as replacement.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(7.14));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 7));
talkEntry:addResponse("Ihr da! Ich habe gerade die Waffenkammer �berpr�ft und festgestellt, dass ein Langschwert fehlt. Bitte untersucht diesen Diebstahl - entweder, ihr bringt mir den Kopf des Diebes oder ein neues Langschwert als Ersatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(7.14));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 7));
talkEntry:addResponse("You! I just checked the armoury and found a sword missing! Please investigate this theft - either, bring me the head of the thief or a newly crafted long sword as replacement.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(7.14));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 7));
talkEntry:addResponse("Ihr da! Ich habe gerade die Waffenkammer �berpr�ft und festgestellt, dass ein Langschwert fehlt. Bitte untersucht diesen Diebstahl - entweder, ihr bringt mir den Kopf des Diebes oder ein neues Langschwert als Ersatz.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2701, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 12 silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2701, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ah, a new long sword for the armoury. I guess we'll never find out who stole one, most probably a minion of Baron Hastings.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2701, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 12 Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2701, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ah, ein neues Langschwert f�r die Waffenkammer. Ich nehme an, wir werden nie herausfinden, wer eines stahl. Wahrscheinlich einer von Baron Hastings Handlangern.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2701, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The armoury is not fully equipped, a long sword is missing. A long sword that might save Rosaline's life in the right hands - provide a new one and maybe those hands will be yours one day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2701, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die Waffenkammer ist nicht komplett best�ckt, es fehlt ein Langschwert. Ein Langschwert, welches in den rechten H�nden Rosalines Leben retten kann - bring ein neues und vielleicht werden diese H�nde einst die eurigen sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2701, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The armoury is not fully equipped, a long sword is missing. A long sword that might save Rosaline's life in the right hands - provide a new one and maybe those hands will be yours one day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 7));
talkEntry:addCondition(npc.base.condition.item.item(2701, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die Waffenkammer ist nicht komplett best�ckt, es fehlt ein Langschwert. Ein Langschwert, welches in den rechten H�nden Rosalines Leben retten kann - bring ein neues und vielleicht werden diese H�nde einst die eurigen sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(7.69));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 8));
talkEntry:addResponse("You know what makes a glorious palace? Decoration. The Queen likes firnis blossoms and she likes many of them. Bring me fifteen of them so I can decorate her chamber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(7.69));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 8));
talkEntry:addResponse("Wi�t ihr, was einen Palast erst so richtig prunkvoll macht? Dekoration. Die K�nigin liebt Firnisbl�ten �ber alles und sie mag sie in Massen. Bringt bitte f�nfzehn Bl�ten, so dass ich ihre Kammer ausschm�cken kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(7.69));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 8));
talkEntry:addResponse("You know what makes a glorious palace? Decoration. The Queen likes firnis blossoms and she likes many of them. Bring me fifteen of them so I can decorate her chamber.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(7.69));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 8));
talkEntry:addResponse("Wi�t ihr, was einen Palast erst so richtig prunkvoll macht? Dekoration. Die K�nigin liebt Firnisbl�ten �ber alles und sie mag sie in Massen. Bringt bitte f�nfzehn Bl�ten, so dass ich ihre Kammer ausschm�cken kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 8));
talkEntry:addCondition(npc.base.condition.item.item(148, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a bowl of mushroom soup. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(148, 15, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2456, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ah, firnis blossoms, that'll be a great surprise for her majesty. To recover from your journey, have this soup. Regain some strength for your next mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 8));
talkEntry:addCondition(npc.base.condition.item.item(148, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine Pilzsuppe. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(148, 15, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2456, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ah, Firnisbl�ten, das wird eine sch�ne �berraschung f�r ihre Majest�t. Nehmt diese Suppe zu euch, um euch von eurer Reise zu erholen und Kraft f�r die n�chste Mission zu sammeln.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 8));
talkEntry:addCondition(npc.base.condition.item.item(148, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Decoration of a palace really separates us from the barbarians. A Queen looks best with a flower in her hair, no? So, please bring fifteen firnis blossoms.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 8));
talkEntry:addCondition(npc.base.condition.item.item(148, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Dekoration eines Palastes ist etwas, was uns von den Barbaren unterscheidet. Und eine K�nigin sieht doch immernoch am besten aus mit einer Blume im Haar, richtig? Also bringt mir f�nfzehn Firnisbl�ten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 8));
talkEntry:addCondition(npc.base.condition.item.item(148, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Decoration of a palace really separates us from the barbarians. A Queen looks best with a flower in her hair, no? So, please bring fifteen firnis blossoms.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 8));
talkEntry:addCondition(npc.base.condition.item.item(148, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Dekoration eines Palastes ist etwas, was uns von den Barbaren unterscheidet. Und eine K�nigin sieht doch immernoch am besten aus mit einer Blume im Haar, richtig? Also bringt mir f�nfzehn Firnisbl�ten.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(8.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 9));
talkEntry:addResponse("The cavalary of Cadomyr's knights has always been feared by our enemies. Today, you'll learn that a cavalary needs more than a lance; the horses need to be fed every day. It is your job to bring ten carrots for the royal horses.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(8.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 9));
talkEntry:addResponse("Die Kavallerie der Ritter Cadomyrs wurde schon immer von unseren Feinden gef�rchtet. Heute lernt ihr, dass zu einer Kavallerie mehr geh�rt als Lanzen; die Pferde m�ssen jeden Tag gef�ttert werden. Eure Aufgabe ist es, zehn Karotten f�r das k�nigliche Gest�t herzubringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(8.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 9));
talkEntry:addResponse("The cavalary of Cadomyr's knights has always been feared by our enemies. Today, you'll learn that a cavalary needs more than a lance; the horses need to be fed every day. It is your job to bring ten carrots for the royal horses.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(8.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 9));
talkEntry:addResponse("Die Kavallerie der Ritter Cadomyrs wurde schon immer von unseren Feinden gef�rchtet. Heute lernt ihr, dass zu einer Kavallerie mehr geh�rt als Lanzen; die Pferde m�ssen jeden Tag gef�ttert werden. Eure Aufgabe ist es, zehn Karotten f�r das k�nigliche Gest�t herzubringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded four silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Here is a small reward for the carrots you brought. Certainly, you do not mind money when serving the Queen, do you?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", ">", 9, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst vier Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 400));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2493, 10, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Hier ist eine kleine Belohnung f�r die Karotten, die ihr brachtet. Aber sicherlich ist euch Geld nicht so wichtig, wenn ihr der K�nigin dienen k�nnt, nicht wahr?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The royal horses are hungry. Hungry horses cannot be ridden to sweep away the foes of Cadomyr. So, ten carrots will feed them for today.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die k�niglichen Pferde sind hungrig. Hungrige Pferde k�nnen nicht reiten und die Feinde Cadomyrs davonfegen. Also, zehn Karotten werden ihr Futter heute sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The royal horses are hungry. Hungry horses cannot be ridden to sweep away the foes of Cadomyr. So, ten carrots will feed them for today.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 9));
talkEntry:addCondition(npc.base.condition.item.item(2493, "all", "<", 10, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die k�niglichen Pferde sind hungrig. Hungrige Pferde k�nnen nicht reiten und die Feinde Cadomyrs davonfegen. Also, zehn Karotten werden ihr Futter heute sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(9.09));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 10));
talkEntry:addResponse("Administration can be quite exhausting. Sometimes, I even work during the night. For that, I need a constant supply of candles. Please bring me a candle mould.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(9.09));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 10));
talkEntry:addResponse("Verwaltung kann manchmal ganz sch�n anstrengend sein. Manchmal arbeite ich bis tief in die Nacht. Daf�r brauche ich immer eine Menge Kerzen. Bringt mir doch bitte eine Kerzenziehform.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(9.09));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 10));
talkEntry:addResponse("Administration can be quite exhausting. Sometimes, I even work during the night. For that, I need a constant supply of candles. Please bring me a candle mould.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(9.09));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 10));
talkEntry:addResponse("Verwaltung kann manchmal ganz sch�n anstrengend sein. Manchmal arbeite ich bis tief in die Nacht. Daf�r brauche ich immer eine Menge Kerzen. Bringt mir doch bitte eine Kerzenziehform.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(429, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded six silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(429, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Now I can spend even more time serving the Queen. Thank you very much for the candle mould, please accept this compensation.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(429, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst sechs Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 600));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(429, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Jetzt kann ich endlich noch mehr Zeit damit zubringen, der K�nigin zu dienen. Vielen Dank f�r die Kerzenziehform, bitte nehmt diese Belohnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(429, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Candles are rare, we have enough wax but no candle mould to produce new candles. Please hurry and bring me a candle mould so I can serve the Queen during the night as well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(429, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die Kerzen werden knapp, es gibt genug Wachs, aber keine Kerzenziehform. Bitte bringt mir eine solche Form, damit ich der K�nigin auch in der Nacht dienen kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(429, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Candles are rare, we have enough wax but no candle mould to produce new candles. Please hurry and bring me a candle mould so I can serve the Queen during the night as well.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 10));
talkEntry:addCondition(npc.base.condition.item.item(429, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die Kerzen werden knapp, es gibt genug Wachs, aber keine Kerzenziehform. Bitte bringt mir eine solche Form, damit ich der K�nigin auch in der Nacht dienen kann.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(10.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 11));
talkEntry:addResponse("Ah, a loyal servant of her Majesty, very good. I plan a banquet to honour the royal family. We'll serve a delicious asparagus cream soup, but soup bowls aren't available in sufficient amounts. Please obtain twenty soup bowls of highest quality and bring them to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(10.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 11));
talkEntry:addResponse("Ah, ein ergebender Diener ihrer Majest�t, sehr gut. Ich plane ein Bankett zu Ehren der k�niglichen Familie. Es wird eine schmackhafte Spargelcremesuppe gereicht werden, aber es mangelt an Suppensch�sseln. Bitte besorgt zwanzig Sch�sseln feinster Machart und bringt sie zu mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(10.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 11));
talkEntry:addResponse("Ah, a loyal servant of her Majesty, very good. I plan a banquet to honour the royal family. We'll serve a delicious asparagus cream soup, but soup bowls aren't available in sufficient amounts. Please obtain twenty soup bowls of highest quality and bring them to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(10.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 11));
talkEntry:addResponse("Ah, ein ergebender Diener ihrer Majest�t, sehr gut. Ich plane ein Bankett zu Ehren der k�niglichen Familie. Es wird eine schmackhafte Spargelcremesuppe gereicht werden, aber es mangelt an Suppensch�sseln. Bitte besorgt zwanzig Sch�sseln feinster Machart und bringt sie zu mir.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 11));
talkEntry:addCondition(npc.base.condition.item.item(2935, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a gilded dagger. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2935, 20, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(297, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 24));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("#me inspects the soup bowls and nods: 'You did not disappoint the Queen. The banquet can be held, maybe I'll mention your name in a toast. I award you this dagger as special thanks of the palace.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 11));
talkEntry:addCondition(npc.base.condition.item.item(2935, "all", ">", 19, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen vergoldeten Dolch. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2935, 20, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(297, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 24));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("#me begutachtet die Suppensch�sseln und nickt: 'Ihr habt die K�nigin nicht entt�uscht. Das Bankett kann abgehalten werden und vielleicht erw�hne ich euren Namen in einem Trinkspruch. Ich verleihe euch diesen Dolch als besonderen Dank des Palastes.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 11));
talkEntry:addCondition(npc.base.condition.item.item(2935, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The preparations for the banquet have already begun but you haven't brought the twenty soup bowls yet? How are we supposed to serve the soup to the Queen - in a bucket!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 11));
talkEntry:addCondition(npc.base.condition.item.item(2935, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die Vorbereitungen f�r das Bankett haben bereits begonnen und ihr habt die zwanzig Suppensch�sseln noch nicht besorgt? Wie sollen wir der K�nigin die Suppe servieren - in einem Eimer!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 11));
talkEntry:addCondition(npc.base.condition.item.item(2935, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The preparations for the banquet have already begun but you haven't brought the twenty soup bowls yet? How are we supposed to serve the soup to the Queen - in a bucket!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 11));
talkEntry:addCondition(npc.base.condition.item.item(2935, "all", "<", 20, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die Vorbereitungen f�r das Bankett haben bereits begonnen und ihr habt die zwanzig Suppensch�sseln noch nicht besorgt? Wie sollen wir der K�nigin die Suppe servieren - in einem Eimer!?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(11.11));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 12));
talkEntry:addResponse("An emergency has occured, the kingdom is seriously endangered. Queen Rosaline broke her mirror - you know how irascible she is and what beauty means to her. To prevent possible misjudgements by her, get a new mirror at once. Obey!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(11.11));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 12));
talkEntry:addResponse("Ein Notfall ist eingetreten, das K�nigreich ist in ernsthafter Gefahr. K�nigin Rosaline hat ihren Spiegel zerbrochen - ihr wisst, wie aufbrausend sie sein kann und wie viel Wert sie auf ihre Sch�nheit legt. Um �berst�rztheiten ihrerseits zuvorzukommen, besorgt sofort einen neuen Spiegel. Gehorcht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(11.11));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 12));
talkEntry:addResponse("An emergency has occured, the kingdom is seriously endangered. Queen Rosaline broke her mirror - you know how irascible she is and what beauty means to her. To prevent possible misjudgements by her, get a new mirror at once. Obey!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(11.11));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 12));
talkEntry:addResponse("Ein Notfall ist eingetreten, das K�nigreich ist in ernsthafter Gefahr. K�nigin Rosaline hat ihren Spiegel zerbrochen - ihr wisst, wie aufbrausend sie sein kann und wie viel Wert sie auf ihre Sch�nheit legt. Um �berst�rztheiten ihrerseits zuvorzukommen, besorgt sofort einen neuen Spiegel. Gehorcht!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 12));
talkEntry:addCondition(npc.base.condition.item.item(336, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded seven silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 700));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(336, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("The Queen's new mirror, very good. Always keep in mind that when she beholds herself now, an item of yours reflects her beauty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 12));
talkEntry:addCondition(npc.base.condition.item.item(336, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst sieben Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 700));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(336, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Der K�nigin neuer Spiegel, sehr gut. Denkt nun immer daran, dass wenn sie sich im Spiegel betrachtet wird es ein Kleinod von euch sein, dass ihre Sch�nheit widerspiegelt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 12));
talkEntry:addCondition(npc.base.condition.item.item(336, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The Queen calmly asked me where her new mirror is. The Queen never asks calmly - unless she is about to erupt like a volcano. Obey my order!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 12));
talkEntry:addCondition(npc.base.condition.item.item(336, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die K�nigin hat mich seelenruhig nach dem Verbleib ihres neuen Spiegels gefragt. Die K�nigin ist niemals so gelasssen, au�er, wenn sie kurz davor ist, wie ein Vulkan zu explodieren. Gehorcht meinem Befehl!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 12));
talkEntry:addCondition(npc.base.condition.item.item(336, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The Queen calmly asked me where her new mirror is. The Queen never asks calmly - unless she is about to erupt like a volcano. Obey my order!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 12));
talkEntry:addCondition(npc.base.condition.item.item(336, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die K�nigin hat mich seelenruhig nach dem Verbleib ihres neuen Spiegels gefragt. Die K�nigin ist niemals so gelasssen, au�er, wenn sie kurz davor ist, wie ein Vulkan zu explodieren. Gehorcht meinem Befehl!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(12.5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 13));
talkEntry:addResponse("I have an important order: Queen Rosaline will welcome a delegation from Sevenhill, a dwarven kingdom. She wants to impress those bearded gnomes with a special present: A comb for their shaggy beards. It is your duty to select a proper comb and bring it to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(12.5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 13));
talkEntry:addResponse("Ich habe einen wichtigen Auftrag: K�nigin Rosaline empf�ngt demn�chste eine Delegation aus Siebenbergen, ein Zwergenreich. Sie m�chte diese b�rtigen Wichte mit einem besonderen Geschenk beeindrucken: Ein Kamm f�r ihre zotteligen B�rte. Es ist an euch, einen geeigneten Kamm auszusuchen und mir zu bringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(12.5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 13));
talkEntry:addResponse("I have an important order: Queen Rosaline will welcome a delegation from Sevenhill, a dwarven kingdom. She wants to impress those bearded gnomes with a special present: A comb for their shaggy beards. It is your duty to select a proper comb and bring it to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(12.5));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 13));
talkEntry:addResponse("Ich habe einen wichtigen Auftrag: K�nigin Rosaline empf�ngt demn�chste eine Delegation aus Siebenbergen, ein Zwergenreich. Sie m�chte diese b�rtigen Wichte mit einem besonderen Geschenk beeindrucken: Ein Kamm f�r ihre zotteligen B�rte. Es ist an euch, einen geeigneten Kamm auszusuchen und mir zu bringen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 13));
talkEntry:addCondition(npc.base.condition.item.item(2719, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a pipe. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2719, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2744, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ha! That comb will suit those bearded gnomes. Here, you should relax now, have this pipe, get some pipe weed and enjoy the rest of the day.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 13));
talkEntry:addCondition(npc.base.condition.item.item(2719, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst eine Pfeife. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2719, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2744, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ha! Dieser Kamm ist genau das richtige f�r diese b�rtigen Wichte. Hier, ihr solltet euch jetzt entspannen, nehmt diese Pfeife, steckt euch etwas Pfeifenkraut an und genie�t den Rest des Tages.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 13));
talkEntry:addCondition(npc.base.condition.item.item(2719, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The dwarven delegation is already on its way to Cadomyr. Hurry! The comb is needed for the welcome reception. *chuckles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 13));
talkEntry:addCondition(npc.base.condition.item.item(2719, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Die Zwergendelegation ist schon auf dem Weg nach Cadomyr. Beeilt euch! Der Kamm wird zwingend f�r die Willkommensfeier ben�tigt. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 13));
talkEntry:addCondition(npc.base.condition.item.item(2719, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The dwarven delegation is already on its way to Cadomyr. Hurry! The comb is needed for the welcome reception. *chuckles*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 13));
talkEntry:addCondition(npc.base.condition.item.item(2719, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Die Zwergendelegation ist schon auf dem Weg nach Cadomyr. Beeilt euch! Der Kamm wird zwingend f�r die Willkommensfeier ben�tigt. *kichert*");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(14.29));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 14));
talkEntry:addResponse("I am responsible for the armoury of Cadomyr. Recently, Horatio Milenus, one of the town guards, approached me and suggested the purchase of a long bow to repel the beasts of the desert. Now I command you to provide a long bow.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(14.29));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 14));
talkEntry:addResponse("Ich bin auch f�r die Waffenkammer Cadomyrs verantwortlich. Neulich trat Horation Milenus, eine der Stadtwachen, an mich heran und bat um die Anschaffung eines Langbogens um das Getier der W�ste fernzuhalten. Ich befehle nun euch, einen Langbogen zu beschaffen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(14.29));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 14));
talkEntry:addResponse("I am responsible for the armoury of Cadomyr. Recently, Horatio Milenus, one of the town guards, approached me and suggested the purchase of long bows to repel the beasts of the desert. Now I command you to provide a long bow.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(14.29));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 14));
talkEntry:addResponse("Ich bin auch f�r die Waffenkammer Cadomyrs verantwortlich. Neulich trat Horation Milenus, eine der Stadtwachen, an mich heran und bat um die Anschaffung eines Langbogens um das Getier der W�ste fernzuhalten. Ich befehle nun euch, einen Langbogen zu beschaffen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 14));
talkEntry:addCondition(npc.base.condition.item.item(2708, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded eight silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 800));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2708, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("This bow will protect Cadomyr from this day on. Arrows shot by it will kill foes of her Majesty, isn't that a good feeling? I have a small purse for your effort.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 14));
talkEntry:addCondition(npc.base.condition.item.item(2708, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst acht Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 800));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(2708, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Dieser Bogen wird von nun an Cadomyr besch�tzen. Mit ihm abgeschossene Pfeile werden die Feinde ihrer Majest�t niederstrecken, ist das nicht ein gutes Gef�hl? Ich habe hier eine kleine B�rse f�r euren Bem�hungen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 14));
talkEntry:addCondition(npc.base.condition.item.item(2708, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("The armoury really lacks a long bow and it is your duty to provide one. Off!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 14));
talkEntry:addCondition(npc.base.condition.item.item(2708, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Der Waffenkammer fehlt wirklich ein Langbogen und es ist euer Auftrag, einen zu beschaffen. Hinfort!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 14));
talkEntry:addCondition(npc.base.condition.item.item(2708, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("The armoury really lacks a long bow and it is your duty to provide one. Off!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 14));
talkEntry:addCondition(npc.base.condition.item.item(2708, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Der Waffenkammer fehlt wirklich ein Langbogen und es ist euer Auftrag, einen zu beschaffen. Hinfort!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(16.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 15));
talkEntry:addResponse("Recently, a bunch of bandits dared to ambush a host of recruits of Cadomyr. Needless to say the bandits perished. During the skirmish, many crossbow bolts were shot into their chests. Please bring me a supply of a hundred bolts to replace them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(16.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 15));
talkEntry:addResponse("Neulich erdreiste sich eine Banditenbande, Rekruten Cadomyrs aufzulauern. Ich brauche nicht betonen, dass die Banditen mit unz�hligen Armbrustbolzen niedergestreckt wurden. Besorgt bitte Nachschub an einhundert Bolzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(16.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 15));
talkEntry:addResponse("Recently, a bunch of bandits dared to ambush a host of recruits of Cadomyr. Needless to say the bandits perished. During the skirmish, many crossbow bolts were shot into their chests. Please bring me a supply of a hundred bolts to replace them.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(16.67));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 15));
talkEntry:addResponse("Neulich erdreiste sich eine Banditenbande, Rekruten Cadomyrs aufzulauern. Ich brauche nicht betonen, dass die Banditen mit unz�hligen Armbrustbolzen niedergestreckt wurden. Besorgt bitte Nachschub an einhundert Bolzen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 15));
talkEntry:addCondition(npc.base.condition.item.item(237, "all", ">", 99, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded an ebony wood bow. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(237, 100, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2780, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Crossbow bolts that will pierce the armour of our enemies - I am appeased. If you want to contribute to the defence of Cadomyr, accept this bow as reward.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 15));
talkEntry:addCondition(npc.base.condition.item.item(237, "all", ">", 99, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Ebenholzbogen. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(237, 100, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(2780, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Armbrustbolzen, die die R�stungen unserer Feinde durchbohren werden - ich bin zufrieden mit euch. Wenn ihr auch euren Teil zur Verteidigung Cadomyrs beitragen wollt, so nehmt diesen Bogen als Belohnung.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 15));
talkEntry:addCondition(npc.base.condition.item.item(237, "all", "<", 100, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Should our soldiers toss rocks at our enemies? A hundred crossbow bolts are needed as fast as possible.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 15));
talkEntry:addCondition(npc.base.condition.item.item(237, "all", "<", 100, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Sollen unsere Soldaten etwa Steine nach unseren Feinden werfen? Hundert Armbrustbolzen werden so schnell es geht ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 15));
talkEntry:addCondition(npc.base.condition.item.item(237, "all", "<", 100, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Should our soldiers toss rocks at our enemies? A hundred crossbow bolts are needed as fast as possible.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 15));
talkEntry:addCondition(npc.base.condition.item.item(237, "all", "<", 100, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Sollen unsere Soldaten etwa Steine nach unseren Feinden werfen? Hundert Armbrustbolzen werden so schnell es geht ben�tigt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 16));
talkEntry:addResponse("The Queen commanded that she'll have a feast with her nobles and I am the one who coordinates the preparations. For the main course, venison dishes are planned. Your order is to obtain five dishes or you'll feel my wrath.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 16));
talkEntry:addResponse("Die K�nigin hat befohlen, dass sie ein Festessen mit ihren Adligen abhalten wird. Ich koordiniere die Vorbereitungen, f�r den Hauptgang ist ein Wildgericht vorgesehen. Euer Befehl: Besorgt f�nf Gerichte oder sp�rt meinen Zorn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 16));
talkEntry:addResponse("The Queen commanded that she'll have a feast with her nobles and I am the one who coordinates the preparations. For the main course, venison dishes are planned. Your order is to obtain five dishes or you'll feel my wrath.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(20.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 16));
talkEntry:addResponse("Die K�nigin hat befohlen, dass sie ein Festessen mit ihren Adligen abhalten wird. Ich koordiniere die Vorbereitungen, f�r den Hauptgang ist ein Wildgericht vorgesehen. Euer Befehl: Besorgt f�nf Gerichte oder sp�rt meinen Zorn.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 16));
talkEntry:addCondition(npc.base.condition.item.item(554, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded 22 silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(554, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("#me sniffs: 'Delicious! I'll forward your dishes to the cooks at once. You did a great servide to Cadomyr today. This reward is yours.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 16));
talkEntry:addCondition(npc.base.condition.item.item(554, "all", ">", 4, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst 22 Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 2200));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(554, 5, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 60));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("#me schn�ffelt: 'Schmackhaft! Ich werde diese Gerichte gleich an die K�che weiterleiten. Ihr habt Cadomyr heute einen gro�en Dienst erwiesen. Diese Belohnung ist nun euer.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 16));
talkEntry:addCondition(npc.base.condition.item.item(554, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Do you remember the '...or you'll feel my wrath' part? Away! Get five venison dishes at once or I'll lose my temper.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 16));
talkEntry:addCondition(npc.base.condition.item.item(554, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Erinnert ihr euch noch an den Teil mit '...oder sp�rt meinen Zorn'? Hinfort mit euch! Besorgt mir sofort f�nf Wildgerichte oder ich vergesse mich.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 16));
talkEntry:addCondition(npc.base.condition.item.item(554, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Do you remember the '...or you'll feel my wrath' part? Away! Get five venison dishes at once or I'll lose my temper.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 16));
talkEntry:addCondition(npc.base.condition.item.item(554, "all", "<", 5, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Erinnert ihr euch noch an den Teil mit '...oder sp�rt meinen Zorn'? Hinfort mit euch! Besorgt mir sofort f�nf Wildgerichte oder ich vergesse mich.'");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 17));
talkEntry:addResponse("New orders from the Queen: Tomorrow, she wants to visit the desert but lacks a proper outfit. Her taste is sometimes... special. She demands a red and white skirt, get it and bring it to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 17));
talkEntry:addResponse("Neue Befehle der K�nigin: Morgen m�chte sie die W�ste bereisen und sie braucht noch passende Kleidung. Ihr Geschmack ist manchmal etwas ausgefallen. Sie verlangt nach einem rot-wei�em Rock. Besorgt einen und bringt ihn her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 17));
talkEntry:addResponse("New orders from the Queen: Tomorrow, she wants to visit the desert but lacks a proper outfit. Her taste is sometimes... special. She demands a red and white skirt, get it and bring it to me.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(25.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 17));
talkEntry:addResponse("Neue Befehle der K�nigin: Morgen m�chte sie die W�ste bereisen und sie braucht noch passende Kleidung. Ihr Geschmack ist manchmal etwas ausgefallen. Sie verlangt nach einem rot-wei�em Rock. Besorgt einen und bringt ihn her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 17));
talkEntry:addCondition(npc.base.condition.item.item(843, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a topaz. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(843, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(198, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("A perfect skirt for a walk in the desert. You realise which part of the Queen's body this skirt will cover? Only the best for the best! Your reward shall be this gem.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 17));
talkEntry:addCondition(npc.base.condition.item.item(843, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Topas. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(843, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(198, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ein perfekter Rock f�r einen Ausflug in die W�ste. Ihr seid euch bewu�t, welches K�rperteil der K�nigin hiervon bedeckt sein wird? Nur das Beste f�r das Beste! Eure Belohnung soll dieser Edelstein sein.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 17));
talkEntry:addCondition(npc.base.condition.item.item(843, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I remember that I gave you the order to acquire the red and white skirt the Queen demands.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 17));
talkEntry:addCondition(npc.base.condition.item.item(843, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich meine mich erinnern zu k�nnen, dass ich euch den Befehl gab, den rot-wei�en Rock zu besorgen, nach dem die K�nigin verlangt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 17));
talkEntry:addCondition(npc.base.condition.item.item(843, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("I remember that I gave you the order to acquire the red and white skirt the Queen demands.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 17));
talkEntry:addCondition(npc.base.condition.item.item(843, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich meine mich erinnern zu k�nnen, dass ich euch den Befehl gab, den rot-wei�en Rock zu besorgen, nach dem die K�nigin verlangt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(33.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 18));
talkEntry:addResponse("Administration, administration, administration... to cut a long story short, even though Cadomyr is a desert realm, it can be pretty cold at night. The stocks of coal are depleted and I don't want to see the Queen freeze. Get fifteen lumps of coal to warm her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(33.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 18));
talkEntry:addResponse("Verwaltung, Verwaltung, Verwaltung... um es kurz zu machen, auch wenn Cadomyr ein W�stenreich ist, kann es verdammt kalt in der Nacht werden. Die Kohlevorr�te sind ersch�pft und K�nigin Rosaline soll doch nicht frieren. Bringt mir bitte f�nfzehn Klumpen Kohle, um sie zu w�rmen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(33.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 18));
talkEntry:addResponse("Administration, administration, administration... to cut a long story short, even though Cadomyr is a desert realm, it can be pretty cold at night. The stocks of coal are depleted and I don't want to see the Queen freeze. Get fifteen lumps of coal to warm her.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(33.33));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 18));
talkEntry:addResponse("Verwaltung, Verwaltung, Verwaltung... um es kurz zu machen, auch wenn Cadomyr ein W�stenreich ist, kann es verdammt kalt in der Nacht werden. Die Kohlevorr�te sind ersch�pft und K�nigin Rosaline soll doch nicht frieren. Bringt mir bitte f�nfzehn Klumpen Kohle, um sie zu w�rmen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 18));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded ten silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 15, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Very well, you deserve a reward. Coal has stored much more of Br�gon's fire than wood, it will surely make the nights more comfortable.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 18));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", ">", 14, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst zehn Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 1000));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(21, 15, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 36));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Sehr gut, ihr habt euch eure Belohnung verdient. Kohle enth�lt weit mehr Feuer Br�gons als Holz, sie wird die N�chte sicher behaglicher machen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 18));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Maybe I did not make myself clear... When I give you the order to get fifteen lumps of coal, you do exactly that and nothing else until you've completed your mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 18));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Vielleicht habe ich mich nicht klar genug ausgedr�ckt: Wenn ich euch den Befehl gebe, f�nfzehn Klumpen Kohle zu besorgen, dann macht ihr genau das und nichts anderes, bis ihr eure Mission erf�llt habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 18));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Maybe I did not make myself clear... When I give you the order to get fifteen lumps of coal, you do exactly that and nothing else until you've completed your mission.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 18));
talkEntry:addCondition(npc.base.condition.item.item(21, "all", "<", 15, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Vielleicht habe ich mich nicht klar genug ausgedr�ckt: Wenn ich euch den Befehl gebe, f�nfzehn Klumpen Kohle zu besorgen, dann macht ihr genau das und nichts anderes, bis ihr eure Mission erf�llt habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(50.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 19));
talkEntry:addResponse("I got word of planned sabotage by Baron Hastings' men. All our guards are well equipped and prepared, except for a missing helmet for one recruit. Obey and deliver a pot helmet to my hands.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(50.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 19));
talkEntry:addResponse("Ger�chten zufolge planen Baron Hastings M�nner einen Anschlag. Alle Wachen sind bestens vorbereitet und ausger�stet, es fehlt lediglich ein Helm f�r einen neuen Rekruten. Gehorcht und liefert einen Topfhelm zu meinen H�nden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(50.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 19));
talkEntry:addResponse("I got word of planned sabotage by Baron Hastings' men. All our guards are well equipped and prepared, except for a missing helmet for one recruit. Obey and deliver a pot helmet to my hands.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(50.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 19));
talkEntry:addResponse("Ger�chten zufolge planen Baron Hastings M�nner einen Anschlag. Alle Wachen sind bestens vorbereitet und ausger�stet, es fehlt lediglich ein Helm f�r einen neuen Rekruten. Gehorcht und liefert einen Topfhelm zu meinen H�nden.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 19));
talkEntry:addCondition(npc.base.condition.item.item(94, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded a gold ingot. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(94, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(236, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("With a fully equipped guard, Baron Hastings' men won't dare to take any action. That helmet does its part. I am authorised to grant you gold from Cadomyr's treasury.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 19));
talkEntry:addCondition(npc.base.condition.item.item(94, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst einen Goldbarren. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(94, 1, nil));
talkEntry:addConsequence(npc.base.consequence.item.item(236, 1, 599, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Eine voll ausger�stete Wache wir die M�nner von Baron Hastings davon abbringen, irgendwelche Missetaten zu versuchen. Dieser Helm tr�gt seinen Teil dazu bei. Ich bin dazu erm�chtigt, euch Gold aus der Schatzkammer zuzuteilen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 19));
talkEntry:addCondition(npc.base.condition.item.item(94, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Look at me. Do I look like I am joking? If Baron Hastings' men catch our guard unprepared, it is your head that pays for that. So, get that pot helmet for our recruit!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 19));
talkEntry:addCondition(npc.base.condition.item.item(94, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Schaut mich mal an. Sehe ich aus, als wenn ich scherzen w�rde? Wenn Baron Hastings M�nner unsere Wache unvorbereitet vorfinden werdet ihr mit eurem Kopf bezahlen. Also holt jetzt diesen Topfhelm f�r unseren Rekruten!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 19));
talkEntry:addCondition(npc.base.condition.item.item(94, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Look at me. Do I look like I am joking? If Baron Hastings' men catch our guard unprepared, it is your head that pays for that. So, get that pot helmet for our recruit!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 19));
talkEntry:addCondition(npc.base.condition.item.item(94, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Schaut mich mal an. Sehe ich aus, als wenn ich scherzen w�rde? Wenn Baron Hastings M�nner unsere Wache unvorbereitet vorfinden werdet ihr mit eurem Kopf bezahlen. Also holt jetzt diesen Topfhelm f�r unseren Rekruten!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.chance.chance(100.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 20));
talkEntry:addResponse("Today, I have a personal request rather than an order. Could you please bring me a gold nugget - I want to forge a special gift, a bracelet, for my Queen to prove my loyality.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.language.language("german"));
talkEntry:addCondition(npc.base.condition.chance.chance(100.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 20));
talkEntry:addResponse("Heute habe ich keinen Befehl f�r euch sondern eine pers�nliche Bitte. K�nntet ihr mir bitte ein Goldnugget bringen - ich m�chte der K�nigin ein besonderes Geschenk, einen Armreif, schmieden um ihr meine Ergebenheit zu beweisen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(100.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[New Quest] Do a good turn daily for Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 20));
talkEntry:addResponse("Today, I have a personal request rather than an order. Could you please bring me a gold nugget - I want to forge a special gift, a bracelet, for my Queen to prove my loyality.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 0));
talkEntry:addCondition(npc.base.condition.chance.chance(100.0));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Neues Quest] Jeden Tag eine gute Tat f�r Cadomyr"));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 20));
talkEntry:addResponse("Heute habe ich keinen Befehl f�r euch sondern eine pers�nliche Bitte. K�nntet ihr mir bitte ein Goldnugget bringen - ich m�chte der K�nigin ein besonderes Geschenk, einen Armreif, schmieden um ihr meine Ergebenheit zu beweisen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 20));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest solved] You are awarded five silver coins. You advance in Queen Rosaline Edwards' favour."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(234, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("I thank you very much. I shall start to forge the golden bracelet for the Queen as soon as I finished my other duties - spare time might be the right word.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 20));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", ">", 0, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger(".*");
talkEntry:addConsequence(npc.base.consequence.inform.inform("[Quest gel�st] Du erh�ltst f�nf Silberst�cke. Dein Ansehen bei K�nigin Rosaline Edwards steigt."));
talkEntry:addConsequence(npc.base.consequence.money.money("+", 500));
talkEntry:addConsequence(npc.base.consequence.deleteitem.deleteitem(234, 1, nil));
talkEntry:addConsequence(npc.base.consequence.quest.quest(119, "=", 0));
talkEntry:addConsequence(npc.base.consequence.quest.quest(120, "=", 48));
talkEntry:addConsequence(npc.base.consequence.rankpoints.rankpoints("+", 5));
talkEntry:addResponse("Ich danke euch vielmals. Ich sollte mit dem Schmieden des goldenen Armreifes f�r die K�nigin beginnen, sobald ich mit meinen anderen Verpflichtungen fertig bin. Ich glaube, das nennt man dann Feierabend.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 20));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Out of my sight and do not dare to come back before you brought me a gold nugget.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 20));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Aus meinen Augen und wagt es nicht eher wiederzukommen, als dass ihr nicht ein Goldnugget dabei habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 20));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addResponse("Out of my sight and do not dare to come back before you brought me a gold nugget.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.quest.quest(119, "=", 20));
talkEntry:addCondition(npc.base.condition.item.item(234, "all", "<", 1, nil));
talkEntry:addCondition(npc.base.condition.town.town(1));
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Aus meinen Augen und wagt es nicht eher wiederzukommen, als dass ihr nicht ein Goldnugget dabei habt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("I have a special assignment for you: Go back to Wilderland and don't come back to the palace unless her Majesty summons you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("quest");
talkEntry:addTrigger("mission");
talkEntry:addResponse("Ich habe eine besondere Mission f�r euch: Geht zur�ck nach Wilderland und wagt es nicht, den Palast wieder zu betreten, es sei denn, ihre Majest�t befiehlt es euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("task");
talkEntry:addTrigger("adventure");
talkEntry:addTrigger("order");
talkEntry:addTrigger("order");
talkEntry:addResponse("I have a special assignment for you: Go back to Wilderland and don't come back to the palace unless her Majesty summons you.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Auftrag");
talkEntry:addTrigger("Aufgabe");
talkEntry:addTrigger("Abenteuer");
talkEntry:addTrigger("Befehl");
talkEntry:addResponse("Ich habe eine besondere Mission f�r euch: Geht zur�ck nach Wilderland und wagt es nicht, den Palast wieder zu betreten, es sei denn, ihre Majest�t befiehlt es euch.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("profession");
talkEntry:addResponse("I am Cadomyr's chancellor. I issue orders of her Majesty and care for the palace.");
talkEntry:addResponse("As chancellor, it is my duty to make sure that the Queen has all she needs and that her palace is clean and secure.");
talkEntry:addResponse("As Cadomyr's chancellor, I am the head of the royal administration. The Queen relies on me and my initiative to take care of the unwanted and little things in her kingdom.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("beruf");
talkEntry:addResponse("Ich bin der Kanzler Cadomyrs. Ich verteile die Befehle der K�nigin und sorge f�r den Palast.");
talkEntry:addResponse("Als Kanzler obliegt es mir sicherzustellen, dass es der K�nigin an nichts mangelt und dass ihr Palast sauber und sicher ist.");
talkEntry:addResponse("Als Cadomyrs Kanzler bin ich der Obereste in Cadomyrs Verwaltung. Die K�nigin verl��t sich auf mich und meine Eigeninitiative, so dass ich mich um die kleinen, unliebsamen Dinge im K�nigreich k�mmere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("job");
talkEntry:addResponse("I am Cadomyr's chancellor. I issue orders of her Majesty and care for the palace.");
talkEntry:addResponse("As chancellor, it is my duty to make sure that the Queen has all she needs and that her palace is clean and secure.");
talkEntry:addResponse("As Cadomyr's chancellor, I am the head of the royal administration. The Queen relies on me and my initiative to take care of the unwanted and little things in her kingdom.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("job");
talkEntry:addResponse("Ich bin der Kanzler Cadomyrs. Ich verteile die Befehle der K�nigin und sorge f�r den Palast.");
talkEntry:addResponse("Als Kanzler obliegt es mir sicherzustellen, dass es der K�nigin an nichts mangelt und dass ihr Palast sauber und sicher ist.");
talkEntry:addResponse("Als Cadomyrs Kanzler bin ich der Obereste in Cadomyrs Verwaltung. Die K�nigin verl��t sich auf mich und meine Eigeninitiative, so dass ich mich um die kleinen, unliebsamen Dinge im K�nigreich k�mmere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("I'd been to Gobaith before the fall, I had a horrible glass of wine in a nasty tavern with a sheep running around in the taproom!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gobaith");
talkEntry:addTrigger("Gobiath");
talkEntry:addResponse("Vor der Vernichtung war ich einmal auf Gobaith: Ich trank ein Glas widerlichem Weines in einer stinkenden Taverne, wo ein Schaf im Schankraum herumlief!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("my name");
talkEntry:addResponse("Very well. I am sure you can do good deeds in the name of Cadomyr. As chancellor, I have to take care of many things and you can do your share.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("mein Name");
talkEntry:addResponse("Wunderbar. Ich bin mir sicher, ihr k�nnt viele gute Taten f�r Cadomyr vollbringen. Als Kanzler k�mmere ich mich um viele Angelegenheiten und ihr k�nnt euren Teil dazu beitragen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Chancellor");
talkEntry:addResponse("I am Cadomyr's chancellor. I issue orders of her majesty and care about the palace.");
talkEntry:addResponse("As chancellor, it is my duty to make sure that the Queen has all she needs and that her palace is clean and secure.");
talkEntry:addResponse("As Cadomyr's chancellor, I am the head of the royal administration. The Queen relies on me and my initiative to take care of the unwanted and little things in her kingdom.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("elf");
talkEntry:addResponse("I am indeed an elf and I obey the orders of humans. I've been loyal to the Edwards family and the throne for ages and I cannot imagine any better kin of rulers.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Palace");
talkEntry:addResponse("The palace is the house of the Edwards and I am the housekeeper - in simple words. I care for the administration of Cadomyr, delegating what needs to be done.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Guard");
talkEntry:addResponse("I doubt this palace needs a guard. No one in Cadomyr would raise his hand against Queen Rosaline and if that bastard Hastings dares to appear here, I'd give my life to defend her Majesty.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("loyal");
talkEntry:addResponse("I am loyal to Rosaline as I was loyal to Reginald and all their forefathers. Likewise, I will be loyal to the heirs of Cadomyr until end of time.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Kanzler");
talkEntry:addResponse("Ich bin der Kanzler Cadomyrs. Ich verteile die Befehle der K�nigin und sorge f�r den Palast.");
talkEntry:addResponse("Als Kanzler obliegt es mir sicherzustellen, dass es der K�nigin an nichts mangelt und dass ihr Palast sauber und sicher ist.");
talkEntry:addResponse("Als Cadomyrs Kanzler bin ich der Obereste in Cadomyrs Verwaltung. Die K�nigin verl��t sich auf mich und meine Eigeninitiative, so dass ich mich um die kleinen, unliebsamen Dinge im K�nigreich k�mmere.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("elf");
talkEntry:addResponse("Ich bin f�rwahr ein Elf, der den Befehlen von Menschen gehorcht. Ich diene der Familie der Edwards und dem Thron nun schon eine Ewigkeit und ich kann mir keine bessere Herrschersippe vorstellen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Palast");
talkEntry:addResponse("Der Palast ist das Haus der Edwards und ich bin der Hausmeister - in einfachen Worten. Ich bin f�r die Verwaltung Cadomyrs verwantwortlich und delegiere die Dinge, die nunmal gemacht werden m�ssen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Wache");
talkEntry:addTrigger("W�chter");
talkEntry:addResponse("Ich wage zu behaupten, dass der Palast gar keine Wache ben�tigt. Niemand aus Cadomyr w�rde seine Hand gegen K�nigin Rosaline erheben und wenn dieser Bastard Hastings hier aufkreuzt, w�rde ich liebend gerne die K�nigin mit meinem Leben verteidigen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("loyal");
talkEntry:addResponse("Ich bin Rosaline so loyal, wie ich es Reginald war und allen ihren Vorv�tern. Genauso werde ich ihren Erben dienen bis zum Ende aller Tage.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("archmage");
talkEntry:addResponse("Elvaine Morgan, the archmage of Runewick, is a noble elf. I respect him and his words. However, he lacks a sense of honour; sometimes, loyality is more important than rationality.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Erzmagier");
talkEntry:addResponse("Elvaine Morgan, der Erzmagier Runewicks, ist ein ehrbarer Elf. Ich sch�tze ihn und sein Wort. Allerdings fehlt es ihm an Ehrgef�hl, denn manchmal ist Loyalit�t wichtiger als Vernunft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Elvaine Morgan, the archmage of Runewick, is a noble elf. I respect him and his words. However, he lacks a sense of honour; sometimes, loyality is more important than rationality.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Elvaine");
talkEntry:addTrigger("Morgan");
talkEntry:addResponse("Elvaine Morgan, der Erzmagier Runewicks, ist ein ehrbarer Elf. Ich sch�tze ihn und sein Wort. Allerdings fehlt es ihm an Ehrgef�hl, denn manchmal ist Loyalit�t wichtiger als Vernunft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick consists of four magnificient towers in the ocean, deemed the most beautiful buildings in these lands, only second to the palace of the Edwards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Runewick");
talkEntry:addResponse("Runewick besteht aus vier beeindruckenden T�rmen im Meer, die sch�nsten Bauwerke in diesen Landen, nur noch in den Schatten gestellt durch den Palast der Edwards.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Don Valerio is a honourless bastard who even dared to propose to my Queen - my scimitar will prevent a second attempt.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Valerio");
talkEntry:addTrigger("Guilianni");
talkEntry:addTrigger("Don");
talkEntry:addResponse("Don Valerio ist ein ehrloser Bastard, der es wagte, um die Hand meiner K�nigin anzuhalten. Einen zweiten Versuch wird mein S�bel zu verhindern wissen!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("One thing is good about Galmair: Gold. Do not ask how they get it though, you might learn sad stories.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Galmair");
talkEntry:addResponse("Nur eines ist gut an Galmair: Gold. Aber fragt nicht, wo sie es her haben, ihr k�nntet traurige Geschichten h�ren.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Queen");
talkEntry:addResponse("The gods may save the Queen. Rosaline is just like her father Reginald, a little more unforgiving and irascible but even more just and noble.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("K�nigin");
talkEntry:addResponse("Die G�tter m�gen die K�nigin sch�tzen. Rosaline ist genauso wie ihr Vater Reginald; ein wenig mehr nachtragend und reizbar, aber daf�r umso edler und gerechter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("The gods may save the Queen. Rosaline is just like her father Reginald, a little more unforgiving and irascible but even more just and noble.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("rosaline");
talkEntry:addTrigger("edwards");
talkEntry:addResponse("Die G�tter m�gen die K�nigin sch�tzen. Rosaline ist genauso wie ihr Vater Reginald; ein wenig mehr nachtragend und reizbar, aber daf�r umso edler und gerechter.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr, my Cadomyr - land of the noble, land of the just ones. You'll never be mistreated in Cadomyr, you get what you deserve and you know it from the very first day of your life.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Cadomyr");
talkEntry:addResponse("Cadomyr, mein Cadomyr - Land der Edlen und Gerechten. Niemals erfahrt ihr Unrecht in Cadomyr, ihr bekommt, was euch zusteht, und ihr seid euch dem bewu�t ab dem ersten Tag eures Lebens.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("albar");
talkEntry:addResponse("Being of Albarian origin, the family of the Edwards' certainly has respect for the Albarian people. However, Cadomyr is not Albar!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("albar");
talkEntry:addResponse("Die Familie der Edwards ist von albarischem Gebl�t und von daher hat sie sicherlich Hochachtung vor dem albarischen Volk. Aber: Cadomyr geh�rt nicht zu Albar!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("gynk");
talkEntry:addTrigger("gync");
talkEntry:addResponse("If you want to see traitors, cowards, liars and cheaters, either go to a gaol or go to Gynk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("gync");
talkEntry:addTrigger("gynk");
talkEntry:addResponse("Wenn ihr Verr�ter, Feiglinge, L�gner und Betr�ger sehen wollt, geht entweder in ein Zuchthaus oder nach Gynk.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("salkama");
talkEntry:addResponse("I have high hopes that one day, the people of Salkamar will understand that abandoning the old customs doesn't do any good.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("salkama");
talkEntry:addResponse("Ich habe die Hoffnung noch nicht aufgegeben, dass das Volk Salkamars eines Tages einsehen wird, dass es nicht der richtige Weg ist, die alten Sitten �ber Bord zu werfen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("god");
talkEntry:addResponse("My hand is guided by Malach�n, my feet walk on Zhambra's path and my heart beats for my Queen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Gott");
talkEntry:addTrigger("G�tter");
talkEntry:addResponse("Meine Hand wird von Malach�n gef�hrt, meine F��e gehen auf Zhambras Wegen und mein Herz schl�gt f�r meine K�nigin.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Malach�n is the god of war one could say. But I regard his ways to be just and noble while a war isn't always noble. Want to know more about unnoble deeds? Ask Don Valerio!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Malachin");
talkEntry:addTrigger("Malach�n");
talkEntry:addResponse("Malach�n ist der Gott des Krieges, wie manche sagen. Ich hingegen sehe seine Wege als gerecht und ehrlich an, ein Krieg hingegen ist dies nicht immer. Wollt ihr mehr �ber unr�hmliche Taten erfahren? Fragt Don Valerio!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Zhambra is the god of loyality. And I am loyal to my Queen and her family, the Edwards'. I've been in their services longer than a dozen human lives.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Zhambra");
talkEntry:addResponse("Zhambra ist der Gott der Loyalit�t und ich bin loyal gegen�ber meiner K�nigin und ihrer Familie, den Edwards. Ich stehe in ihren Diensten schon seit einem Dutzend Menschenleben.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("what sell");
talkEntry:addTrigger("what buy");
talkEntry:addTrigger("list wares");
talkEntry:addTrigger("price of");
talkEntry:addResponse("Where is the sign above my head, reading 'Anthar's general store'? I am not a trader!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("was verkauf");
talkEntry:addTrigger("was kauf");
talkEntry:addTrigger("warenliste");
talkEntry:addTrigger("preis von");
talkEntry:addResponse("Wo ist denn bitte das Schild �ber meinem Kopf, auf dem 'Anthars Gemischtwarenhandel' steht? Ich bin kein H�ndler!");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("tell something");
talkEntry:addResponse("I could tell you a lot about Cadomyr, Queen Rosaline and the palace.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("erz�hl was");
talkEntry:addTrigger("erz�hl etwas");
talkEntry:addResponse("Ich k�nnte euch etwas �ber Cadomyr, K�nigin Rosaline und den Palast erz�hlen.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addCondition(npc.base.condition.language.language("english"));
talkEntry:addTrigger("Anthar");
talkEntry:addTrigger("Vilicon");
talkEntry:addResponse("I am the royal chancellor, Anthar Vilicon. Treat me with respect and I will treat you likewise. Treat me without respect and you'll end up beheaded.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Anthar");
talkEntry:addTrigger("Vilicon");
talkEntry:addResponse("Ich bin der k�nigliche Kanzler, Anthar Vilicon. Erwei�t mir Respekt und ich werde euch entsprechend behandeln. Seid respektlos und ihr werdet gek�pft.");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Yes");
talkEntry:addResponse("Very well.");
talkEntry:addResponse("I assume you agree.");
talkEntry:addResponse("What do you mean?");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Ja");
talkEntry:addResponse("Sehr gut.");
talkEntry:addResponse("Ich nehme an, ihr stimmt mir zu.");
talkEntry:addResponse("Wie meinen?");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("No");
talkEntry:addResponse("You dare to disagree?");
talkEntry:addResponse("I do not know that word: 'No'.");
talkEntry:addResponse("Obey!");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
if (true) then
local talkEntry = npc.base.talk.talkNPCEntry();
talkEntry:addTrigger("Nein");
talkEntry:addResponse("Ihr wagt es, zu widersprechen?");
talkEntry:addResponse("Das Wort kenne ich nicht: 'Nein'.");
talkEntry:addResponse("Gehorcht!");
talkEntry:addResponse("Pardon?");
talkingNPC:addTalkingEntry(talkEntry);
end;
talkingNPC:addCycleText("Willkommen im Palast.", "Welcome to the palace.");
talkingNPC:addCycleText("Verbeugt euch vor der K�nigin!", "All bow to the Queen!");
talkingNPC:addCycleText("Ja, meine K�nigin?", "Yes, my Queen?");
talkingNPC:addCycleText("#me r�ckt seine leichte R�stung zurecht, die wohl nur dekorativen Zwecken dient.", "#me adjusts his light armour which seems to be just decorative.");
talkingNPC:addCycleText("#me schwingt einen Krumms�bel geschwind durch die Luft, so dass ein surrendes Ger�usch entsteht.", "#me swirls a scimitar, so fast that a buzzing noise can be heard.");
talkingNPC:addCycleText("F�r die Ehre Cadomyrs!", "For the glory of Cadomyr!");
talkingNPC:addCycleText("#me blickt zur Decke.", "#me stares at the ceiling.");
talkingNPC:addCycleText("K�nigin Rosaline ist eine der letzten mit Ehre und Anmut!", "Queen Rosaline is one of the last ones with honour and grace!");
talkingNPC:addCycleText("Ihr da! Kommt her, eventuell habe ich eine Mission f�r euch.", "You, come here! Maybe I have a mission for you.");
talkingNPC:addCycleText("Der n�chste selbsternannte Traumprinz, der sich an meine K�nigin ranmacht, wird gevierteilt!", "The next self proclaimed Prince Charming who proposes to my Queen will be quartered!");
mainNPC:addLanguage(0);
mainNPC:addLanguage(3);
mainNPC:setDefaultLanguage(0);
mainNPC:setLookat("Dieser NPC ist Anthar Vilicon der Kanzler.", "This NPC is Anthar Vilicon the chancellor.");
mainNPC:setUseMessage("Fasst mich nicht an!", "Do not touch me!");
mainNPC:setConfusedMessage("#me schaut verwirrt.", "#me looks around confused.");
mainNPC:setEquipment(1, 0);
mainNPC:setEquipment(3, 2399);
mainNPC:setEquipment(11, 193);
mainNPC:setEquipment(5, 2757);
mainNPC:setEquipment(6, 0);
mainNPC:setEquipment(4, 2295);
mainNPC:setEquipment(9, 2111);
mainNPC:setEquipment(10, 771);
mainNPC:setAutoIntroduceMode(true);

mainNPC:initDone();
end;

function receiveText(npcChar, texttype, message, speaker) mainNPC:receiveText(npcChar, texttype, speaker, message); end;
function nextCycle(npcChar) mainNPC:nextCycle(npcChar); end;
function lookAtNpc(npcChar, char, mode) mainNPC:lookAt(npcChar, char, mode); end;
function useNPC(npcChar, char, counter, param) mainNPC:use(npcChar, char); end;
initNpc();
initNpc = nil;
-- END