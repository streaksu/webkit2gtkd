module webkit2.Credential;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class Credential
{
	/** the main Gtk struct */
	protected WebKitCredential* webKitCredential;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitCredential* getCredentialStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitCredential;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitCredential;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitCredential* webKitCredential, bool ownedRef = false)
	{
		this.webKitCredential = webKitCredential;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_credential_free(webKitCredential);
	}


	/** */
	public static GType getType()
	{
		return webkit_credential_get_type();
	}

	/**
	 * Create a new credential from the provided username, password and persistence mode.
	 *
	 * Params:
	 *     username = The username for the new credential
	 *     password = The password for the new credential
	 *     persistence = The #WebKitCredentialPersistence of the new credential
	 *
	 * Returns: A #WebKitCredential.
	 *
	 * Since: 2.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string username, string password, WebKitCredentialPersistence persistence)
	{
		auto __p = webkit_credential_new(Str.toStringz(username), Str.toStringz(password), persistence);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitCredential*) __p);
	}

	/**
	 * Make a copy of the #WebKitCredential.
	 *
	 * Returns: A copy of passed in #WebKitCredential
	 *
	 * Since: 2.2
	 */
	public Credential copy()
	{
		auto __p = webkit_credential_copy(webKitCredential);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Credential)(cast(WebKitCredential*) __p, true);
	}

	/**
	 * Free the #WebKitCredential.
	 *
	 * Since: 2.2
	 */
	public void free()
	{
		webkit_credential_free(webKitCredential);
		ownedRef = false;
	}

	/**
	 * Get the password currently held by this #WebKitCredential.
	 *
	 * Returns: The password stored in the #WebKitCredential.
	 *
	 * Since: 2.2
	 */
	public string getPassword()
	{
		return Str.toString(webkit_credential_get_password(webKitCredential));
	}

	/**
	 * Get the persistence mode currently held by this #WebKitCredential.
	 *
	 * Returns: The #WebKitCredentialPersistence stored in the #WebKitCredential.
	 *
	 * Since: 2.2
	 */
	public WebKitCredentialPersistence getPersistence()
	{
		return webkit_credential_get_persistence(webKitCredential);
	}

	/**
	 * Get the username currently held by this #WebKitCredential.
	 *
	 * Returns: The username stored in the #WebKitCredential.
	 *
	 * Since: 2.2
	 */
	public string getUsername()
	{
		return Str.toString(webkit_credential_get_username(webKitCredential));
	}

	/**
	 * Determine whether this credential has a password stored.
	 *
	 * Returns: %TRUE if the credential has a password or %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public bool hasPassword()
	{
		return webkit_credential_has_password(webKitCredential) != 0;
	}
}
