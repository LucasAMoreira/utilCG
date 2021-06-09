
void negativo(PImage img){
  loadPixels();
  img.loadPixels();
  
  for(int y=0; y<height; y++){
    for(int x=0; x<width; x++){
      int atual = x + y*width;
      float max = 255;
      
      float r = red(img.pixels[atual]);
      float g = green(img.pixels[atual]);
      float b = blue(img.pixels[atual]);
      
      float novoRed = max - r;
      float novoGreen = max - g;
      float novoBlue = max - b;
      
      pixels[atual]=color(novoRed,novoGreen,novoBlue);
      
    }    
  }
  updatePixels();

}


void pretoEbranco(PImage img){
  loadPixels();
  img.loadPixels();
  
  for(int y=0; y<height; y++){
    for(int x=0; x<width; x++){
      int atual = x + y*width;
      
      float r = red(img.pixels[atual]);
      float g = green(img.pixels[atual]);
      float b = blue(img.pixels[atual]);
      
      float cor = (2*r+3*g+b)/6;
      
      pixels[atual]=color(cor);
      
    }    
  }
  updatePixels();

}

void setup(){
  //Diretório da imagem
  String diretorio = "C:\\Users\\Compac\\Documents\\Computação Gráfica\\girassol.jpg";
  
  // Abre imagem
  PImage girassol = loadImage(diretorio);
 
  // Exibe imagem
  size(320,213);
  pretoEbranco(girassol);

}
