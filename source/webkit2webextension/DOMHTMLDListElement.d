module webkit2webextension.DOMHTMLDListElement;

private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLDListElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLDListElement* webKitDOMHTMLDListElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLDListElement* getDOMHTMLDListElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLDListElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLDListElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLDListElement* webKitDOMHTMLDListElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLDListElement = webKitDOMHTMLDListElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLDListElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_d_list_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getCompact()
	{
		return webkit_dom_html_d_list_element_get_compact(webKitDOMHTMLDListElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setCompact(bool value)
	{
		webkit_dom_html_d_list_element_set_compact(webKitDOMHTMLDListElement, value);
	}
}
