/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

/**
 *
 * @author MyPC
 */
public class history {
    private  int dice1;
    private  int dice2;
    private  String result;
    private  String choice;
    private int money;

    public history(int dice1, int dice2, String result, String choice) {
        this.dice1 = dice1;
        this.dice2 = dice2;
        this.result = result;
        this.choice = choice;
    }

    public history() {
    }


    
    public int getDice1() {
        return dice1;
    }

    public int getDice2() {
        return dice2;
    }

    public String getResult() {
        return result;
    }

    public String getChoice() {
        return choice;
    }


    public void setDice1(int dice1) {
        this.dice1 = dice1;
    }

    public void setDice2(int dice2) {
        this.dice2 = dice2;
    }

    public void setResult(String result) {
        this.result = result;
    }

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    
    
    
    
}
