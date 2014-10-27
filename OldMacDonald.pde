Farm theFarm;
public void setup() 
{     
  theFarm=new Farm();
  Cow c = new NamedCow("cow", "moo", "Elsie");   
  Chick ch=new Chick("chicken", "cluck", "cheep");
  Pig p=new Pig("pig", "oink");
}
void draw()
{
  theFarm.animalSounds();
}

class Farm  
{     
  private Animal[] aBunchOfAnimals = new Animal[3];    
  public Farm()     
  {       
    aBunchOfAnimals[0] = new NamedCow("cow", "moo", "Elsie");           
    aBunchOfAnimals[1] = new Chick("chick", "cluck", "cheep");       
    aBunchOfAnimals[2] = new Pig("pig", "oink");
  }         
  public void animalSounds()    
  {       
    for (int nI=0; nI < aBunchOfAnimals.length; nI++)      
    {          
      System.out.println( aBunchOfAnimals[nI].getType() + " goes " + aBunchOfAnimals[nI].getSound());
    }
    System.out.println("The cow is known as " + ((NamedCow)aBunchOfAnimals[0]).getCowName());
  }
}

interface Animal
{
  public String getSound();
  public String getType();
}

class Cow implements Animal
{
  protected String myType;
  protected String mySound;

  public Cow()
  {
    myType="unknown";
    mySound="unknown";
  }
  public String getSound()
  {
    return mySound;
  }
  public String getType()
  {
    return myType;
  }
}

class NamedCow extends Cow
{
  protected String cowName;
  public NamedCow(String type, String sound, String name)
  {
    myType=type;
    mySound=sound;
    cowName=name;
  }
  public String getCowName()
  {
    return cowName;
  }
}

class Chick implements Animal
{
  private String myType;
  private String mySound;
  public Chick(String type, String sound, String sound2)
  {
    myType=type;
    if (Math.random() > 0.5)
    {
      mySound=sound;
    } else
    {
      mySound=sound2;
    }
  }
  public Chick()
  {
    myType="unknown";
    mySound="unknown";
  }
  public String getSound()
  {
    return mySound;
  }
  public String getType()
  {
    return myType;
  }
}

class Pig implements Animal
{
  private String myType;
  private String mySound;
  public Pig(String type, String sound)
  {
    myType=type;
    mySound=sound;
  }
  public Pig()
  {
    myType="unknown";
    mySound="unknown";
  }
  public String getSound()
  {
    return mySound;
  }
  public String getType()
  {
    return myType;
  }
}

