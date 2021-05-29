class Gui {
  Textfield I1, O1;
  DropdownList I2, O2;
  Button Confirm;
  Textlabel Hello,Valuta;

  //laver en global font for at kunne manipulere de forskellige textfelter
  PFont font;

  Gui() {
    font = createFont("arial", 40);
    I1 = cp5.addTextfield("Input1");
    I1.setPosition(25, 300)
      .setSize(150, 50)
      .setFont(font)
      .setColor(color(255, 255, 255))
      .setAutoClear(false)
      .setLabel("Input");

    O1 = cp5.addTextfield("Output1");
    O1.setPosition(225, 300)
      .setSize(150, 50)
      .setFont(font)
      .setColor(color(255, 255, 255))
      .setAutoClear(false)
      .setPasswordMode(true)
      .setLabel("Output");

    //Dette er OK knap
    Confirm = cp5.addButton("Login");
    Confirm.setPosition(50, 425)
      .setSize(300, 50)
      .setFont(font);

    //DROPDOWNLIST
    I2 = cp5.addDropdownList("Input2")
      .setPosition(25, 225)
      .setSize(150, 50);
    customize(I2);

    O2 = cp5.addDropdownList("Output2")
      .setPosition(225, 225)
      .setSize(150, 50);

    customize(O2);

    Hello = cp5.addTextlabel("Hello")
      .setText("Welcome to")
      .setPosition(1, 50)
      .setColorValue(0xffffff00)
      .setFont(createFont("Arial", 75));
      
      Valuta = cp5.addTextlabel("Valuta")
      .setText("Valutaomregner 2.0!")
      .setPosition(25, 120)
      .setColorValue(0xffffff00)
      .setFont(createFont("Arial", 40));
  }

  void customize(DropdownList ddl) {
    // a convenience function to customize a DropdownList
    ddl.setBackgroundColor(color(190));
    ddl.setItemHeight(20);
    ddl.setBarHeight(50);

    ddl.setCaptionLabel("dropdown");
  }
}
