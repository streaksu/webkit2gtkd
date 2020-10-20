module webkit2webextension.DOMHTMLHeadingElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLHeadingElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLHeadingElement* webKitDOMHTMLHeadingElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLHeadingElement* getDOMHTMLHeadingElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLHeadingElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLHeadingElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLHeadingElement* webKitDOMHTMLHeadingElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLHeadingElement = webKitDOMHTMLHeadingElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLHeadingElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_heading_element_get_type();
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
		auto retStr = webkit_dom_html_heading_element_get_align(webKitDOMHTMLHeadingElement);

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
		webkit_dom_html_heading_element_set_align(webKitDOMHTMLHeadingElement, Str.toStringz(value));
	}
}
