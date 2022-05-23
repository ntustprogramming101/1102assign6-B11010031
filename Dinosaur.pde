class Dinosaur extends Enemy {
	// Requirement #4: Complete Dinosaur Class
  float speed = 1f;
  float currentSpeed = speed;

  void display(){
    image(dinosaur, x, y);
  }

  void update(){
    x += currentSpeed;
    pushMatrix();
    if(x >= width - SOIL_SIZE ){
      speed = -1;
      translate(x + w, y);
      scale(-1, 1);
      speed = -speed;
      currentSpeed = speed;
      image(dinosaur, x, y);
    }
    else if (x <= 0){
      translate(x + w, y);
      scale(-1, 1);
      speed = -speed;
      currentSpeed = speed;
      image(dinosaur, x, y);
      speed = 1;
    }
    popMatrix();
  }

    Dinosaur(float x, float y){
    super(x, y);
    }

}
	final float TRIGGERED_SPEED_MULTIPLIER = 5;

	// HINT: Player Detection in update()
	/*
	float currentSpeed = speed
	If player is on the same row with me AND (it's on my right side when I'm going right OR on my left side when I'm going left){
		currentSpeed *= TRIGGERED_SPEED_MULTIPLIER
	}
	*/
