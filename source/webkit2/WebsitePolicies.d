module webkit2.WebsitePolicies;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitWebsitePolicies allows you to configure per-page policies,
 * currently only autoplay policies are supported.
 *
 * Since: 2.30
 */
public class WebsitePolicies : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebsitePolicies* webKitWebsitePolicies;

	/** Get the main Gtk struct */
	public WebKitWebsitePolicies* getWebsitePoliciesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebsitePolicies;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebsitePolicies;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebsitePolicies* webKitWebsitePolicies, bool ownedRef = false)
	{
		this.webKitWebsitePolicies = webKitWebsitePolicies;
		super(cast(GObject*)webKitWebsitePolicies, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_website_policies_get_type();
	}

	/**
	 * Create a new #WebKitWebsitePolicies
	 *
	 * Returns: the newly created #WebKitWebsitePolicies
	 *
	 * Since: 2.30
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_website_policies_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitWebsitePolicies*) __p, true);
	}

	/**
	 * Get the #WebKitWebsitePolicies:autoplay property.
	 *
	 * Returns: #WebKitAutoplayPolicy
	 *
	 * Since: 2.30
	 */
	public WebKitAutoplayPolicy getAutoplayPolicy()
	{
		return webkit_website_policies_get_autoplay_policy(webKitWebsitePolicies);
	}
}
