/* Plugin generated by AMXX-Studio */

#include < amxmodx >
#include < amxmisc >
#include < engine >
#include < cstrike >
#include < fun >
#include < fakemeta >

#define PLUGIN "HappyVIP Time"
#define VERSION "1.0"
#define AUTHOR "Mr.Unknown a.k.a Orao94"


public plugin_init() {
	register_plugin(PLUGIN, VERSION, AUTHOR)
	
}

public client_putinserver(id)
{
	set_task(0.5, "Provera")
}

public client_disconnect(id)
{
	set_task(0.5, "Provera")
}


stock bool:HappyVreme()
{
	static Hours, Minutes, Seconds;
	time( Hours, Minutes, Seconds);

	new HappyPocetak = 22
	new HappyZavrsetak = 10

	if(HappyPocetak == HappyZavrsetak)
		return false;

	if(HappyPocetak > HappyZavrsetak && (Hours >= HappyPocetak || Hours < HappyZavrsetak))
		return true;
	if(HappyPocetak < HappyZavrsetak && (Hours >= HappyPocetak || Hours < HappyZavrsetak))
		return true;

	return false;
}

public Provera()
{
	if(HappyVreme () ) set_cvar_string( "amx_default_access", "t" );
	
	if(!HappyVreme() ) set_cvar_string( "amx_default_access", "z" );
}

