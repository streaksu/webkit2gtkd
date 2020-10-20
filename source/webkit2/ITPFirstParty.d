module webkit2.ITPFirstParty;

private import glib.DateTime;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class ITPFirstParty
{
	/** the main Gtk struct */
	protected WebKitITPFirstParty* webKitITPFirstParty;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitITPFirstParty* getITPFirstPartyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitITPFirstParty;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitITPFirstParty;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitITPFirstParty* webKitITPFirstParty, bool ownedRef = false)
	{
		this.webKitITPFirstParty = webKitITPFirstParty;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_itp_first_party_unref(webKitITPFirstParty);
	}


	/** */
	public static GType getType()
	{
		return webkit_itp_first_party_get_type();
	}

	/**
	 * Get the domain name of @itp_first_party
	 *
	 * Returns: the domain name
	 *
	 * Since: 2.30
	 */
	public string getDomain()
	{
		return Str.toString(webkit_itp_first_party_get_domain(webKitITPFirstParty));
	}

	/**
	 * Get the last time a #WebKitITPThirdParty has been seen under @itp_first_party.
	 * Each @WebKitITPFirstParty is created by webkit_itp_third_party_get_first_parties() and
	 * therefore corresponds to exactly one #WebKitITPThirdParty.
	 *
	 * Returns: the last update time as a #GDateTime
	 *
	 * Since: 2.30
	 */
	public DateTime getLastUpdateTime()
	{
		auto __p = webkit_itp_first_party_get_last_update_time(webKitITPFirstParty);

		if(__p is null)
		{
			return null;
		}

		return new DateTime(cast(GDateTime*) __p);
	}

	/**
	 * Get whether @itp_first_party has granted website data access to its #WebKitITPThirdParty.
	 * Each @WebKitITPFirstParty is created by webkit_itp_third_party_get_first_parties() and
	 * therefore corresponds to exactly one #WebKitITPThirdParty.
	 *
	 * Returns: %TRUE if website data access has been granted, or %FALSE otherwise
	 *
	 * Since: 2.30
	 */
	public bool getWebsiteDataAccessAllowed()
	{
		return webkit_itp_first_party_get_website_data_access_allowed(webKitITPFirstParty) != 0;
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @itp_first_party by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed #WebKitITPFirstParty
	 *
	 * Since: 2.30
	 */
	public ITPFirstParty ref_()
	{
		auto __p = webkit_itp_first_party_ref(webKitITPFirstParty);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ITPFirstParty)(cast(WebKitITPFirstParty*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @itp_first_party by one.
	 * If the reference count drops to 0, all memory allocated by
	 * #WebKitITPFirstParty is released. This function is MT-safe and may be
	 * called from any thread.
	 *
	 * Since: 2.30
	 */
	public void unref()
	{
		webkit_itp_first_party_unref(webKitITPFirstParty);
	}
}
