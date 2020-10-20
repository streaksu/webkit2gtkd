module webkit2.SecurityOrigin;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * #WebKitSecurityOrigin is a representation of a security domain
 * defined by websites. A security origin normally consists of a
 * protocol, a hostname, and a port number. It is also possible for a
 * security origin to be opaque, as defined by the HTML standard, in
 * which case it has no associated protocol, host, or port.
 * 
 * Websites with the same security origin can access each other's
 * resources for client-side scripting or database access.
 *
 * Since: 2.16
 */
public class SecurityOrigin
{
	/** the main Gtk struct */
	protected WebKitSecurityOrigin* webKitSecurityOrigin;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitSecurityOrigin* getSecurityOriginStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitSecurityOrigin;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitSecurityOrigin;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitSecurityOrigin* webKitSecurityOrigin, bool ownedRef = false)
	{
		this.webKitSecurityOrigin = webKitSecurityOrigin;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_security_origin_unref(webKitSecurityOrigin);
	}


	/** */
	public static GType getType()
	{
		return webkit_security_origin_get_type();
	}

	/**
	 * Create a new security origin from the provided protocol, host and
	 * port.
	 *
	 * Params:
	 *     protocol = The protocol for the new origin
	 *     host = The host for the new origin
	 *     port = The port number for the new origin, or 0 to indicate the
	 *         default port for @protocol
	 *
	 * Returns: A #WebKitSecurityOrigin.
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string protocol, string host, ushort port)
	{
		auto __p = webkit_security_origin_new(Str.toStringz(protocol), Str.toStringz(host), port);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitSecurityOrigin*) __p);
	}

	/**
	 * Create a new security origin from the provided URI. Components of
	 * @uri other than protocol, host, and port do not affect the created
	 * #WebKitSecurityOrigin.
	 *
	 * Params:
	 *     uri = The URI for the new origin
	 *
	 * Returns: A #WebKitSecurityOrigin.
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string uri)
	{
		auto __p = webkit_security_origin_new_for_uri(Str.toStringz(uri));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_uri");
		}

		this(cast(WebKitSecurityOrigin*) __p);
	}

	/**
	 * Gets the hostname of @origin, or %NULL if @origin is opaque or if its
	 * protocol does not require a host component.
	 *
	 * Returns: The host of the #WebKitSecurityOrigin
	 *
	 * Since: 2.16
	 */
	public string getHost()
	{
		return Str.toString(webkit_security_origin_get_host(webKitSecurityOrigin));
	}

	/**
	 * Gets the port of @origin. This function will always return 0 if the
	 * port is the default port for the given protocol. For example,
	 * http://example.com has the same security origin as
	 * http://example.com:80, and this function will return 0 for a
	 * #WebKitSecurityOrigin constructed from either URI. It will also
	 * return 0 if @origin is opaque.
	 *
	 * Returns: The port of the #WebKitSecurityOrigin.
	 *
	 * Since: 2.16
	 */
	public ushort getPort()
	{
		return webkit_security_origin_get_port(webKitSecurityOrigin);
	}

	/**
	 * Gets the protocol of @origin, or %NULL if @origin is opaque.
	 *
	 * Returns: The protocol of the #WebKitSecurityOrigin
	 *
	 * Since: 2.16
	 */
	public string getProtocol()
	{
		return Str.toString(webkit_security_origin_get_protocol(webKitSecurityOrigin));
	}

	/**
	 * Gets whether @origin is an opaque security origin, which does not
	 * possess an associated protocol, host, or port.
	 *
	 * Returns: %TRUE if @origin is opaque.
	 *
	 * Since: 2.16
	 */
	public bool isOpaque()
	{
		return webkit_security_origin_is_opaque(webKitSecurityOrigin) != 0;
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @origin by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed #WebKitSecurityOrigin
	 *
	 * Since: 2.16
	 */
	public SecurityOrigin ref_()
	{
		auto __p = webkit_security_origin_ref(webKitSecurityOrigin);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SecurityOrigin)(cast(WebKitSecurityOrigin*) __p, true);
	}

	/**
	 * Gets a string representation of @origin. The string representation
	 * is a valid URI with only protocol, host, and port components. It may
	 * be %NULL, but usually only if @origin is opaque.
	 *
	 * Returns: a URI representing @origin.
	 *
	 * Since: 2.16
	 */
	public override string toString()
	{
		auto retStr = webkit_security_origin_to_string(webKitSecurityOrigin);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * Atomically decrements the reference count of @origin by one.
	 * If the reference count drops to 0, all memory allocated by
	 * #WebKitSecurityOrigin is released. This function is MT-safe and may be
	 * called from any thread.
	 *
	 * Since: 2.16
	 */
	public void unref()
	{
		webkit_security_origin_unref(webKitSecurityOrigin);
	}
}
