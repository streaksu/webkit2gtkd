module webkit2webextension.DOMHTMLBodyElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLBodyElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLBodyElement* webKitDOMHTMLBodyElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLBodyElement* getDOMHTMLBodyElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLBodyElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLBodyElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLBodyElement* webKitDOMHTMLBodyElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLBodyElement = webKitDOMHTMLBodyElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLBodyElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_body_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getALink()
	{
		auto retStr = webkit_dom_html_body_element_get_a_link(webKitDOMHTMLBodyElement);

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
	public string getBackground()
	{
		auto retStr = webkit_dom_html_body_element_get_background(webKitDOMHTMLBodyElement);

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
	public string getBgColor()
	{
		auto retStr = webkit_dom_html_body_element_get_bg_color(webKitDOMHTMLBodyElement);

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
	public string getLink()
	{
		auto retStr = webkit_dom_html_body_element_get_link(webKitDOMHTMLBodyElement);

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
		auto retStr = webkit_dom_html_body_element_get_text(webKitDOMHTMLBodyElement);

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
	public string getVLink()
	{
		auto retStr = webkit_dom_html_body_element_get_v_link(webKitDOMHTMLBodyElement);

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
	public void setALink(string value)
	{
		webkit_dom_html_body_element_set_a_link(webKitDOMHTMLBodyElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setBackground(string value)
	{
		webkit_dom_html_body_element_set_background(webKitDOMHTMLBodyElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setBgColor(string value)
	{
		webkit_dom_html_body_element_set_bg_color(webKitDOMHTMLBodyElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setLink(string value)
	{
		webkit_dom_html_body_element_set_link(webKitDOMHTMLBodyElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setText(string value)
	{
		webkit_dom_html_body_element_set_text(webKitDOMHTMLBodyElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setVLink(string value)
	{
		webkit_dom_html_body_element_set_v_link(webKitDOMHTMLBodyElement, Str.toStringz(value));
	}
}
