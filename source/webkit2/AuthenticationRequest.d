module webkit2.AuthenticationRequest;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.Credential;
private import webkit2.SecurityOrigin;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * Whenever a client attempts to load a page protected by HTTP
 * authentication, credentials will need to be provided to authorize access.
 * To allow the client to decide how it wishes to handle authentication,
 * WebKit will fire a #WebKitWebView::authenticate signal with a
 * WebKitAuthenticationRequest object to provide client side
 * authentication support. Credentials are exposed through the
 * #WebKitCredential object.
 * 
 * In case the client application does not wish
 * to handle this signal WebKit will provide a default handler. To handle
 * authentication asynchronously, simply increase the reference count of the
 * WebKitAuthenticationRequest object.
 */
public class AuthenticationRequest : ObjectG
{
	/** the main Gtk struct */
	protected WebKitAuthenticationRequest* webKitAuthenticationRequest;

	/** Get the main Gtk struct */
	public WebKitAuthenticationRequest* getAuthenticationRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitAuthenticationRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitAuthenticationRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitAuthenticationRequest* webKitAuthenticationRequest, bool ownedRef = false)
	{
		this.webKitAuthenticationRequest = webKitAuthenticationRequest;
		super(cast(GObject*)webKitAuthenticationRequest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_authentication_request_get_type();
	}

	/**
	 * Authenticate the #WebKitAuthenticationRequest using the #WebKitCredential
	 * supplied. To continue without credentials, pass %NULL as @credential.
	 *
	 * Params:
	 *     credential = A #WebKitCredential, or %NULL
	 *
	 * Since: 2.2
	 */
	public void authenticate(Credential credential)
	{
		webkit_authentication_request_authenticate(webKitAuthenticationRequest, (credential is null) ? null : credential.getCredentialStruct());
	}

	/**
	 * Determine whether the authentication method associated with this
	 * #WebKitAuthenticationRequest should allow the storage of credentials.
	 * This will return %FALSE if WebKit doesn't support credential storing,
	 * if private browsing is enabled, or if persistent credential storage has been
	 * disabled in #WebKitWebsiteDataManager, unless credentials saving has been
	 * explicitly enabled with webkit_authentication_request_set_can_save_credentials().
	 *
	 * Returns: %TRUE if WebKit can store credentials or %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public bool canSaveCredentials()
	{
		return webkit_authentication_request_can_save_credentials(webKitAuthenticationRequest) != 0;
	}

	/**
	 * Cancel the authentication challenge. This will also cancel the page loading and result in a
	 * #WebKitWebView::load-failed signal with a #WebKitNetworkError of type %WEBKIT_NETWORK_ERROR_CANCELLED being emitted.
	 *
	 * Since: 2.2
	 */
	public void cancel()
	{
		webkit_authentication_request_cancel(webKitAuthenticationRequest);
	}

	/**
	 * Get the host that this authentication challenge is applicable to.
	 *
	 * Returns: The host of @request.
	 *
	 * Since: 2.2
	 */
	public string getHost()
	{
		return Str.toString(webkit_authentication_request_get_host(webKitAuthenticationRequest));
	}

	/**
	 * Get the port that this authentication challenge is applicable to.
	 *
	 * Returns: The port of @request.
	 *
	 * Since: 2.2
	 */
	public uint getPort()
	{
		return webkit_authentication_request_get_port(webKitAuthenticationRequest);
	}

	/**
	 * Get the #WebKitCredential of the proposed authentication challenge that was
	 * stored from a previous session. The client can use this directly for
	 * authentication or construct their own #WebKitCredential.
	 *
	 * Returns: A #WebKitCredential encapsulating credential details
	 *     or %NULL if there is no stored credential.
	 *
	 * Since: 2.2
	 */
	public Credential getProposedCredential()
	{
		auto __p = webkit_authentication_request_get_proposed_credential(webKitAuthenticationRequest);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Credential)(cast(WebKitCredential*) __p, true);
	}

	/**
	 * Get the realm that this authentication challenge is applicable to.
	 *
	 * Returns: The realm of @request.
	 *
	 * Since: 2.2
	 */
	public string getRealm()
	{
		return Str.toString(webkit_authentication_request_get_realm(webKitAuthenticationRequest));
	}

	/**
	 * Get the authentication scheme of the authentication challenge.
	 *
	 * Returns: The #WebKitAuthenticationScheme of @request.
	 *
	 * Since: 2.2
	 */
	public WebKitAuthenticationScheme getScheme()
	{
		return webkit_authentication_request_get_scheme(webKitAuthenticationRequest);
	}

	/**
	 * Get the #WebKitSecurityOrigin that this authentication challenge is applicable to.
	 *
	 * Returns: a newly created #WebKitSecurityOrigin.
	 *
	 * Since: 2.30
	 */
	public SecurityOrigin getSecurityOrigin()
	{
		auto __p = webkit_authentication_request_get_security_origin(webKitAuthenticationRequest);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SecurityOrigin)(cast(WebKitSecurityOrigin*) __p, true);
	}

	/**
	 * Determine whether the authentication challenge is associated with a proxy server rather than an "origin" server.
	 *
	 * Returns: %TRUE if authentication is for a proxy or %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public bool isForProxy()
	{
		return webkit_authentication_request_is_for_proxy(webKitAuthenticationRequest) != 0;
	}

	/**
	 * Determine whether this this is a first attempt or a retry for this authentication challenge.
	 *
	 * Returns: %TRUE if authentication attempt is a retry or %FALSE otherwise.
	 *
	 * Since: 2.2
	 */
	public bool isRetry()
	{
		return webkit_authentication_request_is_retry(webKitAuthenticationRequest) != 0;
	}

	/**
	 * Set whether the authentication method associated with @request
	 * should allow the storage of credentials.
	 * This should be used by applications handling their own credentials
	 * storage to indicate that it should be supported even when internal
	 * credential storage is disabled or unsupported.
	 * Note that storing of credentials will not be allowed on ephemeral
	 * sessions in any case.
	 *
	 * Params:
	 *     enabled = value to set
	 *
	 * Since: 2.30
	 */
	public void setCanSaveCredentials(bool enabled)
	{
		webkit_authentication_request_set_can_save_credentials(webKitAuthenticationRequest, enabled);
	}

	/**
	 * Set the #WebKitCredential of the proposed authentication challenge that was
	 * stored from a previous session. This should only be used by applications handling
	 * their own credential storage. (When using the default WebKit credential storage,
	 * webkit_authentication_request_get_proposed_credential() already contains previously-stored
	 * credentials.)
	 * Passing a %NULL @credential will clear the proposed credential.
	 *
	 * Params:
	 *     credential = a #WebKitCredential, or %NULL
	 *
	 * Since: 2.30
	 */
	public void setProposedCredential(Credential credential)
	{
		webkit_authentication_request_set_proposed_credential(webKitAuthenticationRequest, (credential is null) ? null : credential.getCredentialStruct());
	}

	/**
	 * This signal is emitted when the user authentication request succeeded.
	 * Applications handling their own credential storage should connect to
	 * this signal to save the credentials.
	 *
	 * Params:
	 *     credential = the #WebKitCredential accepted
	 *
	 * Since: 2.30
	 */
	gulong addOnAuthenticated(void delegate(Credential, AuthenticationRequest) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "authenticated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the user authentication request is
	 * cancelled. It allows the application to dismiss its authentication
	 * dialog in case of page load failure for example.
	 *
	 * Since: 2.2
	 */
	gulong addOnCancelled(void delegate(AuthenticationRequest) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "cancelled", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
