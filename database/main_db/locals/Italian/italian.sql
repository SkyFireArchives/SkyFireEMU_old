-- DB SKYFIRE ITA VER 0.2
-- BY GIRIDHAR

-- TRINITY STRING

UPDATE trinity_string SET content_default = 'Devi selezionare un personaggio o una creatura.' WHERE content_default = 'You should select a character or a creature.';
UPDATE trinity_string SET content_default = 'Devi selezionare una creatura.' WHERE content_default = 'You should select a creature.';
UPDATE trinity_string SET content_default = 'Non ci sono aiuti per questo comando' WHERE content_default = 'There is no help for that command';
UPDATE trinity_string SET content_default = 'Non c\'è nssuno comando' WHERE content_default = 'There is no such command';
UPDATE trinity_string SET content_default = 'Non c\'è nessuno sotto comando.' WHERE content_default = 'There is no such subcommand';
UPDATE trinity_string SET content_default = 'Comandi disponibili per te:' WHERE content_default = 'Commands available to you:';
UPDATE trinity_string SET content_default = 'Sintassi scorretta.' WHERE content_default = 'Incorrect syntax.';
UPDATE trinity_string SET content_default = 'Il tuo livello dell\'account è: %i' WHERE content_default = 'Your account level is: %i';
UPDATE trinity_string SET content_default = 'Personaggio salvato.' WHERE content_default = 'Player saved.';
UPDATE trinity_string SET content_default = 'Tutti i personaggi salvati.' WHERE content_default = 'All players saved.';
UPDATE trinity_string SET content_default = 'Ci sono i seguenti GM attivi in questo server.' WHERE content_default = 'There are the following active GMs on this server:';
UPDATE trinity_string SET content_default = 'Non ci sono GM attivi in questo server.' WHERE content_default = 'There are no GMs currently logged in on this server.';
UPDATE trinity_string SET content_default = 'Non puoi farlo mentre stai volando.' WHERE content_default = 'Cannot do that while flying.';
UPDATE trinity_string SET content_default = 'Non puoi farlo in un campo di battaglia.' WHERE content_default = 'Cannot do that in Battlegrounds.';
UPDATE trinity_string SET content_default = 'L\' obbiettivo sta volando, non puoi farlo.' WHERE content_default = 'Target is flying you can\'t do that.';
UPDATE trinity_string SET content_default = 'Non stai cavalcando, quindi non puoi smontare.' WHERE content_default = 'You are not mounted so you can\'t dismount.';
UPDATE trinity_string SET content_default = 'Non puoi farlo quando stai combattendo' WHERE content_default = 'Cannot do that while fighting.';
UPDATE trinity_string SET content_default = 'Lo hai usato recentemente.' WHERE content_default = 'You used it recently.';
UPDATE trinity_string SET content_default = 'La password è stata cambiata.' WHERE content_default = 'The password was changed';
UPDATE trinity_string SET content_default = 'La vecchia password è errata.' WHERE content_default = 'The old password is wrong';
UPDATE trinity_string SET content_default = 'Il tuo account ora è bloccato' WHERE content_default = 'Your account is now locked.';
UPDATE trinity_string SET content_default = 'Il tuo account ora è sbloccato' WHERE content_default = 'Your account is now unlocked.';
UPDATE trinity_string SET content_default = 'Tu sei: %s' WHERE content_default = 'You are: %s';
UPDATE trinity_string SET content_default = 'Visibile' WHERE content_default = 'visible';
UPDATE trinity_string SET content_default = 'Invisibile' WHERE content_default = 'invisible';
UPDATE trinity_string SET content_default = 'Fatto' WHERE content_default = 'done';
UPDATE trinity_string SET content_default = 'Tu' WHERE content_default = 'You';
UPDATE trinity_string SET content_default = 'La nuova password non corrisponde.' WHERE content_default = 'The new passwords do not match';
UPDATE trinity_string SET content_default = 'Giocatori online: %u (massimo: %u)' WHERE content_default = 'Online players: %u (max: %u)';
UPDATE trinity_string SET content_default = 'Puoi summonare un giocatore in instanza solo se lui è in gruppo con te, dove tu sei il capo gruppo.' WHERE content_default = 'You can summon a player to your instance only if he is in your party with you as leader.';
UPDATE trinity_string SET content_default = 'Non puoi andare nell\' instanza del giocatore perchè non è in gruppo con te.' WHERE content_default = 'You cannot go to the player\'s instance because you are in a party now.';
UPDATE trinity_string SET content_default = 'Stai richiamando %s%s.' WHERE content_default = 'You are summoning %s%s.';
UPDATE trinity_string SET content_default = 'Sei stato richiamato da: %s.' WHERE content_default = 'You are being summoned BY %s.';

-- NPC_TEXT

UPDATE npc_text SET text0_1 = 'Saluti $N' WHERE text0_1 = 'Greetings $N';
UPDATE npc_text SET text0_0 = 'Saluti $N', text0_1 = 'Saluti $N' WHERE text0_1 = 'Greetings $N' AND text0_0 = 'Greetings $N';
UPDATE npc_text SET text0_0 = 'Saluti mago. Devo fornirti di una visione più completa del mondo della magia?' WHERE text0_0 = 'Greetings mage.  Shall I provide you with further insight into the world of magic?';
UPDATE npc_text SET text0_0 = 'Saluti. Sono un allenatore di maghi e tu sei un mago.', text0_1 = 'Saluti. Sono un allenatore di maghi e tu sei un mago.' WHERE text0_0 = 'Greetings.  I\'m a mage trainer, and you\'re a mage.' AND text0_1 = 'Greetings.  I\'m a mage trainer, and you\'re a mage.';
UPDATE npc_text SET text0_0 = 'Saluti. Sono uno gnomo che allena i maghi, e tu sei un mago.', text0_1 = 'Saluti. Sono uno gnomo che allena i maghi, e tu sei un mago.'  WHERE text0_0 = 'Greetings.  I\'m a gnome mage trainer, and you\'re a mage.' AND text0_1 = 'Greetings.  I\'m a mage trainer, and you\'re a mage.';
UPDATE npc_text SET text0_0 = 'Saluti. Sono un non morto che allena i maghi, e tu sei un mago.', text0_1 = 'Saluti. Sono un non morto che allena i maghi, e tu sei un mago.' WHERE text0_0 = 'Greetings.  I\'m an undead mage trainer, and you\'re a mage.' AND text0_1 = 'Greetings.  I\'m an undead mage trainer, and you\'re a mage.';
UPDATE npc_text SET text0_0 = 'Saluti, $c. Sei qua per imparare le arti nascoste?', text0_1 = 'Saluti, $c. Sei qua per imparare le arti nascoste?' WHERE text0_0 = 'Greetings, $c.  Are you here to learn of the hidden arts?' AND text0_1 = 'Greetings, $c.  Are you here to learn of the hidden arts?';

-- GOSSIP_MENU_OPTION

UPDATE gossip_menu_option SET option_text = 'Vorrei esplorare la tua merce' WHERE option_text = 'I want to browse your goods';
UPDATE gossip_menu_option SET option_text = 'Vorrei viaggiare veloce' WHERE option_text = 'I want to travel fast';
UPDATE gossip_menu_option SET option_text = 'Addestrami' WHERE option_text = 'Train me!';
UPDATE gossip_menu_option SET option_text = 'Riportami in vita' WHERE option_text = 'Bring me back to life';
UPDATE gossip_menu_option SET option_text = 'Fai di questa locanda la mia casa' WHERE option_text = 'Make this inn my home';
UPDATE gossip_menu_option SET option_text = 'Mostrami la mia banca' WHERE option_text = 'Show me my bank';
UPDATE gossip_menu_option SET option_text = 'Come faccio a formare una gilda?' WHERE option_text = 'How do I form a guild?';
UPDATE gossip_menu_option SET option_text = 'Voglio partecipare al campo di battaglia' WHERE option_text = 'I want to join the Battle Ground';
UPDATE gossip_menu_option SET option_text = 'Asta' WHERE option_text = 'Auction!';
UPDATE gossip_menu_option SET option_text = 'Mi piacerrebe lasciare qua il mio animale' WHERE option_text = 'I\'d like to stable my pet here';
UPDATE gossip_menu_option SET option_text = 'Voglio dimenticare i miei talenti' WHERE option_text = 'I wish to unlearn my talents';
UPDATE gossip_menu_option SET option_text = 'Acquista una seconda specializzazione per i talenti' WHERE option_text = 'Purchase a Dual Talent Specialization';
UPDATE gossip_menu_option SET option_text = 'Giardinaggio' WHERE option_text = 'Herbalism';
UPDATE gossip_menu_option SET option_text = 'Pesca' WHERE option_text = 'Fishing';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Pamuya' WHERE option_text = 'Where is Elder Pamuya?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Sardis' WHERE option_text = 'Where is Elder Sardis?';
UPDATE gossip_menu_option SET option_text = 'Primo soccorso' WHERE option_text = 'First Aid';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Lunaro?' WHERE option_text = 'Where is Elder Lunaro?';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Whurain?' WHERE option_text = 'Where is Elder Whurain?';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Killas?' WHERE option_text = 'Where is Elder Killas?';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Tauros?' WHERE option_text = 'Where is Elder Tauros?';
UPDATE gossip_menu_option SET option_text = 'Ingegneria' WHERE option_text = 'Engineering';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Starsong?' WHERE option_text = 'Where is Elder Starsong?';
UPDATE gossip_menu_option SET option_text = 'Incantatore' WHERE option_text = 'Enchanting';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Bladeswift?' WHERE option_text = 'Where is Elder Bladeswift?';
UPDATE gossip_menu_option SET option_text = 'Cuoco' WHERE option_text = 'Where is Elder Skygleam?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Primestone?' WHERE option_text = 'Cooking';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Thunderhorn?' WHERE option_text = 'Where is Elder Primestone?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Thunderhorn?' WHERE option_text = 'Where is Elder Thunderhorn?';
UPDATE gossip_menu_option SET option_text = 'Fabbro' WHERE option_text = 'Blacksmithing';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Bladeleaf?' WHERE option_text = 'Where is Elder Bladeleaf?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Bronzebeard?' WHERE option_text = 'Where is Elder Bronzebeard?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Hammershout?' WHERE option_text = 'Where is Elder Hammershout?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Starweave?' WHERE option_text = 'Where is Elder Starweave?';
UPDATE gossip_menu_option SET option_text = 'Alchimia' WHERE option_text = 'Alchemy';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder High Mountain?' WHERE option_text = 'Where is Elder High Mountain?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Moonwarden?' WHERE option_text = 'Where is Elder Moonwarden?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Wheathoof?' WHERE option_text = 'Where is Elder Wheathoof?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Windtotem?' WHERE option_text = 'Where is Elder Windtotem?';
UPDATE gossip_menu_option SET option_text = 'Guerriero' WHERE option_text = 'Warrior';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Wanikaya?' WHERE option_text = 'Where is Elder Wanikaya?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Sandrene?' WHERE option_text = 'Where is Elder Sandrene?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Morthie?' WHERE option_text = 'Where is Elder Morthie?';
UPDATE gossip_menu_option SET option_text = 'Stregone' WHERE option_text = 'Warlock';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Nightwind?' WHERE option_text = 'Where is Elder Nightwind?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Stonespire?' WHERE option_text = 'Where is Elder Stonespire?';
UPDATE gossip_menu_option SET option_text = 'Sciamano' WHERE option_text = 'Shaman';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Hammershout?' WHERE option_text = 'Where is Elder Hammershout?';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Goldwell?' WHERE option_text = 'Where is Elder Goldwell?';
UPDATE gossip_menu_option SET option_text = 'Assassino' WHERE option_text = 'Rogue';
UPDATE gossip_menu_option SET option_text = 'Dov\'è Elder Jarten?' WHERE option_text = 'Where is Elder Jarten?';
UPDATE gossip_menu_option SET option_text = 'Prete' WHERE option_text = 'Priest';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Darkhorn?' WHERE option_text = 'Where is Elder Darkhorn?';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Graveborn?' WHERE option_text = 'Where is Elder Graveborn?';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Ironband?' WHERE option_text = 'Where is Elder Ironband?';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Moonstrike?' WHERE option_text = 'Where is Elder Moonstrike?';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Wheathoof?' WHERE option_text = 'Where is Elder Wheathoof?';
UPDATE gossip_menu_option SET option_text = 'Paladino' WHERE option_text = 'Paladin';
UPDATE gossip_menu_option SET option_text = 'Dov\è Elder Darkcore?' WHERE option_text = 'Where is Elder Darkcore?';

-- By Giridhar