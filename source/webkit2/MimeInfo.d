module webkit2.MimeInfo;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class MimeInfo
{
	/** the main Gtk struct */
	protected WebKitMimeInfo* webKitMimeInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitMimeInfo* getMimeInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitMimeInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitMimeInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitMimeInfo* webKitMimeInfo, bool ownedRef = false)
	{
		this.webKitMimeInfo = webKitMimeInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_mime_info_unref(webKitMimeInfo);
	}


	/** */
	public static GType getType()
	{
		return webkit_mime_info_get_type();
	}

	/**
	 * Returns: the description of the MIME type of @info
	 */
	public string getDescription()
	{
		return Str.toString(webkit_mime_info_get_description(webKitMimeInfo));
	}

	/**
	 * Get the list of file extensions associated to the
	 * MIME type of @info
	 *
	 * Returns: a
	 *     %NULL-terminated array of strings
	 */
	public string[] getExtensions()
	{
		return Str.toStringArray(webkit_mime_info_get_extensions(webKitMimeInfo));
	}

	/**
	 * Returns: the MIME type of @info
	 */
	public string getMimeType()
	{
		return Str.toString(webkit_mime_info_get_mime_type(webKitMimeInfo));
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @info by one. This
	 * function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed in #WebKitMimeInfo
	 */
	public MimeInfo ref_()
	{
		auto __p = webkit_mime_info_ref(webKitMimeInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(MimeInfo)(cast(WebKitMimeInfo*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @info by one. If the
	 * reference count drops to 0, all memory allocated by the #WebKitMimeInfo is
	 * released. This function is MT-safe and may be called from any
	 * thread.
	 */
	public void unref()
	{
		webkit_mime_info_unref(webKitMimeInfo);
	}
}
