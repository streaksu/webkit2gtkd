module soup.ProxyResolverIF;

private import gio.Cancellable;
private import glib.MainContext;
private import gobject.ObjectG;
private import soup.Address;
private import soup.Message;
private import soup.c.functions;
public  import soup.c.types;


/** */
public interface ProxyResolverIF{
	/** Get the main Gtk struct */
	public SoupProxyResolver* getProxyResolverStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return soup_proxy_resolver_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use SoupProxyURIResolver.get_proxy_uri_async instead
	 */
	public void getProxyAsync(Message msg, MainContext asyncContext, Cancellable cancellable, SoupProxyResolverCallback callback, void* userData);

	/**
	 *
	 *
	 * Deprecated: Use SoupProxyURIResolver.get_proxy_uri_sync() instead
	 */
	public uint getProxySync(Message msg, Cancellable cancellable, out Address addr);
}
