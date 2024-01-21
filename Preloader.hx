package;

import flixel.tweens.FlxTween;
import openfl.text.TextFormat;
import openfl.text.TextField;
import openfl.text.Font;
import flixel.system.FlxPreloader;

@:font("assets/fonts/vcr.ttf") class CustomFont extends Font {}

class Preloader extends FlxPreloader
{
	var text:TextField;

	public function new(MinDisplayTime:Float = 0)
	{
		super(5);
	}

	override public function create()
	{
		super.create();
		Font.registerFont(CustomFont);
		text = new TextField();
		text.defaultTextFormat = new TextFormat("VCR OSD Mono", 24, 0xff6f00ff);
		text.text = "Loading Assets....";
		text.embedFonts = true;
		text.width = 109;
		text.x = 1130;
		text.y = 668;

		addChild(text);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		text.text = "Loading " + Std.int(elapsed * 100) + "%";
	}
}
