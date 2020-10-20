module webkit2webextension.DOMHTMLMenuElement;

private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLMenuElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLMenuElement* webKitDOMHTMLMenuElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLMenuElement* getDOMHTMLMenuElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLMenuElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLMenuElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLMenuElement* webKitDOMHTMLMenuElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLMenuElement = webKitDOMHTMLMenuElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLMenuElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_menu_element_get_type();
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
		return webkit_dom_html_menu_element_get_compact(webKitDOMHTMLMenuElement) != 0;
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
		webkit_dom_html_menu_element_set_compact(webKitDOMHTMLMenuElement, value);
	}
}
