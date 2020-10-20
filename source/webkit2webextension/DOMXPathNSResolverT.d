module webkit2webextension.DOMXPathNSResolverT;

public  import glib.Str;
public  import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public template DOMXPathNSResolverT(TStruct)
{
	/** Get the main Gtk struct */
	public WebKitDOMXPathNSResolver* getDOMXPathNSResolverStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(WebKitDOMXPathNSResolver*)getStruct();
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
	public string lookupNamespaceUri(string prefix)
	{
		auto retStr = webkit_dom_xpath_ns_resolver_lookup_namespace_uri(getDOMXPathNSResolverStruct(), Str.toStringz(prefix));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
