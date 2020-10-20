module webkit2.NetworkProxySettings;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitNetworkProxySettings can be used to provide a custom proxy configuration
 * to a #WebKitWebContext. You need to call webkit_web_context_set_network_proxy_settings()
 * with %WEBKIT_NETWORK_PROXY_MODE_CUSTOM and a WebKitNetworkProxySettings.
 *
 * Since: 2.16
 */
public class NetworkProxySettings
{
	/** the main Gtk struct */
	protected WebKitNetworkProxySettings* webKitNetworkProxySettings;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitNetworkProxySettings* getNetworkProxySettingsStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitNetworkProxySettings;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitNetworkProxySettings;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitNetworkProxySettings* webKitNetworkProxySettings, bool ownedRef = false)
	{
		this.webKitNetworkProxySettings = webKitNetworkProxySettings;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_network_proxy_settings_free(webKitNetworkProxySettings);
	}


	/** */
	public static GType getType()
	{
		return webkit_network_proxy_settings_get_type();
	}

	/**
	 * Create a new #WebKitNetworkProxySettings with the given @default_proxy_uri and @ignore_hosts.
	 *
	 * The default proxy URI will be used for any URI that doesn't match @ignore_hosts, and doesn't match any
	 * of the schemes added with webkit_network_proxy_settings_add_proxy_for_scheme().
	 * If @default_proxy_uri starts with "socks://", it will be treated as referring to all three of the
	 * socks5, socks4a, and socks4 proxy types.
	 *
	 * @ignore_hosts is a list of hostnames and IP addresses that the resolver should allow direct connections to.
	 * Entries can be in one of 4 formats:
	 * <itemizedlist>
	 * <listitem><para>
	 * A hostname, such as "example.com", ".example.com", or "*.example.com", any of which match "example.com" or
	 * any subdomain of it.
	 * </para></listitem>
	 * <listitem><para>
	 * An IPv4 or IPv6 address, such as "192.168.1.1", which matches only that address.
	 * </para></listitem>
	 * <listitem><para>
	 * A hostname or IP address followed by a port, such as "example.com:80", which matches whatever the hostname or IP
	 * address would match, but only for URLs with the (explicitly) indicated port. In the case of an IPv6 address, the address
	 * part must appear in brackets: "[::1]:443"
	 * </para></listitem>
	 * <listitem><para>
	 * An IP address range, given by a base address and prefix length, such as "fe80::/10", which matches any address in that range.
	 * </para></listitem>
	 * </itemizedlist>
	 *
	 * Note that when dealing with Unicode hostnames, the matching is done against the ASCII form of the name.
	 * Also note that hostname exclusions apply only to connections made to hosts identified by name, and IP address exclusions apply only
	 * to connections made to hosts identified by address. That is, if example.com has an address of 192.168.1.1, and @ignore_hosts
	 * contains only "192.168.1.1", then a connection to "example.com" will use the proxy, and a connection to 192.168.1.1" will not.
	 *
	 * Params:
	 *     defaultProxyUri = the default proxy URI to use, or %NULL.
	 *     ignoreHosts = an optional list of hosts/IP addresses to not use a proxy for.
	 *
	 * Returns: A new #WebKitNetworkProxySettings.
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string defaultProxyUri, string[] ignoreHosts)
	{
		auto __p = webkit_network_proxy_settings_new(Str.toStringz(defaultProxyUri), Str.toStringzArray(ignoreHosts));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitNetworkProxySettings*) __p);
	}

	/**
	 * Adds a URI-scheme-specific proxy. URIs whose scheme matches @uri_scheme will be proxied via @proxy_uri.
	 * As with the default proxy URI, if @proxy_uri starts with "socks://", it will be treated as referring to
	 * all three of the socks5, socks4a, and socks4 proxy types.
	 *
	 * Params:
	 *     scheme = the URI scheme to add a proxy for
	 *     proxyUri = the proxy URI to use for @uri_scheme
	 *
	 * Since: 2.16
	 */
	public void addProxyForScheme(string scheme, string proxyUri)
	{
		webkit_network_proxy_settings_add_proxy_for_scheme(webKitNetworkProxySettings, Str.toStringz(scheme), Str.toStringz(proxyUri));
	}

	/**
	 * Make a copy of the #WebKitNetworkProxySettings.
	 *
	 * Returns: A copy of passed in #WebKitNetworkProxySettings
	 *
	 * Since: 2.16
	 */
	public NetworkProxySettings copy()
	{
		auto __p = webkit_network_proxy_settings_copy(webKitNetworkProxySettings);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NetworkProxySettings)(cast(WebKitNetworkProxySettings*) __p, true);
	}

	/**
	 * Free the #WebKitNetworkProxySettings.
	 *
	 * Since: 2.16
	 */
	public void free()
	{
		webkit_network_proxy_settings_free(webKitNetworkProxySettings);
		ownedRef = false;
	}
}
