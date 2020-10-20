module webkit2webextension.DOMXPathNSResolverIF;

private import glib.Str;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public interface DOMXPathNSResolverIF{
	/** Get the main Gtk struct */
	public WebKitDOMXPathNSResolver* getDOMXPathNSResolverStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return webkit_dom_xpath_ns_resolver_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     prefix = The prefix to lookup
	 *
	 * Returns: a #gchar
	 */
	public string lookupNamespaceUri(string prefix);
}
