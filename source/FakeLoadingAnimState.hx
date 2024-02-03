package;

import flixel.FlxG;
import flixel.FlxGame;
import flixel.FlxSprite;
import flixel.addons.transition.FlxTransitionSprite.GraphicTransTileDiamond;
import flixel.addons.transition.FlxTransitionableState;
import flixel.addons.transition.TransitionData;
import flixel.graphics.FlxGraphic;
import flixel.group.FlxGroup;
import flixel.input.gamepad.FlxGamepad;
import flixel.math.FlxPoint;
import flixel.math.FlxRect;
import flixel.system.FlxAssets.FlxGraphicAsset;
import flixel.system.FlxAssets;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;
import lime.ui.Window;
import openfl.Assets;
import openfl.display.Sprite;
import openfl.events.AsyncErrorEvent;
import openfl.events.AsyncErrorEvent;
import openfl.events.Event;
import openfl.events.MouseEvent;
import openfl.events.NetStatusEvent;
import openfl.media.Video;
import openfl.net.NetConnection;
import openfl.net.NetStream;
import shaderslmfao.BuildingShaders.BuildingShader;
import shaderslmfao.BuildingShaders;
import shaderslmfao.ColorSwap;
import ui.PreferencesMenu;

using StringTools;

#if discord_rpc
import Discord.DiscordClient;
#end
#if desktop
import sys.FileSystem;
import sys.io.File;
import sys.thread.Thread;
#end

class FakeLoadingAnimState extends MusicBeatState
{
	
	override public function create():Void
	{
		
				
    startIntro();
	}

	private function client_onMetaData(metaData:Dynamic)
	{
		
	}

	private function netStream_onAsyncError(event:AsyncErrorEvent):Void
	{
		trace("Error loading video");
	}

	private function netConnection_onNetStatus(event:NetStatusEvent):Void
	{
		


	}

	private function overlay_onMouseDown(event:MouseEvent):Void
	{
		
	}

	var logoBl:FlxSprite;

	var gfDance:FlxSprite;
	var danceLeft:Bool = false;
	var titleText:FlxSprite;
    var ngSpr:FlxSprite;
	function startIntro()
	{
		

		ngSpr = new FlxSprite(0, FlxG.height * 0.52).loadGraphic(Paths.image('xpbootimage'));
		

	
		ngSpr.updateHitbox();
		ngSpr.screenCenter();
		ngSpr.antialiasing = true;
		ngSpr.alpha = 0;
		add(ngSpr);
		FlxTween.tween(ngSpr, { alpha:1 }, 2);


		FlxG.mouse.visible = false;

		new FlxTimer().start(4, function(tmr:FlxTimer)
			{
                    FlxG.switchState(new TitleState());   			
			});
		// credGroup.add(credTextShit);
	}

	

	override function update(elapsed:Float)
	{
	

		super.update(elapsed);
	}







	
	}



	

