module webkit2webextension.DOMHTMLAreaElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLAreaElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLAreaElement* webKitDOMHTMLAreaElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLAreaElement* getDOMHTMLAreaElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLAreaElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLAreaElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLAreaElement* webKitDOMHTMLAreaElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLAreaElement = webKitDOMHTMLAreaElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLAreaElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_area_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAlt()
	{
		auto retStr = webkit_dom_html_area_element_get_alt(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCoords()
	{
		auto retStr = webkit_dom_html_area_element_get_coords(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHash()
	{
		auto retStr = webkit_dom_html_area_element_get_hash(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHost()
	{
		auto retStr = webkit_dom_html_area_element_get_host(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHostname()
	{
		auto retStr = webkit_dom_html_area_element_get_hostname(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHref()
	{
		auto retStr = webkit_dom_html_area_element_get_href(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getNoHref()
	{
		return webkit_dom_html_area_element_get_no_href(webKitDOMHTMLAreaElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getPathname()
	{
		auto retStr = webkit_dom_html_area_element_get_pathname(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getPort()
	{
		auto retStr = webkit_dom_html_area_element_get_port(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getProtocol()
	{
		auto retStr = webkit_dom_html_area_element_get_protocol(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getSearch()
	{
		auto retStr = webkit_dom_html_area_element_get_search(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getShape()
	{
		auto retStr = webkit_dom_html_area_element_get_shape(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTarget()
	{
		auto retStr = webkit_dom_html_area_element_get_target(webKitDOMHTMLAreaElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAlt(string value)
	{
		webkit_dom_html_area_element_set_alt(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCoords(string value)
	{
		webkit_dom_html_area_element_set_coords(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHash(string value)
	{
		webkit_dom_html_area_element_set_hash(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setHost(string value)
	{
		webkit_dom_html_area_element_set_host(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setHostname(string value)
	{
		webkit_dom_html_area_element_set_hostname(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHref(string value)
	{
		webkit_dom_html_area_element_set_href(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setNoHref(bool value)
	{
		webkit_dom_html_area_element_set_no_href(webKitDOMHTMLAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setPathname(string value)
	{
		webkit_dom_html_area_element_set_pathname(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setPort(string value)
	{
		webkit_dom_html_area_element_set_port(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setProtocol(string value)
	{
		webkit_dom_html_area_element_set_protocol(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setSearch(string value)
	{
		webkit_dom_html_area_element_set_search(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setShape(string value)
	{
		webkit_dom_html_area_element_set_shape(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTarget(string value)
	{
		webkit_dom_html_area_element_set_target(webKitDOMHTMLAreaElement, Str.toStringz(value));
	}
}
