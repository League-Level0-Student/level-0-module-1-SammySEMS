package _03_if_else._1_unbirthday;

import javax.swing.JOptionPane;

public class Unbirthday {
public static void main(String[] args) {
	
	String birthday = JOptionPane.showInputDialog ("When is your birthday (mm/dd)");
	
if(birthday.equalsIgnoreCase("11/09")) {
	JOptionPane.showMessageDialog(null, "Happy Birthday to you!");
	
	
}
else {
	JOptionPane.showMessageDialog(null, "Happy UnBirthday to you!");
}
}

}