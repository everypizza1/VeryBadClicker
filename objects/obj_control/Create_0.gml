global.particleson = false;

global.points = 0;

global.boost = 0;

if(file_exists("save.ini"))
{
	ini_open("save.ini");

	global.points = ini_read_real("points", "points", 0);

	global.particleson = ini_read_real("settings", "particles", false);

	global.boost = ini_read_real("boost", "boost", 0);

	ini_close();
}

else
{
	ini_open("save.ini");

	ini_close();

	ini_open("save.ini");

	ini_write_real("points", "points", 0);

	ini_write_real("settings", "particles", 0);

	ini_write_string("power", "boost", "boost");

	ini_close();
}