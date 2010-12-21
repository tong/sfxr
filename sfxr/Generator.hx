package sfxr;

class Generator {
	
	public static function blip( synth : Synth ) {
//		synth.deleteCache();
		resetParams( synth );
		synth.waveType = Std.int( Math.random()*2 );
		if( synth.waveType == 0 ) synth.squareDuty = Math.random() * 0.6;
		synth.startFrequency = 0.2 + Math.random() * 0.4;
		synth.sustainTime = 0.1 + Math.random() * 0.1;
		synth.decayTime = Math.random() * 0.2;
		synth.hpFilterCutoff = 0.1;
	}
	
	public static function coin( synth : Synth ) {
//		synth.deleteCache();
		resetParams( synth );
		synth.startFrequency = 0.4 + Math.random() * 0.5;
		synth.sustainTime = Math.random() * 0.1;
		synth.decayTime = 0.1 + Math.random() * 0.4;
		synth.sustainPunch = 0.3 + Math.random() * 0.3;
		if( Math.random()*1 < 0.5 ) {
			synth.changeSpeed = 0.5 + Math.random() * 0.2;
			synth.changeAmount = 0.2 + Math.random() * 0.4;
		}
	}
	
	public static function explosion( synth : Synth ) {
//		synth.deleteCache();
		resetParams( synth );
		synth.waveType = 3;
		if( Math.random()*1.0 < 0.5 ) {
			synth.startFrequency = 0.1 + Math.random() * 0.4;
			synth.slide = -0.1 + Math.random() * 0.4;
		} else {
			synth.startFrequency = 0.2 + Math.random() * 0.7;
			synth.slide = -0.2 - Math.random() * 0.2;
		}
		synth.startFrequency *= synth.startFrequency;
		if( Math.random()*1.0 < 0.2 ) synth.slide = 0.0;
		if( Math.random()*1.0 < 0.33 ) synth.repeatSpeed = 0.3 + Math.random() * 0.5;
		synth.sustainTime = 0.1 + Math.random() * 0.3;
		synth.decayTime = Math.random() * 0.5;
		synth.sustainPunch = 0.2 + Math.random() * 0.6;
		if( Math.random()*1.0 < 0.5 ) {
			synth.phaserOffset = -0.3 + Math.random() * 0.9;
			synth.phaserSweep = -Math.random() * 0.3;
		}
		if( Math.random()*1.0 < 0.33 ) {
			synth.changeSpeed = 0.6 + Math.random() * 0.3;
			synth.changeAmount = 0.8 - Math.random() * 1.6;
		}
	}
	
	public static function hitHurt( synth : Synth ) {
//		synth.deleteCache();
		resetParams( synth );
		//synth.waveType = uint(Math.random() * 3);
		synth.waveType = 3;
		//if( synth.waveType == 2 ) synth.waveType = 3;
		//else
		if( synth.waveType == 3 ) synth.squareDuty = Math.random()*0.6;
		synth.startFrequency = 0.2 + Math.random() * 0.6;
		synth.slide = -0.3 - Math.random() * 0.4;
		synth.sustainTime = Math.random() * 0.1;
		synth.decayTime = 0.1 + Math.random() * 0.2;
		if( Math.random() < 0.5) synth.hpFilterCutoff = Math.random() * 0.3;
	}
	
	public static function jump( synth : Synth ) {
//		synth.deleteCache();
		resetParams( synth );
		synth.waveType = 0;
		synth.squareDuty = Math.random() * 0.6;
		synth.startFrequency = 0.3 + Math.random() * 0.3;
		synth.slide = 0.1 + Math.random() * 0.2;
		synth.sustainTime = 0.1 + Math.random() * 0.3;
		synth.decayTime = 0.1 + Math.random() * 0.2;
		if( getRandomBool() ) synth.hpFilterCutoff = Math.random() * 0.3;
		if( getRandomBool() ) synth.lpFilterCutoff = 1.0 - Math.random() * 0.6;
	}
	
	public static function laser( synth : Synth ) {
//		synth.deleteCache();
		resetParams( synth );
		synth.waveType = Std.int( Math.random()*4 );
		if( synth.waveType == 2 && getRandomBool() ) synth.waveType = Std.int( Math.random()*2 );
		synth.startFrequency = 0.5 + Math.random()*0.5;
		synth.minFrequency = synth.startFrequency - 0.2 - Math.random() * 0.6;
		if( synth.minFrequency < 0.2 ) synth.minFrequency = 0.2;
		synth.slide = -0.15 - Math.random() * 0.2;
		if( getRandomBool( 0.33 ) ) {
			synth.startFrequency = 0.3 + Math.random() * 0.6;
			synth.minFrequency = Math.random() * 0.1;
			synth.slide = -0.35 - Math.random() * 0.3;
		}
		if( getRandomBool() ) {
			synth.squareDuty = Math.random() * 0.5;
			synth.dutySweep = Math.random() * 0.2;
		} else {
			synth.squareDuty = 0.4 + Math.random() * 0.5;
			synth.dutySweep =- Math.random() * 0.7;	
		}
		synth.sustainTime = 0.1 + Math.random() * 0.2;
		synth.decayTime = Math.random() * 0.4;
		if( getRandomBool() ) synth.sustainPunch = Math.random() * 0.3;
		if( getRandomBool( 0.33 ) ) {
			synth.phaserOffset = Math.random() * 0.2;
			synth.phaserSweep = -Math.random() * 0.2;
		}
		if( getRandomBool() ) synth.hpFilterCutoff = Math.random() * 0.3;
	}
	
	public static function powerUp( synth : Synth ) {
//		synth.deleteCache();
		resetParams( synth );
		if( getRandomBool() ) synth.waveType = 1;
		else synth.squareDuty = Math.random() * 0.6;
		if( getRandomBool() ) {
			synth.startFrequency = 0.2 + Math.random() * 0.3;
			synth.slide = 0.1 + Math.random() * 0.4;
			synth.repeatSpeed = 0.4 + Math.random() * 0.4;
		} else {
			synth.startFrequency = 0.2 + Math.random() * 0.3;
			synth.slide = 0.05 + Math.random() * 0.2;
			if( getRandomBool() ) {
				synth.vibratoDepth = Math.random() * 0.7;
				synth.vibratoSpeed = Math.random() * 0.6;
			}
		}
		synth.sustainTime = Math.random() * 0.4;
		synth.decayTime = 0.1 + Math.random() * 0.4;
	}
	
	public static function randomize( synth : Synth) {
		//synth.deleteCache();
		synth.waveType = Std.int( Math.random()*4 );
		synth.attackTime =  		pow(Math.random()*2-1, 4);
		synth.sustainTime =  		pow(Math.random()*2-1, 2);
		synth.sustainPunch =  		pow(Math.random()*0.8, 2);
		synth.decayTime =  			Math.random();
		synth.startFrequency =  	(Math.random() < 0.5) ? pow(Math.random()*2-1, 2) : (pow(Math.random() * 0.5, 3) + 0.5);
		synth.minFrequency =  		0.0;
		synth.slide =  				pow(Math.random()*2-1, 5);
		synth.deltaSlide =  		pow(Math.random()*2-1, 3);
		synth.vibratoDepth =  		pow(Math.random()*2-1, 3);
		synth.vibratoSpeed =  		Math.random()*2-1;
		synth.changeAmount =  		Math.random()*2-1;
		synth.changeSpeed =  		Math.random()*2-1;
		synth.squareDuty =  		Math.random()*2-1;
		synth.dutySweep =  			pow(Math.random()*2-1, 3);
		synth.repeatSpeed =  		Math.random()*2-1;
		synth.phaserOffset =  		pow(Math.random()*2-1, 3);
		synth.phaserSweep =  		pow(Math.random()*2-1, 3);
		synth.lpFilterCutoff =  	1 - pow(Math.random(), 3);
		synth.lpFilterCutoffSweep = pow(Math.random()*2-1, 3);
		synth.lpFilterResonance =  	Math.random()*2-1;
		synth.hpFilterCutoff =  	pow(Math.random(), 5);
		synth.hpFilterCutoffSweep = pow(Math.random()*2-1, 5);
		if( synth.attackTime + synth.sustainTime + synth.decayTime < 0.2 ) {
			synth.sustainTime = 0.2 + Math.random() * 0.3;
			synth.decayTime = 0.2 + Math.random() * 0.3;
		}
		if( (synth.startFrequency > 0.7 && synth.slide > 0.2) || (synth.startFrequency < 0.2 && synth.slide < -0.05 ) )  {
			synth.slide = -synth.slide;
		}
		if( synth.lpFilterCutoff < 0.1 && synth.lpFilterCutoffSweep < -0.05 ) {
			synth.lpFilterCutoffSweep = -synth.lpFilterCutoffSweep;
		}
	}
	
	static function resetParams( s : Synth ) {
		s.waveType = 0;
		s.startFrequency = 0.3;
		s.minFrequency = 0.0;
		s.slide = 0.0;
		s.deltaSlide = 0.0;
		s.squareDuty = 0.0;
		s.dutySweep = 0.0;
		s.vibratoDepth = 0.0;
		s.vibratoSpeed = 0.0;
		s.attackTime = 0.0;
		s.sustainTime = 0.3;
		s.decayTime = 0.4;
		s.sustainPunch = 0.0;
		s.lpFilterResonance = 0.0;
		s.lpFilterCutoff = 1.0;
		s.lpFilterCutoffSweep = 0.0;
		s.hpFilterCutoff = 0.0;
		s.hpFilterCutoffSweep = 0.0;
		s.phaserOffset = 0.0;
		s.phaserSweep = 0.0;
		s.repeatSpeed = 0.0;
		s.changeSpeed = 0.0;
		s.changeAmount = 0.0;
	}
	
	static inline function getRandomBool( ratio : Float = 0.5 ) : Bool {
		return Math.random() < ratio;
	}
	
		/*
	static function getRandomWaveType( limit : Int = 0 ) : Int {
		return Std.int( Math.random()*4 );
		var names = Type.getEnumConstructs( WaveType );
		var a : WaveType = Reflect.field( WaveType, names[Std.random(names.length-limit)] );
		return a;
	}
		*/
	
	static function pow( base : Float, power : Int ) : Float {
		return switch( power ) {
		case 2 : base*base;
		case 3 : base*base*base;
		case 4 : base*base*base*base;
		case 5 : base*base*base*base*base;
		default : 1.0;
		}
	}
		
}
