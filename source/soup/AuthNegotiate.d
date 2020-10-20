module soup.AuthNegotiate;

private import soup.Auth;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class AuthNegotiate : Auth
{
	/** the main Gtk struct */
	protected SoupAuthNegotiate* soupAuthNegotiate;

	/** Get the main Gtk struct */
	public SoupAuthNegotiate* getAuthNegotiateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthNegotiate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthNegotiate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthNegotiate* soupAuthNegotiate, bool ownedRef = false)
	{
		this.soupAuthNegotiate = soupAuthNegotiate;
		super(cast(SoupAuth*)soupAuthNegotiate, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_negotiate_get_type();
	}

	/**
	 * Indicates whether libsoup was built with GSSAPI support. If this is
	 * %FALSE, %SOUP_TYPE_AUTH_NEGOTIATE will still be defined and can
	 * still be added to a #SoupSession, but libsoup will never attempt to
	 * actually use this auth type.
	 *
	 * Since: 2.54
	 */
	public static bool supported()
	{
		return soup_auth_negotiate_supported() != 0;
	}
}
