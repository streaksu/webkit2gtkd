module soup.Cache;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupCache implements a file-based cache for HTTP resources.
 */
public class Cache : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupCache* soupCache;

	/** Get the main Gtk struct */
	public SoupCache* getCacheStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupCache;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupCache;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupCache* soupCache, bool ownedRef = false)
	{
		this.soupCache = soupCache;
		super(cast(GObject*)soupCache, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupCache);


	/** */
	public static GType getType()
	{
		return soup_cache_get_type();
	}

	/**
	 * Creates a new #SoupCache.
	 *
	 * Params:
	 *     cacheDir = the directory to store the cached data, or %NULL
	 *         to use the default one. Note that since the cache isn't safe to access for
	 *         multiple processes at once, and the default directory isn't namespaced by
	 *         process, clients are strongly discouraged from passing %NULL.
	 *     cacheType = the #SoupCacheType of the cache
	 *
	 * Returns: a new #SoupCache
	 *
	 * Since: 2.34
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string cacheDir, SoupCacheType cacheType)
	{
		auto __p = soup_cache_new(Str.toStringz(cacheDir), cacheType);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupCache*) __p, true);
	}

	/**
	 * Will remove all entries in the @cache plus all the cache files.
	 *
	 * Since: 2.34
	 */
	public void clear()
	{
		soup_cache_clear(soupCache);
	}

	/**
	 * Synchronously writes the cache index out to disk. Contrast with
	 * soup_cache_flush(), which writes pending cache
	 * <emphasis>entries</emphasis> to disk.
	 *
	 * You must call this before exiting if you want your cache data to
	 * persist between sessions.
	 *
	 * Since: 2.34.
	 */
	public void dump()
	{
		soup_cache_dump(soupCache);
	}

	/**
	 * This function will force all pending writes in the @cache to be
	 * committed to disk. For doing so it will iterate the #GMainContext
	 * associated with @cache's session as long as needed.
	 *
	 * Contrast with soup_cache_dump(), which writes out the cache index
	 * file.
	 *
	 * Since: 2.34
	 */
	public void flush()
	{
		soup_cache_flush(soupCache);
	}

	/**
	 * Gets the maximum size of the cache.
	 *
	 * Returns: the maximum size of the cache, in bytes.
	 *
	 * Since: 2.34
	 */
	public uint getMaxSize()
	{
		return soup_cache_get_max_size(soupCache);
	}

	/**
	 * Loads the contents of @cache's index into memory.
	 *
	 * Since: 2.34
	 */
	public void load()
	{
		soup_cache_load(soupCache);
	}

	/**
	 * Sets the maximum size of the cache.
	 *
	 * Params:
	 *     maxSize = the maximum size of the cache, in bytes
	 *
	 * Since: 2.34
	 */
	public void setMaxSize(uint maxSize)
	{
		soup_cache_set_max_size(soupCache, maxSize);
	}
}
