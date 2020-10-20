module webkit2.WebsiteData;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitWebsiteData represents data stored in the client by a particular website.
 * A website is normally a set of URLs grouped by domain name. You can get the website name,
 * which is usually the domain, with webkit_website_data_get_name().
 * Documents loaded from the file system, like file:// URIs, are all grouped in the same WebKitWebsiteData
 * with the name "Local files".
 * 
 * A website can store different types of data in the client side. #WebKitWebsiteDataTypes is an enum containing
 * all the possible data types; use webkit_website_data_get_types() to get the bitmask of data types.
 * It's also possible to know the size of the data stored for some of the #WebKitWebsiteDataTypes by using
 * webkit_website_data_get_size().
 * 
 * A list of WebKitWebsiteData can be retrieved with webkit_website_data_manager_fetch(). See #WebKitWebsiteDataManager
 * for more information.
 *
 * Since: 2.16
 */
public class WebsiteData
{
	/** the main Gtk struct */
	protected WebKitWebsiteData* webKitWebsiteData;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitWebsiteData* getWebsiteDataStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebsiteData;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitWebsiteData;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebsiteData* webKitWebsiteData, bool ownedRef = false)
	{
		this.webKitWebsiteData = webKitWebsiteData;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_website_data_unref(webKitWebsiteData);
	}


	/** */
	public static GType getType()
	{
		return webkit_website_data_get_type();
	}

	/**
	 * Gets the name of #WebKitWebsiteData. This is the website name, normally represented by
	 * a domain or host name. All local documents are grouped in the same #WebKitWebsiteData using
	 * the name "Local files".
	 *
	 * Returns: the website name of @website_data.
	 *
	 * Since: 2.16
	 */
	public string getName()
	{
		return Str.toString(webkit_website_data_get_name(webKitWebsiteData));
	}

	/**
	 * Gets the size of the data of types @types in a #WebKitWebsiteData.
	 * Note that currently the data size is only known for %WEBKIT_WEBSITE_DATA_DISK_CACHE data type
	 * so for all other types 0 will be returned.
	 *
	 * Params:
	 *     types = a bitmask  of #WebKitWebsiteDataTypes
	 *
	 * Returns: the size of @website_data for the given @types.
	 *
	 * Since: 2.16
	 */
	public ulong getSize(WebKitWebsiteDataTypes types)
	{
		return webkit_website_data_get_size(webKitWebsiteData, types);
	}

	/**
	 * Gets the types of data stored in the client for a #WebKitWebsiteData. These are the
	 * types actually present, not the types queried with webkit_website_data_manager_fetch().
	 *
	 * Returns: a bitmask of #WebKitWebsiteDataTypes in @website_data
	 *
	 * Since: 2.16
	 */
	public WebKitWebsiteDataTypes getTypes()
	{
		return webkit_website_data_get_types(webKitWebsiteData);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @website_data by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed #WebKitWebsiteData
	 *
	 * Since: 2.16
	 */
	public WebsiteData ref_()
	{
		auto __p = webkit_website_data_ref(webKitWebsiteData);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebsiteData)(cast(WebKitWebsiteData*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @website_data by one.
	 * If the reference count drops to 0, all memory allocated by
	 * #WebKitWebsiteData is released. This function is MT-safe and may be
	 * called from any thread.
	 *
	 * Since: 2.16
	 */
	public void unref()
	{
		webkit_website_data_unref(webKitWebsiteData);
	}
}
