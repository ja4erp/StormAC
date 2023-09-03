--[[
         __                     
   _____/ /_____  _________ ___ 
  / ___/ __/ __ \/ ___/ __ `__ \
 (__  ) /_/ /_/ / /  / / / / / /
/____/\__/\____/_/  /_/ /_/ /_/                           
]]--

StormACS = {
	

	
	PrintConnecting = true,

	KickMessage = "Bye ;)", -- ban / kick mensaje

	ServerName 	= "SERVER", -- 

	License 	= "", 

	Version = "1.0", -- Do not change/No modificar!!! 
	 
	BanToken = true,

	Antivpn = false,

	Log = {

		Discord = { -- Set your webhook for logs/Pon tu webhook para las logs
			enable = true,
			image = true,
			webhook_ban 	= "",
			webhook_kick 	= "",
			webhook_warn 	= "",
			webhook_image 	= "",
			webhook_start 	= "",
			webhook_vpn 	= "",
		},

		Chat = {
			enable = true,  --[Ban /Kick]
		},

		Console = {
			enable = true --[Ban /Kick / Warn]
		},

		AdminAbuse = true
	},

	GiveWeaponsProtection = {

		Enable = true,
		
		MaxWeaponAmmo = 250,
	},

	AntiClearPedTasks = false,

	NoParticles = true,

	CheckWordBlacklist = true,

	BypassAdmin = {
--		"steam:000000000000000",
	},
}

Lang = {
        ["Antivpn_join"]                        = "We are checking your IP.",
        ["Antivpn_not_find"]                    = "We couldn't find your IP address.",
        ["Antivpn_player_use"]                  = "You are using a VPN, deactivate it and try again.",
		["regenerating_file_ban.json"] 			= "Your bans.json is missing, Regenerating your bans.json file!",
		["corrupted_file_ban.json"] 			= "Your bans.json is corrupted, Regenerating your bans.json file!",
		["player"] 								= "Player: ",
		["banned"] 								= " : was banned",
		["connecting"]							= " connecting in to the server",
		["player_name_not_available"] 			= "Player Name is not available",
		["title_webhook_banned"] 				= "Banned",
		["title_webhook_kicked"]				= "Kicked",
		["title_webhook_warning"] 				= "Warning",
		["title_webhook_image"] 				= "Image",
		["log_console:warning"] 				= " ^1Warning^0 ",
		["log_console:kicked"] 					= " ^3Kicked^0 ",
		["log_console:banned"] 					= " ^1Banned^0 ",
		["detection"] 							= " Detection: ",
		["you_is_banned_from_this_server"] 		= " You is banned from this server",
		["connecting_banned_tokens"] 			= " tried an anticheat bypass but is banned by token",
		["connecting_banned_identifier"] 		= " it is trying to connect but it is banned",
		["caused_blacklist_explosion"] 			= "The player caused an explosion with a ",
		["and_was_detected"] 					= " and was detected ",
		["caused_silent_explosion"] 			= "The player caused silent explosion and was detected ",
		["caused_invisible_explosion"] 			= "The player caused invisible explosion and was detected ",
		["caused_oneshot_explosion"] 			= "The player caused oneshot explosion and was detected ",
		["spawned_blacklisted_entity"] 			= " The player spawned a blacklisted entity ",
		["spawned_too_many_peds"] 				= "The player spawned too many peds and was detected",
		["spawned_too_many_vehicle"] 			= "The player spawned too many vehicles and was detected",
		["giveweapon_event_give"] 				= "The player gave weapons to another player and was detected",
		["giveweapon_event_giveammo"] 			= "The player has given ammunition to a player and has been detected",
		["giveweapon_event_remove"] 			= "The player tried to remove the weapons from a player and was detected",
		["giveweapon_event_removeall"] 			= "The player tried to remove everyone's weapons and has been detected",
		["clear_ped_task"] 						= "Tried to clear ped tasks",
		["trigger_blacklist_event"] 			= "Triggered blacklist events: ",
		["request_screen"] 						= "An admin requested the player screen and it was sent",
		["screen_key"] 							= "The player pressed a blacklisted key and a screen was sent",
		["anti_godmode_ban"]  					= "The player has entered godmode and has been detected",
		["anti_spectate_ban"] 					= "The player tried to spectate and was detected",
	    ["anti_rape_player_ban"] 				= "The player tried to make RapePlayer and it was detected",
	    ["anti_nui_dev_ban"] 					= "The player opened the Nui Devtool and it was detected" ,
		["giveweapon_warn"] 					= "The player tried to get a weapon and was detected",
		["menu_injection_ban"] 					= "The player tried to inject a menu and it was detected",
		["freeze_resource_ban"] 				= "The player tried to freeze a resource and it was detected",
		["word_blacklist_kick"] 				= "The player send a blacklist word and it was detected",
		["refresh_table_config"]				= "Config table Rafreshed",
		["refresh_server_config"]				= "Config Server Rafreshed",
		["anti_godmode_admin"] 					= "**[Admin Abuse]**-- The player has entered godmode and has been detected",
		["anti_rape_player_abuse"] 				= "**[Admin Abuse]**-- The player tried to make RapePlayer and it was detected",
		["anti_nui_dev_abuse"] 					= "**[Admin Abuse]**-- The player opened the Nui Devtool and it was detected" ,
		["giveweapon_warn_abuse"] 				= "**[Admin Abuse]**-- The player tried to get a weapon and was detected",
		["menu_injection_abuse"]				= "**[Admin Abuse]**-- The player tried to inject a menu and it was detected",
		["caused_oneshot_explosion_abuse"] 		= "**[Admin Abuse]**-- The player caused oneshot explosion and was detected ",
		["spawned_too_many_peds_abuse"]  		= "**[Admin Abuse]**-- The player spawned too many peds and was detected",
		["trigger_blacklist_event_abuse"] 		= "**[Admin Abuse]**-- Triggered blacklist events: ",
		["word_blacklist_kick_abuse"] 			= "**[Admin Abuse]**-- The player send a blacklist word and it was detected",
		["giveweapon_event_give_abuse"] 		= "**[Admin Abuse]**-- The player gave weapons to another player and was detected",
		["giveweapon_event_remove_abuse"] 		= "**[Admin Abuse]**-- The player tried to remove the weapons from a player and was detected",
		["giveweapon_event_removeall_abuse"] 	= "**[Admin Abuse]**-- The player tried to remove everyone's weapons and has been detected",
		["clear_ped_task_abuse"] 				= "**[Admin Abuse]**-- Tried to clear ped tasks",
		["spawned_too_many_vehicle_abuse"] 		= "**[Admin Abuse]**-- The player spawned too many vehicles and was detected",
		["spawned_blacklisted_entity_abuse"] 	= "**[Admin Abuse]**-- The player spawned a blacklisted entity",
		["caused_invisible_explosion_abuse"] 	= "**[Admin Abuse]**-- The player caused invisible explosion and was detected ",
		["caused_silent_explosion_abuse"] 		= "**[Admin Abuse]**-- The player caused silent explosion and was detected ",
		["caused_blacklist_explosion_abuse"] 	= "**[Admin Abuse]**-- The player caused an explosion with a ",
	}
 
--[[
Lang = {
	["Antivpn_join"] 	            		= "Estamos comprobando tu ip.",
	["Antivpn_not_find"] 		        	= "No pudimos encontrar su dirección IP.",
	["Antivpn_player_use"] 			        = "Está utilizando VPN, desactívelo y vuelva a intentarlo",
    ["regenerating_file_ban.json"] 			= "Falta su bans.json. ¡Regenerando su archivo bans.json!",
    ["corrupted_file_ban.json"] 			= "¡Su bans.json está dañado, regenerando su archivo bans.json!",
	["player"] 								= "Jugador: ",
	["banned"] 								= " : fue baneado",
	["connecting"]							= " conectando al servidor",
	["player_name_not_available"] 			= "El nombre del jugador no está disponible",
	["title_webhook_banned"] 				= "Baneado",
	["title_webhook_kicked"]				= "Kickeado",
	["title_webhook_warning"] 				= "Alerta",
	["title_webhook_image"] 				= "Imagen",
	["log_console:warning"] 				= " ^1Advertencia^0 ",
	["log_console:kicked"] 					= " ^3Kickeado^0 ",
	["log_console:banned"] 					= " ^1Baneado^0 ",
	["detection"] 							= " Detección: ",
	["you_is_banned_from_this_server"] 		= " Estás baneado de este servidor",
	["connecting_banned_tokens"] 			= " intentó un bypass anticheat pero está prohibido por token",
	["connecting_banned_identifier"] 		= " esta intentando conectarse pero esta baneado",
	["caused_blacklist_explosion"] 			= "El jugador causó una explosión con un ",
	["and_was_detected"] 					= " y fue detectado ",
	["caused_silent_explosion"] 			= "El reproductor provocó una explosión silenciosa y fue detectado. ",
	["caused_invisible_explosion"] 			= "El jugador causó una explosión invisible y fue detectado. ",
	["caused_oneshot_explosion"] 			= "El jugador causó explosión en un disparo y fue detectado. ",
	["spawned_blacklisted_entity"] 			= " El jugador generó una entidad en la lista negra. ",
	["spawned_too_many_peds"] 				= "El jugador generó demasiados peds y fue detectado",
	["spawned_too_many_vehicle"] 			= "El jugador generó demasiados vehículos y fue detectado.",
	["giveweapon_event_give"] 				= "El jugador le dio armas a otro jugador y fue detectado",
	["giveweapon_event_giveammo"] 			= "El jugador le ha dado munición a un jugador y ha sido detectado",
	["giveweapon_event_remove"] 			= "El jugador intentó quitarle las armas a un jugador y fue detectado.",
	["giveweapon_event_removeall"] 			= "El jugador intentó quitarles las armas a todos y ha sido detectado.",
	["clear_ped_task"] 						= "Intenté borrar las tareas de ped",
	["trigger_blacklist_event"] 			= "Eventos de lista negra activados: ",
	["request_screen"] 						= "Un administrador solicitó la captura de pantalla del jugador y se envió",
	["screen_key"] 							= "El jugador presionó una tecla de la lista negra y se envió una pantalla.",
	["anti_godmode_ban"]  					= "El jugador ha entrado en godmode y ha sido detectado.",
   	["anti_spectate_ban"] 					= "El jugador intentó espectearse y fue detectado.",
   	["anti_rape_player_ban"] 				= "El jugador intentó hacer RapePlayer y fue detectado.",
   	["anti_nui_dev_ban"] 					= "El jugador abrió el Nui Devtool y fue detectado." ,
   	["giveweapon_warn"] 					= "El jugador intentó conseguir un arma y fue detectado.",
	["menu_injection_ban"] 					= "El jugador intentó inyectar un menú y se detectó.",
	["freeze_resource_ban"] 				= "El jugador intentó parar un recurso y se detectó",
	["word_blacklist_kick"] 				= "El jugador envió una palabra de lista negra y fue detectado.",
	["refresh_table_config"]				= "Tabla de configuración recargada",
	["refresh_server_config"]				= "Servidor de configuración recargado",
	["anti_godmode_admin"] 					= "**[Admin Abuse]**-- El jugador ha entrado en godmode y ha sido detectado.",
	["anti_rape_player_abuse"] 				= "**[Admin Abuse]**-- El jugador intentó hacer RapePlayer y fue detectado.",
	["anti_nui_dev_abuse"] 					= "**[Admin Abuse]**-- El jugador abrió el Nui Devtool y fue detectado." ,
	["giveweapon_warn_abuse"] 				= "**[Admin Abuse]**-- El jugador intentó conseguir un arma y fue detectado.",
	["menu_injection_abuse"]				= "**[Admin Abuse]**-- El jugador intentó inyectar un menú y se detectó.",
	["caused_oneshot_explosion_abuse"] 		= "**[Admin Abuse]**-- El jugador causó explosión en un disparo y fue detectado	",
	["spawned_too_many_peds_abuse"]  		= "**[Admin Abuse]**-- El jugador generó demasiados peds y fue detectado",
	["trigger_blacklist_event_abuse"] 		= "**[Admin Abuse]**-- Eventos de lista negra activados: ",
	["word_blacklist_kick_abuse"] 			= "**[Admin Abuse]**-- El jugador envió una palabra de lista negra y fue detectado.",
	["giveweapon_event_give_abuse"] 		= "**[Admin Abuse]**-- El jugador le dio armas a otro jugador y fue detectado",
	["giveweapon_event_remove_abuse"] 		= "**[Admin Abuse]**-- El jugador intentó quitarle las armas a un jugador y fue detectado.",
	["giveweapon_event_removeall_abuse"] 	= "**[Admin Abuse]**-- El jugador intentó quitarles las armas a todos y ha sido detectado.",
	["clear_ped_task_abuse"] 				= "**[Admin Abuse]**-- Intenté borrar las tareas de ped",
	["spawned_too_many_vehicle_abuse"] 		= "**[Admin Abuse]**-- El jugador generó demasiados vehículos y fue detectado.",
	["spawned_blacklisted_entity_abuse"] 	= "**[Admin Abuse]**-- El jugador generó una entidad en la lista negra.",
	["caused_invisible_explosion_abuse"] 	= "**[Admin Abuse]**-- El jugador causó una explosión invisible y fue detectado ",
	["caused_silent_explosion_abuse"] 		= "**[Admin Abuse]**-- El reproductor provocó una explosión silenciosa y fue detectado ",
	["caused_blacklist_explosion_abuse"] 	= "**[Admin Abuse]**-- El jugador causó una explosión con un ",
	
}
]]--
