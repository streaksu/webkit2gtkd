module webkit2webextension.DOMHTMLHRElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLHRElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLHRElement* webKitDOMHTMLHRElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLHRElement* getDOMHTMLHRElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLHRElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLHRElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLHRElement* webKitDOMHTMLHRElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLHRElement = webKitDOMHTMLHRElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLHRElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_hr_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAlign()
	{
		auto retStr = webkit_dom_html_hr_element_get_align(webKitDOMHTMLHRElement);

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
	public bool getNoShade()
	{
		return webkit_dom_html_hr_element_get_no_shade(webKitDOMHTMLHRElement) != 0;
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
		auto retStr = webkit_dom_html_hr_element_get_size(webKitDOMHTMLHRElement);

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
	public string getWidth()
	{
		auto retStr = webkit_dom_html_hr_element_get_width(webKitDOMHTMLHRElement);

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
	public void setAlign(string value)
	{
		webkit_dom_html_hr_element_set_align(webKitDOMHTMLHRElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setNoShade(bool value)
	{
		webkit_dom_html_hr_element_set_no_shade(webKitDOMHTMLHRElement, value);
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
		webkit_dom_html_hr_element_set_size(webKitDOMHTMLHRElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setWidth(string value)
	{
		webkit_dom_html_hr_element_set_width(webKitDOMHTMLHRElement, Str.toStringz(value));
	}
}
