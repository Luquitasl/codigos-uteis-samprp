//Comando para realizar uma ação no contorno do ambiente.
CMD:me(playerid, params[])
{

	if (isnull(params))
	    return SendSyntaxMessage(playerid, "/me [acao]");

	if (strlen(params) > 64) {
	    SendNearbyMessage(playerid, 20.0, COLOR_PURPLE, "* %s %.64s", ReturnName(playerid, 0), params);
	    SendNearbyMessage(playerid, 20.0, COLOR_PURPLE, "...%s", params[64]);
	}
	else {
	    SendNearbyMessage(playerid, 20.0, COLOR_PURPLE, "* %s %s", ReturnName(playerid, 0), params);
	}
	//format(string, sizeof(string), "* %s %s", ReturnName(playerid, 0), params);
 	//SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 30.0, 6000);
	return 1;
}

// Comando para caracterização do ambiente. 
CMD:do(playerid, params[])
{
	if (isnull(params))
	    return SendSyntaxMessage(playerid, "/do [descricao]");

	if (strlen(params) > 64) {
	    SendNearbyMessage(playerid, 20.0, COLOR_PURPLE, "* %.64s", params);
	    SendNearbyMessage(playerid, 20.0, COLOR_PURPLE, "...%s (( %s ))", params[64], ReturnName(playerid, 0));
	}
	else {
	    SendNearbyMessage(playerid, 20.0, COLOR_PURPLE, "* %s (( %s ))", params, ReturnName(playerid, 0));
	}
	//format(string, sizeof(string), "* %s (( %s ))", params, ReturnName(playerid, 0));
 	//SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 30.0, 6000);
	return 1;
}

//Comando de ação em cima da cabeça do personagem.
CMD:ame(playerid, params[])
{
	static
	    string[128];

	if (isnull(params))
	    return SendSyntaxMessage(playerid, "/ame [acao]");

	format(string, sizeof(string), "* %s %s", ReturnName(playerid, 0), params);
 	SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 30.0, 10000);

 	SendClientMessageEx(playerid, COLOR_PURPLE, "* %s %s", ReturnName(playerid, 0), params);
	return 1;
}

//Comando de caracterização do ambiente em cima da cabeça do personagem.
CMD:ado(playerid, params[])
{
    static
	    string[128];

	if (isnull(params))
	    return SendSyntaxMessage(playerid, "/ado [descricaoo]");

	format(string, sizeof(string), "* %s (( %s ))", params, ReturnName(playerid, 0));
 	SetPlayerChatBubble(playerid, string, COLOR_PURPLE, 30.0, 10000);

 	SendClientMessageEx(playerid, COLOR_PURPLE, "* %s (( %s ))", params, ReturnName(playerid, 0));
	return 1;
}
