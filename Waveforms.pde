class Waveforms{
  
  Wave w;
  ArrayList<Wave> waves;
  Wave newWave;
  
  float param;
  
   
  Waveforms(){
    waves =  new ArrayList();
    //for (int i = 0; i <= ){
    //  waves.add(createWave());
    //}
    createWaves();
    
   }
   
  
  void createWaves(){
    param = 40;
    // Wave(int _xspacing, float _amplitude, float _period, int _g, int _b, float diameter)
    
    waves.add(new Wave(1, 100.0, 3 * (width + param - 5) / 4 - 65, 200, 30, 2.1)); //w3
    waves.add(new Wave(1, 40.0,  (width + 30) / 4 - 20, 150, 40, 2.1)); //w4
    
    waves.add(new Wave(1, -78.0, (width + param) / 2, 120, 60, 2.1)); //w7
    waves.add(new Wave(1, - 53.0, (width + param) / 3, 100, 70, 2.1)); //w7
    waves.add(new Wave(1, -36.0,  (width + param - 8) / 4 - 40, 150, 200, 2.1)); //w4
    waves.add(new Wave(1, 47.0, 2 * (width +  param) / 6 - 39, 2, 60, 2.1)); //w4
    //waves.add(new Wave(1, 50.0,  width / 3 - 20, 50, 2.1)); //w4
    waves.add(new Wave(1, -25.0,  (width / 3 - 26)/2, 30, 20, 2.1)); //w4
    
    waves.add(new Wave(1, 32.0,  (width + 35 + (width + 30)/8) / 4 - 81, 30, 80, 2.1)); //w5
    //waves.add(new Wave(1, - 50.0, width / 4, 100)); //w6
    
  
    waves.add(new Wave(1, -175.0, (width + param) - 2, 100, 200, 2.1)); // w1
    waves.add(new Wave(1, 330.0, 2 * (width + param) , 60, 0, 2.4)); //w2

    //return _waves;
  }
  
  void display(){
    for (Wave w: waves) {
      w.calcWave();
      w.renderWave();
      println(w.period);
    } 
  }

}
