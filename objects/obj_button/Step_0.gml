if (mouse_check_button_pressed(mb_left))
{
	global.points += 1;

	ini_open("save.ini");

	ini_write_real("points", "points", global.points);

	ini_close();

	if(global.particleson == true)
	{
		effect_create_above(3, x + 50, y + 50, 2, $FF000000 & $ffffff);
	}
}


if (mouse_check_button(mb_left))
{
	sprite_index = button_pressed;
	image_index = 0;
}

if (mouse_check_button_released(mb_left))
{
	sprite_index = button_standard;
	image_index = 0;
}
 
if (keyboard_check_pressed(vk_space))
{
	global.points += 1;

	ini_open("save.ini");

	ini_write_real("points", "points", global.points);

	ini_close();

	if(global.particleson == true)
	{
		effect_create_above(3, x + 50, y + 50, 2, $FF000000 & $ffffff);
	}
}

if (keyboard_check(vk_space))
{
	sprite_index = button_pressed;
	image_index = 0;
}

if (keyboard_check_released(vk_space))
{
	sprite_index = button_standard;
	image_index = 0;
}