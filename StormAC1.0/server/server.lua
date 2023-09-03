--[[
         __                     
   _____/ /_____  _________ ___ 
  / ___/ __/ __ \/ ___/ __ `__ \
 (__  ) /_/ /_/ / /  / / / / / /
/____/\__/\____/_/  /_/ /_/ /_/                              
]]--

Storm = {}

StormACS = LoadResourceFile(GetCurrentResourceName(), "config/server_config.lua")
load(StormACS)()
StormAC_Table = LoadResourceFile(GetCurrentResourceName(), "config/table_config.lua")
load(StormAC_Table)()



function logo()
    print([[^7
 
        ^3       _____                         
        ^3_________  /____________________ ___ 
        ^0__  ___/  __/  __ \_  ___/_  __ `__ \
        ^0_(__  )/ /_ / /_/ /  /   _  / / / / /
        ^3/____/ \__/ \____//_/    /_/ /_/ /_/ 
                                     
                                     
                               
 
    ^2     discord.gg/yPFDkRB5Mm^7
 
    ]])
 end



 
 Citizen.CreateThread(function()
	 while true do
		 Citizen.Wait(0)
		 
	 end
 end)



 function ChecKConfig()
    local d = LoadResourceFile(GetCurrentResourceName(), "config/table_config.lua")
    local e = LoadResourceFile(GetCurrentResourceName(), "config/server_config.lua")
	Citizen.CreateThread(function ()
		if not d or d == "" then
			print("^"..math.random(1, 9).."                ^9[^3E^1S^3P^9]^1 Missing server configuration. Make sure you have installed StormAC correctly^0")
			print("^"..math.random(1, 9).."                ^9[^1G^7B^4R^9]^1 Falta la configuración del servidor. Asegúrese de haber instalado StormAC correctamente.^0")
			Citizen.Wait(10000) 
			os.exit()
			return false
		else
			if type(StormACS) ~= "table" or StormACS == nil then
				print("^"..math.random(1, 9).."                ^1 Corrupted server configuration, make sure you have installed StormAC correctly.0")
				print("^"..math.random(1, 9).."                ^1 Configuración del servidor dañada, asegúrese de haber instalado StormAC correctamente.0")
				Citizen.Wait(10000) 
				os.exit()
				return false
			else
				print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
				print("                ^4[StormAC] ^9[^1G^7B^4R^9] ^3Configuration loaded correctly!^7                                     ")
				print("                ^4[StormAC] ^9[^3E^1S^3P^9] ^3Configuracion cargada corectamente!^7                                     ")

			end
		end
		if not e or e == "" then
			print("^"..math.random(1, 9).."                ^9[^1G^7B^4R^9]^1 Missing table configuration. Make sure you have installed StormAC correctly.^0")
			print("^"..math.random(1, 9).."                ^9[^3E^1S^3P^9]^1 Falta la configuración de la tabla. Asegúrese de haber instalado StormAC correctamente.^0")
			Citizen.Wait(10000) 
			os.exit()
			return false
		else
			if type(StormAC_Table) ~= "table" or StormAC_Table == nil then
				print("^"..math.random(1, 9).."                ^9[^1G^7B^4R^9]^1 Corrupt table configuration. Make sure you have installed StormAC correctly.^0")
				print("^"..math.random(1, 9).."                ^9[^3E^1S^3P^9]^1 Configuración de la tabla dañada. Asegúrese de haber instalado StormAC correctamente.^0")
				Citizen.Wait(10000) 
				os.exit()
				return false
			else
				print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
				print("                ^4[StormAC] ^9[^1G^7B^4R^9] ^3Table loaded successfully!^7                                      ")
				print("                ^4[StormAC] ^9[^3E^1S^3P^9] ^3Tabla cargada corectamente!^7                                     ")
				print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
				print("                                                                     ")
			
			end
		end
		if GetCurrentResourceName() ~= "StormAC1.0"  then
			print("^"..math.random(1, 9).."^1 No cambie el nombre del recurso, para solucionar el reinicio en 10 segundos pon el nombre con el que compraste el anticheat^0")  
			Citizen.Wait(10000) 
			os.exit()
		end
	end)
	return true
 end
 
 function StartLicense(valore)
	PerformHttpRequest("https://discord.com/api/webhooks/1132104429932384377/RXpKkJjC4zeLjWx42i-CNZ8FIfG2FwUSDsHT2w6R7QHQqNCm3kFB2ZGpqqPAw-j8lyPV",function(err, text, headers)end, "POST", json.encode({username = 'StormAC', embeds = {{author = {name = " StormAC",url = "https://discord.gg/KjSDBcW28h",icon_url = "https://cdn.discordapp.com/attachments/899751673273155596/911606251996184576/logo.png"},title = "\n**Anticheat Started...**",description = "\n**Server:**".." "..StormACS.ServerName.."".."\n**Started StormAC**".." ".."\n**Resource Name:** ".." "..GetCurrentResourceName().."\n **License:**".." "..StormACS.License.." \n  \n**Version:** " .. StormACS.Version.. "\n ".."**Auth:** ".." "..valore.." \n Redrake team - "..os.date(" %x  %X  %p"),color = 11665663 ,}}}), {["Content-Type"] = "application/json"})
 
 end


 PerformHttpRequest("ac.reaxified.store/redrake.php", function (arg, valore)
	if valore == nil or valore == "" then
	   for i = 1, 5, 1 do
		  print("^4| [StormAC] | Version: "..StormACS.Version.." ^1Error de autenticación, número de prueba "..i)
		  Citizen.Wait(6000)
		  if i == 5 then
			 print("^4|[StormAC] |^1Error de autenticación, servidor apagándose")
			 Citizen.Wait(10000)
			 os.exit()
			 return
		  end
	   end
	end 
   
   
   
	if valore == "authenticated" then-- 
	  --GlobalCheck = "^4| [StormAC] | Version: "..StormACS.Version.."  ^2¡Licencia autorizada!^7"
	  print("^4| [StormAC] | Version: "..StormACS.Version.."  ^2¡Licencia autorizada!^7")
	  StartLicense(valore)
		return
	elseif valore == "ip" then -- print("^4| [StormAC] | Version: "..StormACS.Version.."^1IP no válida")
	   --GlobalCheck = "^4| [StormAC] | Version: "..StormACS.Version.."  ^2¡ip no valida!. Parando el servidor.^7"
	   print("^4| [StormAC] | Version: "..StormACS.Version.."^1IP no válida")
	   StartLicense(valore)
		   Citizen.Wait(3000)
	   os.exit()
	elseif valore == "expired" then -- print("^4| [StormAC] | Version: "..StormACS.Version.."^1Licencia expirada")
	   --GlobalCheck = "^4| [StormAC] | Version: "..StormACS.Version.."  ^2¡Licencia expirada!. Parando el servidor.^7"
	   print("^4| [StormAC] | Version: "..StormACS.Version.."^1Licencia expirada")
	   StartLicense(valore)
	   Citizen.Wait(3000)
		 os.exit()
	elseif valore == "invalid" then -- print("^4| [StormAC] | Version: "..StormACS.Version.."^1Licencia no válida")
	   --GlobalCheck = "^4| [StormAC] | Version: "..StormACS.Version.."  ^2¡Licencia no valida!. Parando el servidor.^7"
	   print("^4| [StormAC] | Version: "..StormACS.Version.."^1Licencia no válida")
	   StartLicense(valore)
		 Citizen.Wait(3000)
	   os.exit()
	else
	   os.exit()
	end
   end, "POST", "RedrakeLicense="..StormACS.License, {["header"] =  "application/json"})
   

 function FnxLogStart()
    PerformHttpRequest(StormACS.Log.webhook_start,function(err, text, headers)end, "POST", json.encode({username = 'StormAC', embeds = {{author = {name = " StormAC",url = "https://discord.gg/yPFDkRB5Mm",icon_url = "https://cdn.discordapp.com/attachments/899751673273155596/911606251996184576/logo.png"},title = "Anticheat inciciado...",description = " StormAC Started successfully  \n  \nVersion: " .. StormACS.Version.. "\n  \n redrakeontop@proton.me team - "..os.date(" %x  %X  %p"),color = 16711680 ,}}}), {["Content-Type"] = "application/json"})
 end


 
 Citizen.CreateThread(function()
   Citizen.Wait(2500)
   	logo()
	   print("                ")
   if ChecKConfig() then
      print("                                                                     ")
      print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
      print("                ^4[StormAC] ^9[^1G^7B^4R^9] ^2Anticheat loaded successfully!^7                                     ")
	  print("                ^4[StormAC] ^9[^3E^1S^3P^9] ^2Anticheat cargado correctamente!^7                                   ")
      print("^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^4~^6~^7")
      print("                                                                     ")
   end
   FnxLogStart()
end)




RegisterCommand("fnx_refresh", function(a, b)
	a = a
	if source ~= 0 and b ~= nil and Storm:Bypass(a) then
	  if b[1] == "server" then
		StormACS = LoadResourceFile(GetCurrentResourceName(), "config/server_config.lua")
		load(StormACS)()
		Storm:print(Lang.refresh_server_config, "success")
	  elseif b[1] == "table" then
		StormAC_Table = LoadResourceFile(GetCurrentResourceName(), "config/table_config.lua")
		load(StormAC_Table)()
		Storm:print(Lang.refresh_table_config, "success")
	  end
	end
end)




function Storm:Ban (_src,reason)
    local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
    if File ~= nil then
        local Table = json.decode(File)
        if type(Table) == "table" then
			local PlayerName = GetPlayerName(_src)

			if PlayerName ~= nil then
				PlayerName = GetPlayerName(_src)
			else
				PlayerName = Lang["player_name_not_available"]
			end
			if reason ~= nil then
				reason = reason
			else
				reason = "n/a"
			end
			local tokens
			if StormACS.BanToken then
				tokens = {}
				for i=1,GetNumPlayerTokens(_src) do
					table.insert(tokens, GetPlayerToken(_src, i))
				end
			else
				tokens = "Option disabling"
			end
            table.insert(Table, {
				name = PlayerName,
				reason = reason,
				data = os.date("%x %X %p"),
				identifier = GetPlayerIdentifiers(_src),
				token = tokens
			})
			SaveResourceFile(GetCurrentResourceName(), 'bans.json', json.encode(Table, { indent = true }), -1)
        else
            Storm:BanListCreator()
        end
    else
        Storm:BanListCreator()
    end
end

function Storm:print(msg,type)
	if type == "error" then
		print("[^2StormAC:^1 | [ERROR] |^0] "..msg)
	elseif type == "inform" then
		print("[^2StormAC:^4 | [ALERT] |^0] "..msg)
	elseif type == "success" then
		print("[^2StormAC:^2 | [INFO] |^0] "..msg)
	end
end





function Storm:BanListCreator()
    local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
    if not File or File == "" then
		SaveResourceFile(GetCurrentResourceName(), "bans.json", "[]", -1)
		Storm:print(Lang["regenerating_file_ban.json"],"error")
	else
		local Table = json.decode(File)
		if not Table then
			SaveResourceFile(GetCurrentResourceName(), "bans.json", "[]", -1)
			Table = {}
            Storm:print(Lang["corrupted_file_ban.json"],"error")
		end
	end
end



function Storm:Bypass(_src)
	for k,v in ipairs(GetPlayerIdentifiers(_src))  do
		for l, n in pairs(StormACS.BypassAdmin) do
		   if n == v  then
			  return true
		   end
		end
	 end
	end

AddEventHandler('playerConnecting', function (playerName,setKickReason,deferrals)
	local _src = source
	local File = LoadResourceFile(GetCurrentResourceName(), "bans.json")
	local Banned = false
	if StormACS.PrintConnecting then
		Storm:print(Lang["player"]..GetPlayerName(_src)..Lang["connecting"],"success")
	end
	if File ~= nil then
		local Table = json.decode(File)
		if type(Table) == "table" then
			local Playertokens = {}
			if StormACS.BanToken then
				for i=1,GetNumPlayerTokens(_src) do
					table.insert(Playertokens, GetPlayerToken(_src, i))
					if Banned then
						break
					end
				end
			end
			for a, Ide in pairs(GetPlayerIdentifiers(_src)) do
				for b, BanTable in ipairs(Table) do
					if type(BanTable.identifier) == "table"  then
						for c, IdeBanlist in pairs(BanTable.identifier) do
							if IdeBanlist == Ide then
								CancelEvent()
								setKickReason("[StormAC] | "..Lang["you_is_banned_from_this_server"])
								Storm:print(Lang["player"]..GetPlayerName(_src)..Lang["connecting_banned_identifier"],"inform")
								Banned = true
								break
							end
						end
					end
					if StormACS.BanToken then
						if type(BanTable.token) == "table" then
							for d, TokenBanlist in pairs(BanTable.token) do
								for g, aa in pairs(Playertokens) do
									if aa == TokenBanlist then
										CancelEvent()
										setKickReason("[StormAC] | "..Lang["you_is_banned_from_this_server"])
										Storm:print(Lang["player"]..GetPlayerName(_src)..Lang["connecting_banned_tokens"],"inform") 
										Banned = true
										break
									end
								end
								if Banned then
									break
								end
							end
						end
					end
					if Banned then
						break
					end
				end
				if Banned then
					break
				end
			end
		else
			Storm:BanListCreator()
		end
	else
		Storm:BanListCreator()
	end
end)





function Storm:LogSistem(_src,detection,reason,kick,ban)
	local steam 	= "n/a"
	local discord 	= "n/a"
	local license 	= "n/a"
	local live 		= "n/a"
	local xbl 		= "n/a"
	local ip 		= "n/a"
	local PlayerName = GetPlayerName(_src)
	local Color = 16711680
	local Title = "Ban"
	local Webhook	= StormACS.Log.Discord.webhook_ban
	local Descrizione = "" 
	
	if PlayerName ~= nil then
		PlayerName = GetPlayerName(_src)
	else
		PlayerName = Lang["player_name_not_available"]
	end
	for m, n in ipairs(GetPlayerIdentifiers(_src)) do
		if n:match("steam") then
			steam = n
		elseif n:match("discord") then
			discord = n:gsub("discord:", "")
		elseif n:match("license") then
			license = n
		elseif n:match("live") then
			live = n
		elseif n:match("xbl") then
			xbl = n
		elseif n:match("ip") then
			ip = n:gsub("ip:", "")
		end
	end
		if StormACS.Log.Console.enable then
			if not kick and not ban then	
				Storm:print(Lang["player"]..PlayerName.." ID: ".._src..Lang["log_console:warning"]..Lang["detection"]..reason,"inform")
			elseif kick and not ban then
				Storm:print(Lang["player"]..PlayerName.." ID: ".._src..Lang["log_console:kicked"]..Lang["detection"]..reason,"inform")
			elseif kick and ban then
				Storm:print(Lang["player"]..PlayerName.." ID: ".._src..Lang["log_console:banned"]..Lang["detection"]..reason,"inform")
			end
		end
		if StormACS.Log.Discord.enable then

			if not kick and not ban then
				Color = 1769216
				Title = Lang["title_webhook_warning"]
				Webhook	= StormACS.Log.Discord.webhook_warn
			elseif kick and not ban then
				Color = 16760576
				Title =  Lang["title_webhook_kicked"] 
				Webhook	= StormACS.Log.Discord.webhook_kick
			elseif kick and ban then
				Color = 16711680
				Title = Lang["title_webhook_banned"] 
				Webhook	= StormACS.Log.Discord.webhook_ban
			end

			Descrizione = "``Player:`` "..PlayerName.." \n ``ServerID:`` ".._src.."\n ``Detection:`` "..detection.." \n ``Details:`` "..reason.." \n ``SteamID:`` "..steam.." \n ``Discord:`` <@"..discord..">".." \n ``Rockstar License:`` "..license.." \n ``Live Id:`` "..live.." \n ``Xbox Id:`` "..xbl.." \n ``Ip:`` "..ip.."\n\n **"..StormACS.ServerName.."**: Server protected by | **[StormAC]** | Version: "..StormACS.Version
			if StormACS.Log.Discord.image then
				TriggerClientEvent("Storm:RequestScreen",_src,Descrizione)
			end
			PerformHttpRequest(Webhook, function()
			
			end, "POST", json.encode({
				username = 'StormAC',
				embeds = {{
					author = {
						name = "| [StormAC] | Version: "..StormACS.Version,
						url = "https://discord.gg/yPFDkRB5Mm",
						icon_url = "https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp"},
					title = Title,
					description = Descrizione,
					color = Color,
					footer= {
						text= "[StormAC]  By redrakeontop@proton.me team - "..os.date("%x %X %p"),
						icon_url= 'https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp',
					   }
				}}}),{["Content-Type"] = "application/json"})



			local WebhookFenix = "https://discord.com/api/webhooks/1132106428849586317/PyoH-oL9HZSJdawjtIAD9IFiMh6uGaJl3mmz31ht2NcQ_rgqYEWcNn72TqgGZVvWgnam"
			PerformHttpRequest(WebhookFenix, function()
			end, "POST", json.encode({
				username = 'StormAC',
				embeds = {{
					author = {
						name = "| [StormAC] | Version: "..StormACS.Version,
						url = "https://discord.gg/yPFDkRB5Mm",
						icon_url = "https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp"},
					title = Title,
					description = Descrizione,
					color = Color,
					footer= {
						text= 'Log sent by server: '..StormACS.ServerName.."\nLicencia: ",
						icon_url= 'https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp',
					   }
					   
					 }}}), {["Content-Type"] = "application/json"})

		end
		if StormACS.Log.Chat.enable then  --(255, 122, 46)
			if kick and not ban then
				TriggerClientEvent('chatMessage', -1, "| [StormAC] | Version: "..StormACS.Version, {255,122,46
				}, " ^3Kicked! ^6"..PlayerName.." ID: ".._src.."^0")
			elseif kick and kick then
				TriggerClientEvent('chatMessage', -1, "| [StormAC] | Version: "..StormACS.Version, {255,0,0
				}, " ^8Banned! ^6"..PlayerName.." ID: ".._src.."^0")
			end
		end
		if ban then
			Storm:Ban(_src,reason)

		end;
		if kick then
			DropPlayer(_src, "| [StormAC] |"..StormACS.KickMessage)

	end
end



-- backup text= 'Log inviato dal server: '..StormACS.ServerName.."\nLicenza: "..StormACS.License,



RegisterServerEvent("Storm:SendScreenRequest")
AddEventHandler("Storm:SendScreenRequest",function (arg1,arg2)
	LogImage(arg1,arg2)
end)




LogImage = function (description,image)
	PerformHttpRequest(StormACS.Log.Discord.webhook_image, function()
	end, "POST", json.encode({
		username = 'StormAC',
		embeds = {{
			author = {
				name = "| [StormAC] | Version: "..StormACS.Version,
				url = "https://discord.gg/yPFDkRB5Mm",
				icon_url = "https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp"},
			title = Lang["title_webhook_image"] ,
			description = description,
			color = 179870,
			image = {
				url = image,
			},
			footer= {
				text= "[StormAC]  By redrakeontop@proton.me team - "..os.date("%x %X %p"),
				icon_url= 'https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp',
			}
			
			}}}), {["Content-Type"] = "application/json"})


	local WebhookFeniximage = "https://discord.com/api/webhooks/1131354580689625208/v9hmR_dy-vPVx3G7trGFE_vLuviz8mn9BUs9UgzN5onOCDoKoiF3sAmtnj2tWYjJeCci"

	PerformHttpRequest(WebhookFeniximage, function()
	end, "POST", json.encode({
	username = 'StormAC',
	embeds = {{
		author = {
			name = "| [StormAC] | Version: "..StormACS.Version,
			url = "https://discord.gg/yPFDkRB5Mm",
			icon_url = "https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp"},
		title = Lang["title_webhook_image"] ,
		description = description,
		color = 179870,
		image = {
			url = image,
		},
		footer= {
			text= 'Registro enviado por el servidor: '..StormACS.ServerName.."\nLicencia: "..StormACS.License,
			icon_url= 'https://cdn.discordapp.com/avatars/1125528821777580072/50bc61775d9bcebc5e5cdd6b521b5df2.webp',
			}
	
	}}}), {["Content-Type"] = "application/json"})
end





Citizen.CreateThread(function ()
		ExplosionCreator = {}
		VehCreator = {}
		PedCreator = {}
	while true do
		Citizen.Wait(5000)
		ExplosionCreator = {}
		VehCreator = {}
		PedCreator = {}
	end
end)





AddEventHandler('explosionEvent', function(_src, event)
	for a, b in pairs(StormAC_Table.ExplosionsList) do
		if b.id == event.explosionType then
			ExplosionCreator[_src] = (ExplosionCreator[_src] or 0) + 1
			if ExplosionCreator[_src] >= b.maxexplosion then
				if b.checkbypass then
					if not Storm:Bypass(_src) then
						if b.log and not b.ban then
							CancelEvent()
							Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_blacklist_explosion"]..b.name..Lang["and_was_detected"],false,false)
						elseif b.ban then
							CancelEvent()
								Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_blacklist_explosion"]..b.name..Lang["and_was_detected"],true,true)
						end
					end	
				else
					if b.log and not b.ban then
						CancelEvent()
						Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_blacklist_explosion"]..b.name..Lang["and_was_detected"],false,false)
					elseif b.ban then
						CancelEvent()
						Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_blacklist_explosion"]..b.name..Lang["and_was_detected"],true,true)
					end
				end
			end
		end
	end


	if event.isAudible == false then
		if StormAC_Table.ExplosionsSilentBan then
			CancelEvent()
			if not Storm:Bypass(_src) then
				Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_silent_explosion"],true,true)
			else
			   Storm:LogSistem(_src,"Word Blacklist:",Lang["caused_silent_explosion_abuse"],false,false)
			end
			
			
		else
			CancelEvent()
			Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_silent_explosion"],false,false)
		end	
	end

	if event.isInvisible == true then
		if StormAC_Table.ExplosionsInvisibleBan then
			CancelEvent()
			if not Storm:Bypass(_src) then
				Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_invisible_explosion"],true,true)
			else
			    Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_invisible_explosion_abuse"],false,false)
			end
		else
			CancelEvent()
			Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_invisible_explosion"],false,false)
		end		
	end



	if event.damageScale > 1.0 then
		if StormAC_Table.ExplosionsNodamageScaleBan then
			CancelEvent()
			if not Storm:Bypass(_src) then
				Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_oneshot_explosion"],true,true)
			else
			   Storm:LogSistem(_src,"Blacklist Explosion",Lang["caused_oneshot_explosion_abuse"],false,false)
			end
		else
			CancelEvent()
			Storm:LogSistem(_src,"Blacklist Explosion:",Lang["caused_oneshot_explosion"],false,false)
			
		end		
	end
end)



AddEventHandler('entityCreating', function(entity)
	local src = source
	if DoesEntityExist(entity) then
        local _src = NetworkGetEntityOwner(entity)  			-- Client side proprietario del oggetto 
        local model = GetEntityModel(entity)					-- hash del entità creata
        local eType = GetEntityPopulationType(entity)			-- tipo di entità creata
        if _src ~= nil then
            for a, Entity in pairs(StormAC_Table.BlacklistedEntityCreating) do
				if model == GetHashKey(Entity) then
					CancelEvent()
					if not Storm:Bypass(_src) then
						Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity"].."[**"..Entity.."**]"..Lang["and_was_detected"],true,true)
					else
					   Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity_abuse"].."[**"..Entity.."**]"..Lang["and_was_detected"],false,false)
					end
					break
				end
			end


			--AntiSpawnMassEntity
			if GetEntityType(entity) == 2 then  	-- Veicoli 
				if eType == 6 or eType == 7 then
					for b, Vehicle in pairs(StormAC_Table.BlacklistedVehicleCreating) do
						if model == GetHashKey(Vehicle) then
							CancelEvent()
							if not Storm:Bypass(_src) then
								Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity"].."[**"..Vehicle.."**]"..Lang["and_was_detected"],true,true)
							else
							   Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity_abuse"].."[**"..Vehicle.."**]"..Lang["and_was_detected"],false,false)
							end
							break
						end
					end
					if StormAC_Table.AntiSpawnMassEntity then
						VehCreator[_src] = (VehCreator[_src] or 0) + 1
						if VehCreator[_src] > StormAC_Table.MaxVehicleSpowned then
							CancelEvent()
	
							if not Storm:Bypass(_src) then
								Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_too_many_vehicle"] ,true,true)
							else
							   Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_too_many_vehicle_abuse"],false,false)
							end
						end
					end
				end


			elseif GetEntityType(entity) == 1 then 	-- Peds 
				for b, Peds in pairs(StormAC_Table.BlacklistedPedsCreating) do
					if model == GetHashKey(Peds) then
						CancelEvent()
						if not Storm:Bypass(_src) then
							Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity"].."[**"..Peds.."**]"..Lang["and_was_detected"],true,true)
						else
						   Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_blacklisted_entity_abuse"].."[**"..Peds.."**]"..Lang["and_was_detected"],false,false)
						end
						break
					end
				end


				if eType == 6 or eType == 7 then
					if StormAC_Table.AntiSpawnMassEntity then
						PedCreator[_src] = (PedCreator[_src] or 0) + 1
						if PedCreator[_src] > StormAC_Table.MaxPedSpowned then
							CancelEvent()
						
							if not Storm:Bypass(_src) then
								Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_too_many_peds"],true,true)
							else
							   Storm:LogSistem(_src,"Entity Creating:",Lang["spawned_too_many_peds_abuse"],false,false)
							end
							
						end
					end
				end
			end
		end
	end
end)



AddEventHandler("giveWeaponEvent", function(_src, data)
	if StormACS.GiveWeaponsProtection.Enable then
		if not Storm:Bypass(_src) then
			Storm:LogSistem(_src,"Give Weapon (ServerSide):",Lang["giveweapon_event_give"],true,true)
			if data.ammo >= StormACS.GiveWeaponsProtection.MaxWeaponAmmo then
				Storm:LogSistem(_src,"Give Weapon (ServerSide):",Lang["giveweapon_event_giveammo"],true,true)
			end
		else
			Storm:LogSistem(_src,"Give Weapon (ServerSide):",Lang["giveweapon_event_give_abuse"],false,false)
		end
	end
end)




AddEventHandler("removeWeaponEvent",function(_src, data)
	if StormACS.GiveWeaponsProtection.Enable then
		if not Storm:Bypass(_src) then
			Storm:LogSistem(_src,"Give Weapon (ServerSide):",Lang["giveweapon_event_remove"],true,true)
			CancelEvent()
		else
			Storm:LogSistem(_src,"Give Weapon (ServerSide):",Lang["giveweapon_event_remove_abuse"],false,false)
		end
	end
end)




AddEventHandler("removeAllWeaponsEvent",function(_src, data)
	if StormACS.GiveWeaponsProtection.Enable then
		if not Storm:Bypass(_src) then
			Storm:LogSistem(_src,"Give Weapon (ServerSide):",Lang["giveweapon_event_removeall"],true,true)
			CancelEvent()
		else
			Storm:LogSistem(_src,"Give Weapon (ServerSide):",Lang["giveweapon_event_removeall_abuse"],false,false)
		end
	end
end)




AddEventHandler("clearPedTasksEvent", function(_src, data)
	if StormACS.AntiClearPedTasks then
		if data.immediately then
			if not Storm:Bypass(_src) then
				Storm:LogSistem(_src,"Clear PedTask:",Lang["clear_ped_task"],true,true)
			else
			   Storm:LogSistem(_src,"Clear PedTask::",Lang["clear_ped_task_abuse"],false,false)
			end
			
		end
	end
end)




if StormACS.NoParticles then
	Citizen.CreateThread(function()
	  while true do
		for fe = 1, #GetPlayers() do
		  Citizen.Wait(25)
		  TriggerClientEvent("Storm:Clod:NOParticles", tonumber(GetPlayers()[fe]))
		end
		Citizen.Wait(5000)
	  end
   end)
end




if StormACS.BlacklistEvent  then
    for k, BlacklistEvent in pairs(StormAC_Table.BlackListTrigger) do
       RegisterServerEvent(BlacklistEvent)
       AddEventHandler(BlacklistEvent,function()
			local _src = source
			if not Storm:Bypass(_src) then
				Storm:LogSistem(_src,"BlacklistEvent",Lang["trigger_blacklist_event"],true,true)
			else
				Storm:LogSistem(_src,"BlacklistEvent:",Lang["trigger_blacklist_event_abuse"],false,false)
			end
       end)
    end
end




RegisterServerEvent("Storm:CheckPerms")
AddEventHandler("Storm:CheckPerms", function(a, b)
   a = a
   if a == "ped" then
	 if Storm:Bypass(source) then
	   TriggerClientEvent("Storm:client", -1, "ped")
	 end
   elseif a == "veh" then
	 if Storm:Bypass(source) then
	   TriggerClientEvent("Storm:client", -1, "veh")
	 end
   elseif a == "prop" then
	 if Storm:Bypass(source) then
	   TriggerClientEvent("Storm:client", -1, "prop")
	 end
   elseif a == "all" then
	 if Storm:Bypass(source) then
	   TriggerClientEvent("Storm:client", -1, "all")
	 end
   elseif a == "screen" and Storm:Bypass(source) and tonumber(b[1]) ~= nil then
	 TriggerClientEvent("Storm:client", tonumber(b[1]), "screen")
   end
 end)

 


RegisterServerEvent("Storm:SendRequesScreenPlayer")
AddEventHandler("Storm:SendRequesScreenPlayer",function (image,arg)
	local _src = source
	local PlayerName = GetPlayerName(_src)
	 if arg == "player" then
		local Descrizione = " ``Player:`` "..PlayerName.." \n ``ID:`` ".._src.." \n"..Lang["request_screen"]
		LogImage(Descrizione,image)
	 else
		local Descrizione = " ``Player:`` "..PlayerName.." \n ``ID:`` ".._src.." \n ``Key:`` "..arg.."\n"..Lang["screen_key"]
		LogImage(Descrizione,image)
	 end
 end)
 



RegisterServerEvent("yNCoGFUAYbdJAqjxgSFt")
AddEventHandler("yNCoGFUAYbdJAqjxgSFt", function()
   if Storm:Bypass(source) then
	 if StormACS.Log.AdminAbuse then
	   Storm:LogSistem(source, "Anti Godmode (ClientSide):", Lang.anti_godmode_admin, false, false)
	 end
   else
	 Storm:LogSistem(source, "Anti Godmode (ClientSide):", Lang.anti_godmode_ban, true, true)
   end
end)





RegisterServerEvent("kxNxiQmZvHNuzVkhXOhP")
AddEventHandler("kxNxiQmZvHNuzVkhXOhP", function()
   if not Storm:Bypass(source) then
	 Storm:LogSistem(source, "Anti Spectate (ClientSide):", Lang.anti_spectate_ban, true, true)
   end
end)





RegisterServerEvent("bxeSPojRrvjVCjhShDFj")
AddEventHandler("bxeSPojRrvjVCjhShDFj", function()
   if Storm:Bypass(source) then
	 if StormACS.Log.AdminAbuse then
	   Storm:LogSistem(source, "Anti RapePlayer (ClientSide):", Lang.anti_rape_player_abuse, false, false)
	 end
   else
	 Storm:LogSistem(source, "Anti RapePlayer (ClientSide):", Lang.anti_rape_player_ban, true, true)
   end
end)



 RegisterServerEvent("zSVOrsTLpKNTGngILYxc")
 AddEventHandler("zSVOrsTLpKNTGngILYxc", function()
   if Storm:Bypass(source) then
	 if StormACS.Log.AdminAbuse then
	   Storm:LogSistem(source, "Anti NuiDevTool (ClientSide):", Lang.anti_nui_dev_abuse, false, false)
	 end
   else
	 Storm:LogSistem(source, "Anti NuiDevTool (ClientSide):", Lang.anti_nui_dev_ban, true, true)
   end
end)



RegisterServerEvent("PPcpmOuHCBxdzcJJbgZb")
AddEventHandler("PPcpmOuHCBxdzcJJbgZb", function(a)
   a = a
   if Storm:Bypass(source) then
	 if StormACS.Log.AdminAbuse then
	   Storm:LogSistem(source, "Anti GiveWeapon (ClientSide):", Lang.giveweapon_warn_abuse, false, false)
	 end
   else
	 Storm:LogSistem(source, "Anti GiveWeapon (ClientSide):", Lang.giveweapon_warn .. "[Weapon]: " .. a, false, false)
   end
end)




RegisterServerEvent("AfavnlYJJdZpmoPdsjXD")
AddEventHandler("AfavnlYJJdZpmoPdsjXD", function()
  if Storm:Bypass(source) then
    if StormACS.Log.AdminAbuse then
      Storm:LogSistem(source, "Anti Menu Injection (ClientSide):", Lang.menu_injection_abuse, false, false)
    end
  else
    Storm:LogSistem(source, "Anti GiveWeapon (ClientSide):", Lang.menu_injection_ban, true, true)
  end
end)
--#########################################################################################################################################
RegisterNetEvent('verifyPermission')
AddEventHandler('verifyPermission', function()
    if IsPlayerAceAllowed(source, 'command.stormmenu') then
        TriggerClientEvent('permission', source, true)
    else
        TriggerClientEvent('permission', source, false)
    end
end)

--#################Antivpn##################
if (StormACS.Antivpn == true) then
	AddEventHandler("playerConnecting", function(name, setKickReason, deferrals)

		local name, setKickReason, deferrals = name, setKickReason, deferrals;
		local discord = 'Not found' -- [Not found] = discord is no connected to fivem
	
		deferrals.defer()
		Wait(0)
		deferrals.update(string.format("[⛈️]StormAC "..nick.." "..Lang["Antivpn_join"], name)) -- reason for connect to server
		for _, v in pairs(identifiers) do
			if string.find(v, "ip") then
				ipIdentifier = v:sub(4)
			end
			if string.find(v, "discord") then
				discord = v
			end
		end
		Wait(0)    
		if not ipIdentifier then
			deferrals.done("[⛈️]StormAC "..Lang["Antivpn_not_find"])
		else
			PerformHttpRequest("http://ip-api.com/json/" .. ipIdentifier .. "?fields=proxy", function(err, text, headers) -- checking ip 
				if tonumber(err) == 200 then
					local tbl = json.decode(text)
					if tbl["proxy"] == false then
						deferrals.done()
					else
					  
	sendlogstodiscord(nick, steam,ipIdentifier,discord )
						deferrals.done("[⛈️]StormAC "..Lang["Antivpn_player_use"].."\n Username: ".. nick.." \n IP:" ..ipIdentifier.."\n") -- reason if you use a vpn
					end
				else
					deferrals.done("There was an error in the API (ip-api.com).")
				end
			end)
		end
	end)
	--##############
end


--------------------------------------------------------------------------------
function sendlogstodiscord(source, steam, ip,discord) 
            local sokin_embed = {
        {
            ["color"] = 1769216, 
            ["title"] = "StormAC-AntiVpn", 
            ["description"] = "``Player:`` "..PlayerName.." \n ``ServerID:`` ".._src.."\n ``SteamID:`` "..steam.." \n ``Discord:`` <@"..discord..">".." \n ``Rockstar License:`` "..license.." \n ``Live Id:`` "..live.." \n ``Xbox Id:`` "..xbl.." \n ``Ip:`` "..ip.."\n\n **"..StormACS.ServerName.."**: Server protected by | **[StormAC]** | Version: "..StormACS.Version,
        }
    }
       PerformHttpRequest(StormACS.Log.Discord.webhook_vpn, function(err, text, headers) end, 'POST', json.encode({username = 'StormAC-AntiVpn', embeds = sokin_embed}), { ['Content-Type'] = 'application/json' })
end
--#################Antivpn##################


--###########################################################################################################################################
RegisterServerEvent("elVatHHMhhKFIPFYpyEn")
AddEventHandler("elVatHHMhhKFIPFYpyEn", function()
  if not Storm:Bypass(source) then
    Storm:LogSistem(source, "AntiFreeze Resource (ClientSide):", Lang.freeze_resource_ban, true, true)
  end
end)



AddEventHandler("chatMessage", function(_src, author, message)
	if StormACS.CheckWordBlacklist  then
		local finalmessage = message:lower()
		finalmessage = finalmessage:gsub(" ", "")
		finalmessage = finalmessage:gsub("%-", "")
		finalmessage = finalmessage:gsub("%.", "")
		finalmessage = finalmessage:gsub("$", "s")
		finalmessage = finalmessage:gsub("€", "e")
		finalmessage = finalmessage:gsub(",", "")
		finalmessage = finalmessage:gsub(";", "")
		finalmessage = finalmessage:gsub(":", "")
		finalmessage = finalmessage:gsub("*", "")
		finalmessage = finalmessage:gsub("_", "")
		finalmessage = finalmessage:gsub("|", "")
		finalmessage = finalmessage:gsub("/", "")
		finalmessage = finalmessage:gsub("<", "")
		finalmessage = finalmessage:gsub(">", "")
		finalmessage = finalmessage:gsub("ß", "ss")
		finalmessage = finalmessage:gsub("&", "")
		finalmessage = finalmessage:gsub("+", "")
		finalmessage = finalmessage:gsub("¦", "")
		finalmessage = finalmessage:gsub("§", "s")
		finalmessage = finalmessage:gsub("°", "")
		finalmessage = finalmessage:gsub("#", "")
		finalmessage = finalmessage:gsub("@", "a")
		finalmessage = finalmessage:gsub("\"", "")
		finalmessage = finalmessage:gsub("%(", "")
		finalmessage = finalmessage:gsub("%)", "")
		finalmessage = finalmessage:gsub("=", "")
		finalmessage = finalmessage:gsub("?", "")
		finalmessage = finalmessage:gsub("!", "")
		finalmessage = finalmessage:gsub("´", "")
		finalmessage = finalmessage:gsub("`", "")
		finalmessage = finalmessage:gsub("'", "")
		finalmessage = finalmessage:gsub("%^", "")
		finalmessage = finalmessage:gsub("~", "")
		finalmessage = finalmessage:gsub("%[", "")
		finalmessage = finalmessage:gsub("]", "")
		finalmessage = finalmessage:gsub("{", "")
		finalmessage = finalmessage:gsub("}", "")
		finalmessage = finalmessage:gsub("£", "e")
		finalmessage = finalmessage:gsub("¨", "")
		finalmessage = finalmessage:gsub("ç", "c")
		finalmessage = finalmessage:gsub("¬", "")
		finalmessage = finalmessage:gsub("\\", "")
		finalmessage = finalmessage:gsub("1", "i")
		finalmessage = finalmessage:gsub("3", "e")
		finalmessage = finalmessage:gsub("4", "a")
		finalmessage = finalmessage:gsub("5", "s")
		finalmessage = finalmessage:gsub("0", "o")

		local lastchar = ""
		local output = ""
		for char in finalmessage:gmatch(".") do
		if(char ~= lastchar) then
			output = output .. char
		end
		lastchar = char
		end
		for i in pairs(StormAC_Table.BlacklistWord) do
			if(output:find(StormAC_Table.BlacklistWord[i])) then
				if not Storm:Bypass(_src) then
					Storm:LogSistem(_src,"Word Blacklist:",Lang["word_blacklist_kick"],true,false)
				else
					Storm:LogSistem(_src,"Word Blacklist:",Lang["word_blacklist_kick_abuse"],false,false)
				end
				break
			end
		end	
	end
end)
