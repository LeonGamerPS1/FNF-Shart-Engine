package;

import flixel.FlxSprite;
import flixel.graphics.frames.FlxAtlasFrames;

class MenuCharacter extends FlxSprite
{
	public var character:String;

	public function new(x:Float, character:String = 'bf', ?flip:Bool = false)
	{
		super(x);

		this.character = character;

		var tex = FlxAtlasFrames.fromSparrow('assets/images/campaign_menu_UI_characters.png', 'assets/images/campaign_menu_UI_characters.xml');
		frames = tex;

		animation.addByPrefix('bf', "BF idle dance white", 24, true, flip);
		animation.addByPrefix('bfConfirm', 'BF HEY!!', 24, false, flip);
		animation.addByPrefix('gf', "GF Dancing Beat WHITE", 24, true, flip);
		animation.addByPrefix('dad', "Dad idle dance BLACK LINE", 24, true, flip);
		animation.addByPrefix('spooky', "spooky dance idle BLACK LINES", 24, true, flip);
		animation.addByPrefix('pico', "Pico Idle Dance", 24, true, flip);
		animation.addByPrefix('mom', "Mom Idle BLACK LINES", 24, true, flip);
		animation.addByPrefix('parents-christmas', "Parent Christmas Idle", 24, true, flip);
		animation.addByPrefix('senpai', "SENPAI idle Black Lines", 24, true, flip);
		// Parent Christmas Idle

		animation.play(character);
		updateHitbox();
	}
}
