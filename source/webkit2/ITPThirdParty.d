module webkit2.ITPThirdParty;

private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class ITPThirdParty
{
	/** the main Gtk struct */
	protected WebKitITPThirdParty* webKitITPThirdParty;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitITPThirdParty* getITPThirdPartyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitITPThirdParty;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitITPThirdParty;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitITPThirdParty* webKitITPThirdParty, bool ownedRef = false)
	{
		this.webKitITPThirdParty = webKitITPThirdParty;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_itp_third_party_unref(webKitITPThirdParty);
	}


	/** */
	public static GType getType()
	{
		return webkit_itp_third_party_get_type();
	}

	/**
	 * Get the domain name of @itp_third_party
	 *
	 * Returns: the domain name
	 *
	 * Since: 2.30
	 */
	public string getDomain()
	{
		return Str.toString(webkit_itp_third_party_get_domain(webKitITPThirdParty));
	}

	/**
	 * Get the list of #WebKitITPFirstParty under which @itp_third_party has been seen.
	 *
	 * Returns: a #GList of #WebKitITPFirstParty
	 *
	 * Since: 2.30
	 */
	public ListG getFirstParties()
	{
		auto __p = webkit_itp_third_party_get_first_parties(webKitITPThirdParty);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @itp_third_party by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed #WebKitITPThirdParty
	 *
	 * Since: 2.30
	 */
	public ITPThirdParty ref_()
	{
		auto __p = webkit_itp_third_party_ref(webKitITPThirdParty);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ITPThirdParty)(cast(WebKitITPThirdParty*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @itp_third_party by one.
	 * If the reference count drops to 0, all memory allocated by
	 * #WebKitITPThirdParty is released. This function is MT-safe and may be
	 * called from any thread.
	 *
	 * Since: 2.30
	 */
	public void unref()
	{
		webkit_itp_third_party_unref(webKitITPThirdParty);
	}
}
