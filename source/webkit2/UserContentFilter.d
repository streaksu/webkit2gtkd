module webkit2.UserContentFilter;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class UserContentFilter
{
	/** the main Gtk struct */
	protected WebKitUserContentFilter* webKitUserContentFilter;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitUserContentFilter* getUserContentFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitUserContentFilter;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitUserContentFilter;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitUserContentFilter* webKitUserContentFilter, bool ownedRef = false)
	{
		this.webKitUserContentFilter = webKitUserContentFilter;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_user_content_filter_unref(webKitUserContentFilter);
	}


	/** */
	public static GType getType()
	{
		return webkit_user_content_filter_get_type();
	}

	/**
	 * Obtain the identifier previously used to save the @user_content_filter in the
	 * #WebKitUserContentFilterStore.
	 *
	 * Returns: the identifier for the filter
	 *
	 * Since: 2.24
	 */
	public string getIdentifier()
	{
		return Str.toString(webkit_user_content_filter_get_identifier(webKitUserContentFilter));
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @user_content_filter by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Since: 2.24
	 */
	public UserContentFilter ref_()
	{
		auto __p = webkit_user_content_filter_ref(webKitUserContentFilter);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserContentFilter)(cast(WebKitUserContentFilter*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @user_content_filter by one.
	 * If the reference count drops to 0, all the memory allocated by the
	 * #WebKitUserContentFilter is released. This function is MT-safe and may
	 * be called from any thread.
	 *
	 * Since: 2.24
	 */
	public void unref()
	{
		webkit_user_content_filter_unref(webKitUserContentFilter);
	}
}
