module webkit2webextension.DOMHTMLBRElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLBRElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLBRElement* webKitDOMHTMLBRElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLBRElement* getDOMHTMLBRElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLBRElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLBRElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLBRElement* webKitDOMHTMLBRElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLBRElement = webKitDOMHTMLBRElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLBRElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_br_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getClear()
	{
		auto retStr = webkit_dom_html_br_element_get_clear(webKitDOMHTMLBRElement);

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
	public void setClear(string value)
	{
		webkit_dom_html_br_element_set_clear(webKitDOMHTMLBRElement, Str.toStringz(value));
	}
}
