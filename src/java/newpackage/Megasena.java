/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author André
 */
public class Megasena {
    public static ArrayList<Integer> geraNumero() {
        ArrayList<Integer> numeros = new ArrayList<>();
        ArrayList<Integer> megasena = new ArrayList<>();
        for (int i = 1; i <= 60; i++) numeros.add(i);
        for (int i = 1; i <= 1; i++) {
            Collections.shuffle(numeros);
            for (int j = 0; j < 6; j++){
                megasena.add(numeros.get(j));
            } 
        }
        
        return megasena;
    }
}
