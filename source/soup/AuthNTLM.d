module soup.AuthNTLM;

private import soup.Auth;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class AuthNTLM : Auth
{
	/** the main Gtk struct */
	protected SoupAuthNTLM* soupAuthNTLM;

	/** Get the main Gtk struct */
	public SoupAuthNTLM* getAuthNTLMStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupAuthNTLM;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupAuthNTLM;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupAuthNTLM* soupAuthNTLM, bool ownedRef = false)
	{
		this.soupAuthNTLM = soupAuthNTLM;
		super(cast(SoupAuth*)soupAuthNTLM, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_auth_ntlm_get_type();
	}
}
