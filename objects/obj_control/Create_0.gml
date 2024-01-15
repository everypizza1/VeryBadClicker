/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 7FAE67CD
/// @DnDArgument : "value" "false"
/// @DnDArgument : "var" "global.particleson"
global.particleson = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 650B3106
/// @DnDArgument : "var" "points"
global.points = 0;

/// @DnDAction : YoYo Games.Files.If_File_Exists
/// @DnDVersion : 1
/// @DnDHash : 77B6B947
/// @DnDArgument : "file" ""save.ini""
var l77B6B947_0 = file_exists("save.ini");
if(l77B6B947_0)
{
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 16A4695C
	/// @DnDParent : 77B6B947
	/// @DnDArgument : "filename" ""save.ini""
	ini_open("save.ini");

	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 40DFF36B
	/// @DnDParent : 77B6B947
	/// @DnDArgument : "var" "global.points"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""points""
	/// @DnDArgument : "key" ""points""
	/// @DnDArgument : "default" "0"
	global.points = ini_read_real("points", "points", 0);

	/// @DnDAction : YoYo Games.Files.Ini_Read
	/// @DnDVersion : 1
	/// @DnDHash : 0513CCA6
	/// @DnDParent : 77B6B947
	/// @DnDArgument : "var" "global.particleson"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""settings""
	/// @DnDArgument : "key" ""particles""
	/// @DnDArgument : "default" "false"
	global.particleson = ini_read_real("settings", "particles", false);

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 0F5C1289
	/// @DnDParent : 77B6B947
	ini_close();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0716EA43
else
{
	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 44740BF2
	/// @DnDParent : 0716EA43
	/// @DnDArgument : "filename" ""save.ini""
	ini_open("save.ini");

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 72591386
	/// @DnDParent : 0716EA43
	ini_close();

	/// @DnDAction : YoYo Games.Files.Open_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 0C3BEB3A
	/// @DnDParent : 0716EA43
	/// @DnDArgument : "filename" ""save.ini""
	ini_open("save.ini");

	/// @DnDAction : YoYo Games.Files.Ini_Write
	/// @DnDVersion : 1
	/// @DnDHash : 06467259
	/// @DnDParent : 0716EA43
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""points""
	/// @DnDArgument : "key" ""points""
	/// @DnDArgument : "value" "0"
	ini_write_real("points", "points", 0);

	/// @DnDAction : YoYo Games.Files.Ini_Write
	/// @DnDVersion : 1
	/// @DnDHash : 2C856443
	/// @DnDParent : 0716EA43
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "section" ""settings""
	/// @DnDArgument : "key" ""particles""
	/// @DnDArgument : "value" "0"
	ini_write_real("settings", "particles", 0);

	/// @DnDAction : YoYo Games.Files.Close_Ini
	/// @DnDVersion : 1
	/// @DnDHash : 1C514733
	/// @DnDParent : 0716EA43
	ini_close();
}