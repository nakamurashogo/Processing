void forward(float speed){
  speed = speed * 2;
  noStroke();
  fill(200,200,255);
  rect(x,y,speed,24);
  x = x + speed;
  if(x > 1500){
    x = 0;
    y += 40;
  }
  if(y>1000){
    x=1500;
    y=1003;
  }
}

void back(float speed){
  fill(255,255,255);
  noStroke();
  rect(x,y,-speed,24);
  x = x - speed;
  if(x < 0){
    x = 1500;
    y -= 40;
  }
  if(y<0){
    x=0;
    y=3;
  }
}

void forward2(){
  fill(200,200,255);
    for(x=0; x<1500; x++){
      noStroke();
      rect(x*40,y,40,24);
    }
    y += 40;
    if(y>1000){
      x=1500;
      y=1003;
    }
}

void back2(){
  for(x=1500; x > -1; x--){
      fill(255,255,255);
      noStroke();
      rect(x*40,y,40,24);
    }
    y -= 40;
    if(y<0){
      x=0;
      y=3;
    }
}

void clear(){
  for(x=0; x<1500; x++){
      for(y=0; y<100; y++){
        fill(255,255,255);
        noStroke();
        rect(x*40,y*62,40,62);
      }
    }
    x = 0;
    y = 3;
}

void text(){
  textY = 0;
  fill( 0 );
  for( int i = 0; i < lineData.length; i++ ){
    
    //text(表示するテキスト, x座標, y座標, 表示領域の幅, 表示領域の高さ)
    text( String.valueOf(i)+ lineData[i], 0, textY, 1500, 1000 );

    textY = textY + fontSize + 200;
  
  }
}
