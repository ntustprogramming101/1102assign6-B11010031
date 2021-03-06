class Robot extends Enemy {
	// Requirement #5: Complete Dinosaur Class

	final int PLAYER_DETECT_RANGE_ROW = 2;
	final int LASER_COOLDOWN = 180;
	final int HAND_OFFSET_Y = 37;
	final int HAND_OFFSET_X_FORWARD = 64;
	final int HAND_OFFSET_X_BACKWARD = 16;
  float speed = 2f;
  float currentSpeed = speed;
  
void display(){
    image(robot, x, y);
  }

void update(){
    x += currentSpeed;
    
    pushMatrix();
    if(x >= width - SOIL_SIZE ){
      
    translate(x + w, y);
    scale(-1, 1);
    speed = -speed;
    currentSpeed = speed;
    image(robot, x, y);
    speed = -2;
    }
    
    else if (x <= 0){
    translate(x + w, y);
    scale(-1, 1);
    speed = -speed;
    currentSpeed = speed;
    image(robot, x, y);
    speed = 2;
    }
    popMatrix();
  }
    Robot(float x, float y){
    super(x, y);
    }
	// HINT: Player Detection in update()
	/*

	boolean checkX = ( Is facing forward AND player's center point is in front of my hand point )
					OR ( Is facing backward AND player's center point (x + w/2) is in front of my hand point )

	boolean checkY = player is less than (or equal to) 2 rows higher or lower than me

	if(checkX AND checkY){
		Is laser's cooldown ready?
			True  > Fire laser from my hand!
			False > Don't do anything
	}else{
		Keep moving!
	}

	*/
}
