package com.greetings;

import java.util.ServiceLoader;

import org.astro.IWorldService;

public class Hello {
	public static void main(String[] args) {
		ServiceLoader<IWorldService> serviceLoader = ServiceLoader
				.load(IWorldService.class);
		for (IWorldService service : serviceLoader) {
			System.out.println("\n\n\nService call returned:\n\n"
					+ service.getWorldName() + "!\n\n\n");
		}

	}
}