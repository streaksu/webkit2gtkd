module webkit2webextension.DOMHTMLAnchorElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLAnchorElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLAnchorElement* webKitDOMHTMLAnchorElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLAnchorElement* getDOMHTMLAnchorElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLAnchorElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLAnchorElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLAnchorElement* webKitDOMHTMLAnchorElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLAnchorElement = webKitDOMHTMLAnchorElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLAnchorElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_anchor_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCharset()
	{
		auto retStr = webkit_dom_html_anchor_element_get_charset(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_coords(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_hash(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_host(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_hostname(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_href(webKitDOMHTMLAnchorElement);

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
	public string getHreflang()
	{
		auto retStr = webkit_dom_html_anchor_element_get_hreflang(webKitDOMHTMLAnchorElement);

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
	public string getName()
	{
		auto retStr = webkit_dom_html_anchor_element_get_name(webKitDOMHTMLAnchorElement);

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
	public string getPathname()
	{
		auto retStr = webkit_dom_html_anchor_element_get_pathname(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_port(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_protocol(webKitDOMHTMLAnchorElement);

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
	public string getRel()
	{
		auto retStr = webkit_dom_html_anchor_element_get_rel(webKitDOMHTMLAnchorElement);

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
	public string getRev()
	{
		auto retStr = webkit_dom_html_anchor_element_get_rev(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_search(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_shape(webKitDOMHTMLAnchorElement);

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
		auto retStr = webkit_dom_html_anchor_element_get_target(webKitDOMHTMLAnchorElement);

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
	public string getText()
	{
		auto retStr = webkit_dom_html_anchor_element_get_text(webKitDOMHTMLAnchorElement);

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
	public string getTypeAttr()
	{
		auto retStr = webkit_dom_html_anchor_element_get_type_attr(webKitDOMHTMLAnchorElement);

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
	public void setCharset(string value)
	{
		webkit_dom_html_anchor_element_set_charset(webKitDOMHTMLAnchorElement, Str.toStringz(value));
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
		webkit_dom_html_anchor_element_set_coords(webKitDOMHTMLAnchorElement, Str.toStringz(value));
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
		webkit_dom_html_anchor_element_set_hash(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHost(string value)
	{
		webkit_dom_html_anchor_element_set_host(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHostname(string value)
	{
		webkit_dom_html_anchor_element_set_hostname(webKitDOMHTMLAnchorElement, Str.toStringz(value));
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
		webkit_dom_html_anchor_element_set_href(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHreflang(string value)
	{
		webkit_dom_html_anchor_element_set_hreflang(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setName(string value)
	{
		webkit_dom_html_anchor_element_set_name(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setPathname(string value)
	{
		webkit_dom_html_anchor_element_set_pathname(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setPort(string value)
	{
		webkit_dom_html_anchor_element_set_port(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setProtocol(string value)
	{
		webkit_dom_html_anchor_element_set_protocol(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setRel(string value)
	{
		webkit_dom_html_anchor_element_set_rel(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setRev(string value)
	{
		webkit_dom_html_anchor_element_set_rev(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setSearch(string value)
	{
		webkit_dom_html_anchor_element_set_search(webKitDOMHTMLAnchorElement, Str.toStringz(value));
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
		webkit_dom_html_anchor_element_set_shape(webKitDOMHTMLAnchorElement, Str.toStringz(value));
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
		webkit_dom_html_anchor_element_set_target(webKitDOMHTMLAnchorElement, Str.toStringz(value));
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
	public void setText(string value)
	{
		webkit_dom_html_anchor_element_set_text(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTypeAttr(string value)
	{
		webkit_dom_html_anchor_element_set_type_attr(webKitDOMHTMLAnchorElement, Str.toStringz(value));
	}
}
