class Wave{
  
    int xspacing = 1;   // How far apart should each horizontal location be spaced
    int wWidth;              // Width of entire wave
    
    float theta = 0.0;  // Start angle at 0
    
    float amplitude = 75.0;  // Height of wave
    float period = 600.0;  // How many pixels before the wave repeats
    float dx;  // Value for incrementing X, a function of period and xspacing
    
    float[] yvalues;  // Using an array to store height values for the wave
    
    int g, b;
    float diameter;

    Wave(int _xspacing, float _amplitude, float _period, int _g, int _b, float _diameter){
      
      xspacing = _xspacing;
      amplitude = _amplitude;
      period = _period;
      
      g = _g;
      b = _b;
      
      wWidth = width + 100;
      dx = (TWO_PI / period) * xspacing;
      yvalues = new float[wWidth/xspacing];
      
      diameter =_diameter;
    
    }
    
    void calcWave() {
      // Increment theta (try different values for 'angular velocity')
      //theta += 0.05 + map(period, 120, 1700, 0.01, 0.04 );
      theta += 0.07;
    
      // For every x value, calculate a y value with sine function
      float x = theta;
      for (int i = 0; i < yvalues.length; i++) {
        
        yvalues[i] = sin(x) * amplitude;
        x+=dx;
      }
    }
  
  void renderWave() {
    noStroke();
    //fill(colorParam, 0, 255);
    // A simple way to draw the wave with an ellipse at each location
    boolean invert = false;
    int j = 0;
    for (int x = 0; x < yvalues.length; x++) {
      
      if (x%255 == 0) invert = !invert;
      if (invert == true) {
        j += 1;
      } else {
        j -= 1;
      }
      
      fill(j, g, b );
      ellipse(x*xspacing, height/2+yvalues[x], diameter, diameter);
      //println(j);
     }
   }
}
