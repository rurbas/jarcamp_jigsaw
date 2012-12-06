module com.greetings @ 0.1 {
    requires local org.astro @ 1.2;
	exports p;
    class com.greetings.Hello;
    view com.greetings.internal {
		permits com.anotherconsumer;
		exports com.greetings.another;
    	class com.greetings.AlternativeGreetings;
    }
}