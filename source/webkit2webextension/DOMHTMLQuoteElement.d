module webkit2webextension.DOMHTMLQuoteElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLQuoteElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLQuoteElement* webKitDOMHTMLQuoteElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLQuoteElement* getDOMHTMLQuoteElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLQuoteElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLQuoteElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLQuoteElement* webKitDOMHTMLQuoteElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLQuoteElement = webKitDOMHTMLQuoteElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLQuoteElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_quote_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCite()
	{
		auto retStr = webkit_dom_html_quote_element_get_cite(webKitDOMHTMLQuoteElement);

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
	public void setCite(string value)
	{
		webkit_dom_html_quote_element_set_cite(webKitDOMHTMLQuoteElement, Str.toStringz(value));
	}
}
