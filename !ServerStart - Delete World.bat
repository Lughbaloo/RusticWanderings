
::Deleting World Folder stuff
	::DeletingAdvancementsFolder
@RD /S /Q "world\advancements"
	::DeletingDataFolderContents
@RD /S /Q "world\data\deathbackup"
@RD /S /Q "world\data\ftbchunks"
@RD /S /Q "world\data\ftbteams"
DEL /S /Q "world\data\abnormals_core_storage.dat"
DEL /S /Q "world\buildinggadgets_template_save.dat"
DEL /S /Q "world\data\capabilities.dat"
DEL /S /Q "world\data\goblintraders_goblin_trader.dat"
DEL /S /Q "world\data\ImmersiveEngineering-SaveData.dat"
DEL /S /Q "world\data\ImmersivePetroleum-SaveData.dat"
DEL /S /Q "world\data\pregen_structure_cache.dat"
DEL /S /Q "world\data\raids.dat"
DEL /S /Q "world\data\supplementariesGlobeData.dat"
DEL /S /Q "world\data\waystones.dat"
DEL /S /Q "world\data\waystones_NameGenerator.dat"
	::DeletingEndDimensionalData
@RD /S /Q "world\DIM1\region"
@RD /S /Q "world\DIM1\poi"
DEL /S /Q "world\DIM1\data\capabilities.dat"
DEL /S /Q "world\DIM1\data\raids_end.dat"
	::DeletingNetherDimensionalData
@RD /S /Q "world\DIM-1\region"
@RD /S /Q "world\DIM-1\poi"
DEL /S /Q "world\DIM-1\data\capabilities.dat"
DEL /S /Q "world\DIM-1\data\raids.dat"
	::DeletingMiningDimensionalData
DEL /S /Q "world\dimensions\mining_dimension\mining\data\capabilities.dat"
DEL /S /Q "world\dimensions\mining_dimension\mining\data\raids.dat"
@RD /S /Q "world\dimensions\mining_dimension\mining\poi"
@RD /S /Q "world\dimensions\mining_dimension\mining\region"
	::DeletingUndergardenDimensionalData
DEL /S /Q "world\dimensions\undergarden\undergarden\data\capabilities.dat"
DEL /S /Q "world\dimensions\undergarden\undergarden\data\raids.dat"
@RD /S /Q "world\dimensions\undergarden\undergarden\poi"
@RD /S /Q "world\dimensions\undergarden\undergarden\region"
	::DeletingPlayerData
@RD /S /Q "world\playerdata"
@RD /S /Q "world\stats"
@RD /S /Q "world\deaths"
	::DeletingOverworldDimensionalData
@RD /S /Q "world\poi"
@RD /S /Q "world\region"
DEL /S /Q "world\level.dat"
DEL /S /Q "world\level.dat_old"
DEL /S /Q "world\session.lock"

::ServerStart
java -Xmx10G -Xms10G -jar forge-1.16.4-35.1.36.jar nogui
pause