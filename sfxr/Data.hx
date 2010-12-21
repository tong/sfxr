package sfxr;

import flash.utils.ByteArray;
import flash.utils.Endian;

class Data {
	
	public static function apply( synth : Synth, file : ByteArray ) {
		
//		synth.deleteCache();
		
		file.position = 0;
		file.endian = Endian.LITTLE_ENDIAN;
			
		var version = file.readInt();
			
		if( version != 100 && version != 101 && version != 102 )
			return;
			
		synth.waveType = file.readInt();
		synth.masterVolume = (version == 102) ? file.readFloat() : 0.5;
			
		synth.startFrequency = file.readFloat();
		synth.minFrequency = file.readFloat();
		synth.slide = file.readFloat();
		synth.deltaSlide = (version >= 101) ? file.readFloat() : 0.0;
			
		synth.squareDuty = file.readFloat();
		synth.dutySweep = file.readFloat();
			
		synth.vibratoDepth = file.readFloat();
		synth.vibratoSpeed = file.readFloat();
		var unusedVibratoDelay = file.readFloat();
			
		synth.attackTime = file.readFloat();
		synth.sustainTime = file.readFloat();
		synth.decayTime = file.readFloat();
		synth.sustainPunch = file.readFloat();
			
		var unusedFilterOn = file.readBoolean();
		synth.lpFilterResonance = file.readFloat();
		synth.lpFilterCutoff = file.readFloat();
		synth.lpFilterCutoffSweep = file.readFloat();
		synth.hpFilterCutoff = file.readFloat();
		synth.hpFilterCutoffSweep = file.readFloat();
			
		synth.phaserOffset = file.readFloat();
		synth.phaserSweep = file.readFloat();
			
		synth.repeatSpeed = file.readFloat();
			
		synth.changeSpeed = (version >= 101) ? file.readFloat() : 0.0;
		synth.changeAmount = (version >= 101) ? file.readFloat() : 0.0;
			
		synth.validate();
	}
	
}
