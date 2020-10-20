module soup.AuthDigest;

private import soup.Auth;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class AuthDigest : Auth
{
	/** the main Gtk struct */
	protected SoupAuthDigest* soupAuthDigest;

	/** Get the main Gtk struct */
	public SoupAuthDigest* getAuthDigestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthDigest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthDigest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthDigest* soupAuthDigest, bool ownedRef = false)
	{
		this.soupAuthDigest = soupAuthDigest;
		super(cast(SoupAuth*)soupAuthDigest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_digest_get_type();
	}
}
