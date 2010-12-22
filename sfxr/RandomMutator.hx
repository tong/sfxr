package sfxr;

class RandomMutator {
	
	public static function run( synth : Synth, mutation : Float = 0.05 ) {
		//synth.deleteCache();
		if( rand() ) synth.startFrequency += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.minFrequency += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.slide += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.deltaSlide += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.squareDuty += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.dutySweep += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.vibratoDepth += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.vibratoSpeed += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.attackTime += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.sustainTime += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.decayTime += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.sustainPunch += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.lpFilterCutoff += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.lpFilterCutoffSweep += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.lpFilterResonance += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.hpFilterCutoff += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.hpFilterCutoffSweep += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.phaserOffset += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.phaserSweep += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.repeatSpeed += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.changeSpeed += Math.random() * mutation*2 - mutation;
		if( rand() ) synth.changeAmount += Math.random() * mutation*2 - mutation;
		synth.validate();
	}
	
	static inline function rand( ratio : Float = 0.5 ) : Bool {
		return Math.random() < ratio;
	}
	
}
