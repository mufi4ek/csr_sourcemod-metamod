#include <sourcemod>
#include <sdktools>

public void OnClientPutInServer(int client)
{
    if (IsValidClient(client))
    {
        EmitSoundToClient(client, "joinsound/welcome.mp3");
    }
}

bool IsValidClient(int client)
{
    return (client > 0 && client <= MaxClients && IsClientInGame(client));
}
