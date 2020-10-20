module soup.AuthDomainBasic;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import soup.AuthDomain;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupAuthDomainBasic handles the server side of HTTP "Basic" (ie,
 * cleartext password) authentication.
 */
public class AuthDomainBasic : AuthDomain
{
	/** the main Gtk struct */
	protected SoupAuthDomainBasic* soupAuthDomainBasic;

	/** Get the main Gtk struct */
	public SoupAuthDomainBasic* getAuthDomainBasicStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthDomainBasic;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthDomainBasic;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthDomainBasic* soupAuthDomainBasic, bool ownedRef = false)
	{
		this.soupAuthDomainBasic = soupAuthDomainBasic;
		super(cast(SoupAuthDomain*)soupAuthDomainBasic, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_domain_basic_get_type();
	}

	/**
	 * Sets the callback that @domain will use to authenticate incoming
	 * requests. For each request containing authorization, @domain will
	 * invoke the callback, and then either accept or reject the request
	 * based on @callback's return value.
	 *
	 * You can also set the auth callback by setting the
	 * %SOUP_AUTH_DOMAIN_BASIC_AUTH_CALLBACK and
	 * %SOUP_AUTH_DOMAIN_BASIC_AUTH_DATA properties, which can also be
	 * used to set the callback at construct time.
	 *
	 * Params:
	 *     callback = the callback
	 *     userData = data to pass to @auth_callback
	 *     dnotify = destroy notifier to free @user_data when @domain
	 *         is destroyed
	 */
	public void setAuthCallback(SoupAuthDomainBasicAuthCallback callback, void* userData, GDestroyNotify dnotify)
	{
		soup_auth_domain_basic_set_auth_callback(cast(SoupAuthDomain*)soupAuthDomainBasic, callback, userData, dnotify);
	}
}
