module org.astro @ 1.2 {
	exports org.astro;
    provides service org.astro.IWorldService with org.astro.internal.WorldService;
    provides service org.astro.IWorldService with org.astro.internal.AlternativeWorldService;
}