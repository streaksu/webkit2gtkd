module webkit2webextension.DOMHTMLPreElement;

private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLPreElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLPreElement* webKitDOMHTMLPreElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLPreElement* getDOMHTMLPreElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLPreElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLPreElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLPreElement* webKitDOMHTMLPreElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLPreElement = webKitDOMHTMLPreElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLPreElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_pre_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getWidth()
	{
		return webkit_dom_html_pre_element_get_width(webKitDOMHTMLPreElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getWrap()
	{
		return webkit_dom_html_pre_element_get_wrap(webKitDOMHTMLPreElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setWidth(glong value)
	{
		webkit_dom_html_pre_element_set_width(webKitDOMHTMLPreElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setWrap(bool value)
	{
		webkit_dom_html_pre_element_set_wrap(webKitDOMHTMLPreElement, value);
	}
}
