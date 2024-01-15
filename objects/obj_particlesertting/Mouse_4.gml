/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 09BB44C5
/// @DnDArgument : "var" "particlesertting"
if(obj_particlesertting == 0)
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 1879B5A2
	/// @DnDParent : 09BB44C5
	/// @DnDArgument : "value" "1"
	/// @DnDArgument : "var" "global.particleson"
	global.particleson = 1;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 06556C38
else
{
	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 6B70CB11
	/// @DnDParent : 06556C38
	/// @DnDArgument : "var" "global.particleson"
	global.particleson = 0;
}