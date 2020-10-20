module webkit2webextension.DOMHTMLDirectoryElement;

private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLDirectoryElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLDirectoryElement* webKitDOMHTMLDirectoryElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLDirectoryElement* getDOMHTMLDirectoryElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLDirectoryElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLDirectoryElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLDirectoryElement* webKitDOMHTMLDirectoryElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLDirectoryElement = webKitDOMHTMLDirectoryElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLDirectoryElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_directory_element_get_type();
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
		return webkit_dom_html_directory_element_get_compact(webKitDOMHTMLDirectoryElement) != 0;
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
		webkit_dom_html_directory_element_set_compact(webKitDOMHTMLDirectoryElement, value);
	}
}
