package _04_int._1_riddler;
//    Copyright (c) The League of Amazing Programmers 2013-2019

//    Level 0

import javax.swing.JOptionPane;

public class TheRiddler {

	public static void main(String[] args) {

		// 1. Make a variable to hold the score
		int score = 0;
		// 3. Ask the user a riddle. Here are some ideas: bit.ly/some-riddles
		String answer = JOptionPane.showInputDialog(null, "What walks on 4 legs, then 2 legs, then 3 legs?");
		// 4. If they got the answer right, pop up "correct!" and increase the score by
		// one

		// 5. Otherwise, say "wrong" and tell them the answer
		if (answer.equalsIgnoreCase("people")) {
			JOptionPane.showMessageDialog(null, "Correct!");
			score++; // also score=score+1; also score+=1;

		}

		else {
			JOptionPane.showMessageDialog(null, "Wrong! The correct answer was people.");

		}

		// 6. Add some more riddles
		answer = JOptionPane.showInputDialog(null, "What has a head and a tail but no body?");
		// 2. Make a pop up to show the score.
		if (answer.equalsIgnoreCase("coin")) {
			score++;

		} else {
			JOptionPane.showMessageDialog(null, "Wrong! The correct answer was a coin.");

		}
		JOptionPane.showMessageDialog(null, "You have scored " + score);
	}
}