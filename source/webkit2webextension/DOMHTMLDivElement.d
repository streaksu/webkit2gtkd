module webkit2webextension.DOMHTMLDivElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLDivElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLDivElement* webKitDOMHTMLDivElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLDivElement* getDOMHTMLDivElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLDivElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLDivElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLDivElement* webKitDOMHTMLDivElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLDivElement = webKitDOMHTMLDivElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLDivElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_div_element_get_type();
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
		auto retStr = webkit_dom_html_div_element_get_align(webKitDOMHTMLDivElement);

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
		webkit_dom_html_div_element_set_align(webKitDOMHTMLDivElement, Str.toStringz(value));
	}
}
