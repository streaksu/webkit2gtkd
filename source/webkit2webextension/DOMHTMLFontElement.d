module webkit2webextension.DOMHTMLFontElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLFontElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLFontElement* webKitDOMHTMLFontElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLFontElement* getDOMHTMLFontElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLFontElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLFontElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLFontElement* webKitDOMHTMLFontElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLFontElement = webKitDOMHTMLFontElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLFontElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_font_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getColor()
	{
		auto retStr = webkit_dom_html_font_element_get_color(webKitDOMHTMLFontElement);

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
	public string getFace()
	{
		auto retStr = webkit_dom_html_font_element_get_face(webKitDOMHTMLFontElement);

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
	public string getSize()
	{
		auto retStr = webkit_dom_html_font_element_get_size(webKitDOMHTMLFontElement);

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
	public void setColor(string value)
	{
		webkit_dom_html_font_element_set_color(webKitDOMHTMLFontElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setFace(string value)
	{
		webkit_dom_html_font_element_set_face(webKitDOMHTMLFontElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setSize(string value)
	{
		webkit_dom_html_font_element_set_size(webKitDOMHTMLFontElement, Str.toStringz(value));
	}
}
