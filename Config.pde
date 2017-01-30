<<<<<<< HEAD
import java.util.Scanner;
import java.io.File;

class Config {
  
  // Window settings
    int DISP_WIDTH;
    int DISP_HEIGHT;
    color BACKGROUND_COLOR;
    int FRAMERATE;
    
    
    // World Settings
    float FLOOR_HEIGHT;
    String FLOOR_TEXTURE;
    int SCORE_PER_WAVE;
    

  
  public Config() {
    
    try {
      
      String[] lines = loadStrings("settings.txt");
      ArrayList<String> settingsList = new ArrayList<String>();
      
      for (String line : lines) {
        line = line.replaceAll("[^a-zA-Z=0-9/._]","");
        line = line.replaceAll("\\s","");
        String[] sp;
        if (!line.contains("//") && !line.equals("")) {
          sp = line.split("=");
          settingsList.add(sp[0]);
          settingsList.add(sp[1]);
          
        }
        
      }

      
      // Window settings
      DISP_WIDTH = Integer.parseInt( settingsList.get(indexInArrayList(settingsList, "DISP_WIDTH") + 1) );
      DISP_HEIGHT = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "DISP_HEIGHT") + 1) );
      BACKGROUND_COLOR = unhex("FF" + settingsList.get( indexInArrayList(settingsList, "BACKGROUND_COLOR") + 1));
      FRAMERATE = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "FRAMERATE") + 1) );
      
      
      // World Settings
      FLOOR_HEIGHT = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "FLOOR_HEIGHT") + 1) );
      FLOOR_TEXTURE = settingsList.get( indexInArrayList(settingsList, "FLOOR_TEXTURE") + 1);
      SCORE_PER_WAVE = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "SCORE_PER_WAVE") + 1) );
      
      
      } catch (Exception e) {
      // Error reading file, use default values
      System.out.println("Error reading Settings.txt file; using default settings");
      e.printStackTrace();
      
      // Window settings
      DISP_WIDTH = 700;
      DISP_HEIGHT = 500;
      BACKGROUND_COLOR = #111111;//#87CEFA;
      FRAMERATE = 60;
      
      
      // World Settings
      FLOOR_HEIGHT = 60;
      FLOOR_TEXTURE = "Floor_Texture.png";
      SCORE_PER_WAVE = 200;
      
    }
  }
  
  private int indexInArrayList(ArrayList<String> a, String search) {
    for (int i = 0; i < a.size(); i++) {
      if (a.get(i).equals(search)) {
        return i;
      }
    }
    return -2;
  }
  
=======
import java.util.Scanner;
import java.io.File;

class Config {
  
  // Window settings
    int DISP_WIDTH;
    int DISP_HEIGHT;
    color BACKGROUND_COLOR;
    int FRAMERATE;
    
    
    // World Settings
    float FLOOR_HEIGHT;
    String FLOOR_TEXTURE;
    int SCORE_PER_WAVE;
    

  
  public Config() {
    
    try {
      
      String[] lines = loadStrings("settings.txt");
      ArrayList<String> settingsList = new ArrayList<String>();
      
      for (String line : lines) {
        line = line.replaceAll("[^a-zA-Z=0-9/._]","");
        line = line.replaceAll("\\s","");
        String[] sp;
        if (!line.contains("//") && !line.equals("")) {
          sp = line.split("=");
          settingsList.add(sp[0]);
          settingsList.add(sp[1]);
          
        }
        
      }

      
      // Window settings
      DISP_WIDTH = Integer.parseInt( settingsList.get(indexInArrayList(settingsList, "DISP_WIDTH") + 1) );
      DISP_HEIGHT = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "DISP_HEIGHT") + 1) );
      BACKGROUND_COLOR = unhex("FF" + settingsList.get( indexInArrayList(settingsList, "BACKGROUND_COLOR") + 1));
      FRAMERATE = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "FRAMERATE") + 1) );
      
      
      // World Settings
      FLOOR_HEIGHT = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "FLOOR_HEIGHT") + 1) );
      FLOOR_TEXTURE = settingsList.get( indexInArrayList(settingsList, "FLOOR_TEXTURE") + 1);
      SCORE_PER_WAVE = Integer.parseInt( settingsList.get( indexInArrayList(settingsList, "SCORE_PER_WAVE") + 1) );
      
      
      } catch (Exception e) {
      // Error reading file, use default values
      System.out.println("Error reading Settings.txt file; using default settings");
      e.printStackTrace();
      
      // Window settings
      DISP_WIDTH = 700;
      DISP_HEIGHT = 500;
      BACKGROUND_COLOR = #111111;//#87CEFA;
      FRAMERATE = 60;
      
      
      // World Settings
      FLOOR_HEIGHT = 60;
      FLOOR_TEXTURE = "Floor_Texture.png";
      SCORE_PER_WAVE = 200;
      
    }
  }
  
  private int indexInArrayList(ArrayList<String> a, String search) {
    for (int i = 0; i < a.size(); i++) {
      if (a.get(i).equals(search)) {
        return i;
      }
    }
    return -2;
  }
  
>>>>>>> ba864a813337b9095ef01175cd4dd4107dd46765
}