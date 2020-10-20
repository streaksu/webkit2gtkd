module webkit2webextension.DOMHTMLHtmlElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLHtmlElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLHtmlElement* webKitDOMHTMLHtmlElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLHtmlElement* getDOMHTMLHtmlElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLHtmlElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLHtmlElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLHtmlElement* webKitDOMHTMLHtmlElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLHtmlElement = webKitDOMHTMLHtmlElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLHtmlElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_html_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getVersion()
	{
		auto retStr = webkit_dom_html_html_element_get_version(webKitDOMHTMLHtmlElement);

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
	public void setVersion(string value)
	{
		webkit_dom_html_html_element_set_version(webKitDOMHTMLHtmlElement, Str.toStringz(value));
	}
}
