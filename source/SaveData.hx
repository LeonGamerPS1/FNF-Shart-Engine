package;

import flixel.FlxG;

class SaveData
{
    // this is exactly like kade engine, if ur seeing this kade sorry :(
    public static function saveLoad()
    {
        if(FlxG.save.data.healthMultiplier == null)
            FlxG.save.data.healthMultiplier = 1;

        if(FlxG.save.data.scoreMultiplier == null)
            FlxG.save.data.scoreMultiplier = 1;

        if(FlxG.save.data.fullEnergy == null)
            FlxG.save.data.fullEnergy = true;

        if(FlxG.save.data.antiSpam == null)
            FlxG.save.data.antiSpam = false;

        if(FlxG.save.data.botMode == null)
            FlxG.save.data.botMode = false;

        if(FlxG.save.data.noteSkin == null)
            FlxG.save.data.noteSkin = 0;
    }

    public static function resetSave()
    {
        FlxG.save.data.healthMultiplier = null;
        FlxG.save.data.scoreMultiplier = null;
        FlxG.save.data.fullEnergy = null;
        FlxG.save.data.antiSpam = null;
        FlxG.save.data.botMode = null;
        FlxG.save.data.noteSkin = 0;
        saveLoad();
    }
}