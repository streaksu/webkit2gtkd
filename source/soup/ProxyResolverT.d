module soup.ProxyResolverT;

public  import gio.Cancellable;
public  import glib.MainContext;
public  import gobject.ObjectG;
public  import soup.Address;
public  import soup.Message;
public  import soup.c.functions;
public  import soup.c.types;


/** */
public template ProxyResolverT(TStruct)
{
	/** Get the main Gtk struct */
	public SoupProxyResolver* getProxyResolverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(SoupProxyResolver*)getStruct();
	}


	/**
	 *
	 *
	 * Deprecated: Use SoupProxyURIResolver.get_proxy_uri_async instead
	 */
	public void getProxyAsync(Message msg, MainContext asyncContext, Cancellable cancellable, SoupProxyResolverCallback callback, void* userData)
	{
		soup_proxy_resolver_get_proxy_async(getProxyResolverStruct(), (msg is null) ? null : msg.getMessageStruct(), (asyncContext is null) ? null : asyncContext.getMainContextStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 *
	 *
	 * Deprecated: Use SoupProxyURIResolver.get_proxy_uri_sync() instead
	 */
	public uint getProxySync(Message msg, Cancellable cancellable, out Address addr)
	{
		SoupAddress* outaddr = null;

		auto __p = soup_proxy_resolver_get_proxy_sync(getProxyResolverStruct(), (msg is null) ? null : msg.getMessageStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), &outaddr);

		addr = ObjectG.getDObject!(Address)(outaddr);

		return __p;
	}
}
