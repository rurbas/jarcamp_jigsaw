package com.anotherconsumer;

//import org.astro.World;
//import p.Greetings;
import com.greetings.another.AnotherView;


public class AnotherHello {
	public static void main(String[] args) {
//		System.out.println("\n\n\ncom.anotherconsumer:\n\nAnother Hello, "
//				+ World.name() + "!\n\n\n");
//		System.out.println(new Greetings().getClass().getCanonicalName());
		System.out.println(new AnotherView().getClass().getCanonicalName());

	}
}