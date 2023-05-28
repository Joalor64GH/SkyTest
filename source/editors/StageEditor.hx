package editors;

import flixel.FlxSprite;
import flixel.addons.display.FlxExtendedSprite;
import Character;
import flixel.FlxG;
import MusicBeatState;
#if (flixel >= "5.3.0")
import flixel.sound.FlxSound;
#else
import flixel.system.FlxSound;
#end
import flixel.addons.plugin.FlxMouseControl;

class StageEditor extends MusicBeatState
{
    public var dad:Character;
    public var boyfriend:Boyfriend;
    public var girlfriend:Character;
    
    override public function create() 
    {
        super.create();
        
        dad = new Character(0, 0);
        boyfriend = new Boyfriend (300, 0);
        girlfriend = new Character (700, 0);
        
        initializechars();
    


    }

    function initializechars() 
    {

    }

    override public function update(elapsed:Float)
    {
        super.update(elapsed);

        if (controls.BACK)
            MusicBeatState.switchState(new MainMenuState());
    }
}