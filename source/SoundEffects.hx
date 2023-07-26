package;

import flixel.FlxG;

class SoundEffects
{
	/**
	 * The main function for playing UI sound effects in Amazing Engine.
	 *
	 * @param      sfx     The sound you want to play, you can pick from `confirm`, `cancel`, or `scroll`.
	 * @param      soft    Whether or not you want the SFX to be a softer variant of what it usually is.
	**/
	public static function playSFX(sfx:String, soft:Bool)
	{
		var folder = ClientPrefs.sfxPreset;
		var advanced = ClientPrefs.advancedSfx;
		switch (sfx)
		{
			case 'confirm':
				if (soft && advanced)
				{
					FlxG.sound.play(Paths.sound('ui sfx/' + folder.toLowerCase() + '/softConfirm'));
				}
				else
				{
					FlxG.sound.play(Paths.sound('ui sfx/' + folder.toLowerCase() + '/confirmMenu'));
				}
			case 'scroll':
				FlxG.sound.play(Paths.sound('ui sfx/' + folder.toLowerCase() + '/scrollMenu'));
			case 'cancel':
				if (soft && advanced)
				{
					FlxG.sound.play(Paths.sound('ui sfx/' + folder.toLowerCase() + '/softCancel'));
				}
				else
				{
					FlxG.sound.play(Paths.sound('ui sfx/' + folder.toLowerCase() + '/cancelMenu'));
				}
		}
	}
}
