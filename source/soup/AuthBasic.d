module soup.AuthBasic;

private import soup.Auth;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class AuthBasic : Auth
{
	/** the main Gtk struct */
	protected SoupAuthBasic* soupAuthBasic;

	/** Get the main Gtk struct */
	public SoupAuthBasic* getAuthBasicStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthBasic;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthBasic;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthBasic* soupAuthBasic, bool ownedRef = false)
	{
		this.soupAuthBasic = soupAuthBasic;
		super(cast(SoupAuth*)soupAuthBasic, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_basic_get_type();
	}
}
