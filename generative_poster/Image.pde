class Image {                                                                   
 
  float q;                                                                    
  PShape square, triangle_1, triangle_2;
  float xpos;
  float ypos;
  float[]rVal={0, 0.5, 1, 1.5};  
  float rpos;

  Image(float tempxpos, float tempypos) {                                                                     
    xpos = tempxpos;
    ypos = tempypos;
    q = width/n;
    
    
    
  }



  void build() {  
    
   translate(xpos, ypos);    

    rotate(rpos);
    
  imageMode(CENTER);
  image(img, 0, 0, q, q);

 


}



  void rotate_random() {
    int index = int(random(rVal.length));  
    rpos=rpos+(rVal[index]*PI); 
  }
}
