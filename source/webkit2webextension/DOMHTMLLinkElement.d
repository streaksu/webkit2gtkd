module webkit2webextension.DOMHTMLLinkElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDOMTokenList;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMStyleSheet;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLLinkElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLLinkElement* webKitDOMHTMLLinkElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLLinkElement* getDOMHTMLLinkElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLLinkElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLLinkElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLLinkElement* webKitDOMHTMLLinkElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLLinkElement = webKitDOMHTMLLinkElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLLinkElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_link_element_get_type();
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
		auto retStr = webkit_dom_html_link_element_get_charset(webKitDOMHTMLLinkElement);

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
	public bool getDisabled()
	{
		return webkit_dom_html_link_element_get_disabled(webKitDOMHTMLLinkElement) != 0;
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
		auto retStr = webkit_dom_html_link_element_get_href(webKitDOMHTMLLinkElement);

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
		auto retStr = webkit_dom_html_link_element_get_hreflang(webKitDOMHTMLLinkElement);

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
	public string getMedia()
	{
		auto retStr = webkit_dom_html_link_element_get_media(webKitDOMHTMLLinkElement);

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
		auto retStr = webkit_dom_html_link_element_get_rel(webKitDOMHTMLLinkElement);

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
		auto retStr = webkit_dom_html_link_element_get_rev(webKitDOMHTMLLinkElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMStyleSheet
	 */
	public DOMStyleSheet getSheet()
	{
		auto __p = webkit_dom_html_link_element_get_sheet(webKitDOMHTMLLinkElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMStyleSheet)(cast(WebKitDOMStyleSheet*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMTokenList
	 *
	 * Since: 2.16
	 */
	public DOMDOMTokenList getSizes()
	{
		auto __p = webkit_dom_html_link_element_get_sizes(webKitDOMHTMLLinkElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDOMTokenList)(cast(WebKitDOMDOMTokenList*) __p, true);
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
		auto retStr = webkit_dom_html_link_element_get_target(webKitDOMHTMLLinkElement);

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
		auto retStr = webkit_dom_html_link_element_get_type_attr(webKitDOMHTMLLinkElement);

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
		webkit_dom_html_link_element_set_charset(webKitDOMHTMLLinkElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setDisabled(bool value)
	{
		webkit_dom_html_link_element_set_disabled(webKitDOMHTMLLinkElement, value);
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
		webkit_dom_html_link_element_set_href(webKitDOMHTMLLinkElement, Str.toStringz(value));
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
		webkit_dom_html_link_element_set_hreflang(webKitDOMHTMLLinkElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setMedia(string value)
	{
		webkit_dom_html_link_element_set_media(webKitDOMHTMLLinkElement, Str.toStringz(value));
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
		webkit_dom_html_link_element_set_rel(webKitDOMHTMLLinkElement, Str.toStringz(value));
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
		webkit_dom_html_link_element_set_rev(webKitDOMHTMLLinkElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = a #gchar
	 *
	 * Since: 2.16
	 */
	public void setSizes(string value)
	{
		webkit_dom_html_link_element_set_sizes(webKitDOMHTMLLinkElement, Str.toStringz(value));
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
		webkit_dom_html_link_element_set_target(webKitDOMHTMLLinkElement, Str.toStringz(value));
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
		webkit_dom_html_link_element_set_type_attr(webKitDOMHTMLLinkElement, Str.toStringz(value));
	}
}
