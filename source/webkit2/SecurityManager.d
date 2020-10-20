module webkit2.SecurityManager;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The #WebKitSecurityManager defines security settings for URI
 * schemes in a #WebKitWebContext. Get it from the context with
 * webkit_web_context_get_security_manager(), and use it to register a
 * URI scheme with a certain security level, or to check if it already
 * has it.
 */
public class SecurityManager : ObjectG
{
	/** the main Gtk struct */
	protected WebKitSecurityManager* webKitSecurityManager;

	/** Get the main Gtk struct */
	public WebKitSecurityManager* getSecurityManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitSecurityManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitSecurityManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitSecurityManager* webKitSecurityManager, bool ownedRef = false)
	{
		this.webKitSecurityManager = webKitSecurityManager;
		super(cast(GObject*)webKitSecurityManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_security_manager_get_type();
	}

	/**
	 * Register @scheme as a CORS (Cross-origin resource sharing) enabled scheme.
	 * This means that CORS requests are allowed. See W3C CORS specification
	 * http://www.w3.org/TR/cors/.
	 *
	 * Params:
	 *     scheme = a URI scheme
	 */
	public void registerUriSchemeAsCorsEnabled(string scheme)
	{
		webkit_security_manager_register_uri_scheme_as_cors_enabled(webKitSecurityManager, Str.toStringz(scheme));
	}

	/**
	 * Register @scheme as a display isolated scheme. This means that pages cannot
	 * display these URIs unless they are from the same scheme.
	 *
	 * Params:
	 *     scheme = a URI scheme
	 */
	public void registerUriSchemeAsDisplayIsolated(string scheme)
	{
		webkit_security_manager_register_uri_scheme_as_display_isolated(webKitSecurityManager, Str.toStringz(scheme));
	}

	/**
	 * Register @scheme as an empty document scheme. This means that
	 * they are allowed to commit synchronously.
	 *
	 * Params:
	 *     scheme = a URI scheme
	 */
	public void registerUriSchemeAsEmptyDocument(string scheme)
	{
		webkit_security_manager_register_uri_scheme_as_empty_document(webKitSecurityManager, Str.toStringz(scheme));
	}

	/**
	 * Register @scheme as a local scheme. This means that other non-local pages
	 * cannot link to or access URIs of this scheme.
	 *
	 * Params:
	 *     scheme = a URI scheme
	 */
	public void registerUriSchemeAsLocal(string scheme)
	{
		webkit_security_manager_register_uri_scheme_as_local(webKitSecurityManager, Str.toStringz(scheme));
	}

	/**
	 * Register @scheme as a no-access scheme. This means that pages loaded
	 * with this URI scheme cannot access pages loaded with any other URI scheme.
	 *
	 * Params:
	 *     scheme = a URI scheme
	 */
	public void registerUriSchemeAsNoAccess(string scheme)
	{
		webkit_security_manager_register_uri_scheme_as_no_access(webKitSecurityManager, Str.toStringz(scheme));
	}

	/**
	 * Register @scheme as a secure scheme. This means that mixed
	 * content warnings won't be generated for this scheme when
	 * included by an HTTPS page.
	 *
	 * Params:
	 *     scheme = a URI scheme
	 */
	public void registerUriSchemeAsSecure(string scheme)
	{
		webkit_security_manager_register_uri_scheme_as_secure(webKitSecurityManager, Str.toStringz(scheme));
	}

	/**
	 * Whether @scheme is considered as a CORS enabled scheme.
	 * See also webkit_security_manager_register_uri_scheme_as_cors_enabled().
	 *
	 * Params:
	 *     scheme = a URI scheme
	 *
	 * Returns: %TRUE if @scheme is a CORS enabled scheme or %FALSE otherwise.
	 */
	public bool uriSchemeIsCorsEnabled(string scheme)
	{
		return webkit_security_manager_uri_scheme_is_cors_enabled(webKitSecurityManager, Str.toStringz(scheme)) != 0;
	}

	/**
	 * Whether @scheme is considered as a display isolated scheme.
	 * See also webkit_security_manager_register_uri_scheme_as_display_isolated().
	 *
	 * Params:
	 *     scheme = a URI scheme
	 *
	 * Returns: %TRUE if @scheme is a display isolated scheme or %FALSE otherwise.
	 */
	public bool uriSchemeIsDisplayIsolated(string scheme)
	{
		return webkit_security_manager_uri_scheme_is_display_isolated(webKitSecurityManager, Str.toStringz(scheme)) != 0;
	}

	/**
	 * Whether @scheme is considered as an empty document scheme.
	 * See also webkit_security_manager_register_uri_scheme_as_empty_document().
	 *
	 * Params:
	 *     scheme = a URI scheme
	 *
	 * Returns: %TRUE if @scheme is an empty document scheme or %FALSE otherwise.
	 */
	public bool uriSchemeIsEmptyDocument(string scheme)
	{
		return webkit_security_manager_uri_scheme_is_empty_document(webKitSecurityManager, Str.toStringz(scheme)) != 0;
	}

	/**
	 * Whether @scheme is considered as a local scheme.
	 * See also webkit_security_manager_register_uri_scheme_as_local().
	 *
	 * Params:
	 *     scheme = a URI scheme
	 *
	 * Returns: %TRUE if @scheme is a local scheme or %FALSE otherwise.
	 */
	public bool uriSchemeIsLocal(string scheme)
	{
		return webkit_security_manager_uri_scheme_is_local(webKitSecurityManager, Str.toStringz(scheme)) != 0;
	}

	/**
	 * Whether @scheme is considered as a no-access scheme.
	 * See also webkit_security_manager_register_uri_scheme_as_no_access().
	 *
	 * Params:
	 *     scheme = a URI scheme
	 *
	 * Returns: %TRUE if @scheme is a no-access scheme or %FALSE otherwise.
	 */
	public bool uriSchemeIsNoAccess(string scheme)
	{
		return webkit_security_manager_uri_scheme_is_no_access(webKitSecurityManager, Str.toStringz(scheme)) != 0;
	}

	/**
	 * Whether @scheme is considered as a secure scheme.
	 * See also webkit_security_manager_register_uri_scheme_as_secure().
	 *
	 * Params:
	 *     scheme = a URI scheme
	 *
	 * Returns: %TRUE if @scheme is a secure scheme or %FALSE otherwise.
	 */
	public bool uriSchemeIsSecure(string scheme)
	{
		return webkit_security_manager_uri_scheme_is_secure(webKitSecurityManager, Str.toStringz(scheme)) != 0;
	}
}
