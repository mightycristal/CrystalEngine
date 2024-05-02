package options;

#if desktop
import Discord.DiscordClient;
#end
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.addons.display.FlxGridOverlay;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.util.FlxColor;
import lime.utils.Assets;
import flixel.FlxSubState;
import flash.text.TextField;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.util.FlxSave;
import haxe.Json;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxTimer;
import flixel.input.keyboard.FlxKey;
import flixel.graphics.FlxGraphic;
import Controls;

using StringTools;

class MiscSubState extends BaseOptionsMenu
{
	public function new()
	{
		title = 'Misc';
		rpcTitle = 'Misc Settings Menu'; //for Discord Rich Presence

		var option:Option = new Option('Botplay Mode',
			'Check this if you want a bot to play for you, mostly used for showcasing',
			'botplay',
			'bool',
			false);
		addOption(option);

    var option:Option = new Option('Practice Mode',
    'Check this if you dont want to die while practicing',
    'practiceMode',
    'bool',
    false);
  addOption(option);

  var option:Option = new Option('InstaKill on Miss',
  'read the fucking option',
  'instakill',
  'bool',
  false);
addOption(option);

var option:Option = new Option('HealthGain multiplier',
'.......',
'healthGain',
'Int',
1);
option.scrollSpeed = 1.6;
		option.minValue = 0.5;
		option.maxValue = 5;
		option.changeValue = 0.1;
		option.decimals = 5;
addOption(option);

var option:Option = new Option('HealthLoss multiplier',
'.................',
'healthLoss',
'Int',
1);
option.scrollSpeed = 1.6;
		option.minValue = 0.5;
		option.maxValue = 5;
		option.changeValue = 0.1;
		option.decimals = 5;
addOption(option);

		super();
	}
}