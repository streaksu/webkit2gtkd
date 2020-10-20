module webkit2.ApplicationInfo;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class ApplicationInfo
{
	/** the main Gtk struct */
	protected WebKitApplicationInfo* webKitApplicationInfo;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitApplicationInfo* getApplicationInfoStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitApplicationInfo;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitApplicationInfo;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitApplicationInfo* webKitApplicationInfo, bool ownedRef = false)
	{
		this.webKitApplicationInfo = webKitApplicationInfo;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_application_info_unref(webKitApplicationInfo);
	}


	/** */
	public static GType getType()
	{
		return webkit_application_info_get_type();
	}

	/**
	 * Creates a new #WebKitApplicationInfo
	 *
	 * Returns: the newly created #WebKitApplicationInfo.
	 *
	 * Since: 2.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_application_info_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitApplicationInfo*) __p);
	}

	/**
	 * Get the name of the application. If webkit_application_info_set_name() hasn't been
	 * called with a valid name, this returns g_get_prgname().
	 *
	 * Returns: the application name
	 *
	 * Since: 2.18
	 */
	public string getName()
	{
		return Str.toString(webkit_application_info_get_name(webKitApplicationInfo));
	}

	/**
	 * Get the application version previously set with webkit_application_info_set_version().
	 *
	 * Params:
	 *     major = return location for the major version number
	 *     minor = return location for the minor version number
	 *     micro = return location for the micro version number
	 *
	 * Since: 2.18
	 */
	public void getVersion(out ulong major, out ulong minor, out ulong micro)
	{
		webkit_application_info_get_version(webKitApplicationInfo, &major, &minor, &micro);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @info by one. This
	 * function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed in #WebKitApplicationInfo
	 *
	 * Since: 2.18
	 */
	public ApplicationInfo ref_()
	{
		auto __p = webkit_application_info_ref(webKitApplicationInfo);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ApplicationInfo)(cast(WebKitApplicationInfo*) __p, true);
	}

	/**
	 * Set the name of the application. If not provided, or %NULL is passed,
	 * g_get_prgname() will be used.
	 *
	 * Params:
	 *     name = the application name
	 *
	 * Since: 2.18
	 */
	public void setName(string name)
	{
		webkit_application_info_set_name(webKitApplicationInfo, Str.toStringz(name));
	}

	/**
	 * Set the application version. If the application doesn't use the format
	 * major.minor.micro you can pass 0 as the micro to use major.minor, or pass
	 * 0 as both micro and minor to use only major number. Any other format must
	 * be converted to major.minor.micro so that it can be used in version comparisons.
	 *
	 * Params:
	 *     major = the major version number
	 *     minor = the minor version number
	 *     micro = the micro version number
	 *
	 * Since: 2.18
	 */
	public void setVersion(ulong major, ulong minor, ulong micro)
	{
		webkit_application_info_set_version(webKitApplicationInfo, major, minor, micro);
	}

	/**
	 * Atomically decrements the reference count of @info by one. If the
	 * reference count drops to 0, all memory allocated by the #WebKitApplicationInfo is
	 * released. This function is MT-safe and may be called from any
	 * thread.
	 *
	 * Since: 2.18
	 */
	public void unref()
	{
		webkit_application_info_unref(webKitApplicationInfo);
	}
}
