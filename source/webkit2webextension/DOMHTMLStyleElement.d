module webkit2webextension.DOMHTMLStyleElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMStyleSheet;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLStyleElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLStyleElement* webKitDOMHTMLStyleElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLStyleElement* getDOMHTMLStyleElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLStyleElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLStyleElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLStyleElement* webKitDOMHTMLStyleElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLStyleElement = webKitDOMHTMLStyleElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLStyleElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_style_element_get_type();
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
		return webkit_dom_html_style_element_get_disabled(webKitDOMHTMLStyleElement) != 0;
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
		auto retStr = webkit_dom_html_style_element_get_media(webKitDOMHTMLStyleElement);

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
		auto __p = webkit_dom_html_style_element_get_sheet(webKitDOMHTMLStyleElement);

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
	 * Returns: A #gchar
	 */
	public string getTypeAttr()
	{
		auto retStr = webkit_dom_html_style_element_get_type_attr(webKitDOMHTMLStyleElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
		webkit_dom_html_style_element_set_disabled(webKitDOMHTMLStyleElement, value);
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
		webkit_dom_html_style_element_set_media(webKitDOMHTMLStyleElement, Str.toStringz(value));
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
		webkit_dom_html_style_element_set_type_attr(webKitDOMHTMLStyleElement, Str.toStringz(value));
	}
}
