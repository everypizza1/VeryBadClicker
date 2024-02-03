/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 1EA3A948
var l1EA3A948_0;
l1EA3A948_0 = mouse_check_button_pressed(mb_left);
if (l1EA3A948_0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 08D88F2B
	/// @DnDParent : 1EA3A948
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.points"
	global.points += 1;

	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 070E4B58
	/// @DnDParent : 1EA3A948
	/// @DnDArgument : "filename" ""save.ini""
	ini_open("save.ini");

	/// @DnDAction : YoYo Games.Files.Ini_Write
	/// @DnDVersion : 1
	/// @DnDHash : 58916524
	/// @DnDParent : 1EA3A948
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""points""
	/// @DnDArgument : "key" ""points""
	/// @DnDArgument : "value" "global.points"
	ini_write_real("points", "points", global.points);

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 4C7AE36F
	/// @DnDParent : 1EA3A948
	ini_close();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 587FD9EE
	/// @DnDParent : 1EA3A948
	/// @DnDArgument : "var" "global.particleson"
	/// @DnDArgument : "value" "true"
	if(global.particleson == true)
	{
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 43C06E9D
		/// @DnDParent : 587FD9EE
		/// @DnDArgument : "x" "50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "50"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "3"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "2"
		/// @DnDArgument : "color" "$FF000000"
		effect_create_above(3, x + 50, y + 50, 2, $FF000000 & $ffffff);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Down
/// @DnDVersion : 1.1
/// @DnDHash : 1D78D86C
var l1D78D86C_0;
l1D78D86C_0 = mouse_check_button(mb_left);
if (l1D78D86C_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 5D203DF1
	/// @DnDParent : 1D78D86C
	/// @DnDArgument : "spriteind" "button_pressed"
	/// @DnDSaveInfo : "spriteind" "button_pressed"
	sprite_index = button_pressed;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Released
/// @DnDVersion : 1.1
/// @DnDHash : 31786075
var l31786075_0;
l31786075_0 = mouse_check_button_released(mb_left);
if (l31786075_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 07FE1AE7
	/// @DnDParent : 31786075
	/// @DnDArgument : "spriteind" "button_standard"
	/// @DnDSaveInfo : "spriteind" "button_standard"
	sprite_index = button_standard;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 793A8166
var l793A8166_0;
l793A8166_0 = keyboard_check_pressed(vk_space);
if (l793A8166_0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7B2119C4
	/// @DnDParent : 793A8166
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "global.points"
	global.points += 1;

	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 343337BB
	/// @DnDParent : 793A8166
	/// @DnDArgument : "filename" ""save.ini""
	ini_open("save.ini");

	/// @DnDAction : YoYo Games.Files.Ini_Write
	/// @DnDVersion : 1
	/// @DnDHash : 681EE2AC
	/// @DnDParent : 793A8166
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""points""
	/// @DnDArgument : "key" ""points""
	/// @DnDArgument : "value" "global.points"
	ini_write_real("points", "points", global.points);

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 35BBCF96
	/// @DnDParent : 793A8166
	ini_close();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1B38171D
	/// @DnDParent : 793A8166
	/// @DnDArgument : "var" "global.particleson"
	/// @DnDArgument : "value" "true"
	if(global.particleson == true)
	{
		/// @DnDAction : YoYo Games.Particles.Effect
		/// @DnDVersion : 1
		/// @DnDHash : 5F6BD081
		/// @DnDParent : 1B38171D
		/// @DnDArgument : "x" "50"
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y" "50"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "type" "3"
		/// @DnDArgument : "where" "1"
		/// @DnDArgument : "size" "2"
		/// @DnDArgument : "color" "$FF000000"
		effect_create_above(3, x + 50, y + 50, 2, $FF000000 & $ffffff);
	}
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 59956753
var l59956753_0;
l59956753_0 = keyboard_check(vk_space);
if (l59956753_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 53CB14AD
	/// @DnDParent : 59956753
	/// @DnDArgument : "spriteind" "button_pressed"
	/// @DnDSaveInfo : "spriteind" "button_pressed"
	sprite_index = button_pressed;
	image_index = 0;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Released
/// @DnDVersion : 1
/// @DnDHash : 64636108
var l64636108_0;
l64636108_0 = keyboard_check_released(vk_space);
if (l64636108_0)
{
	/// @DnDAction : YoYo Games.Instances.Set_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 27AD6D20
	/// @DnDParent : 64636108
	/// @DnDArgument : "spriteind" "button_standard"
	/// @DnDSaveInfo : "spriteind" "button_standard"
	sprite_index = button_standard;
	image_index = 0;
}