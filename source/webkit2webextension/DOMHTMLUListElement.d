module webkit2webextension.DOMHTMLUListElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLUListElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLUListElement* webKitDOMHTMLUListElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLUListElement* getDOMHTMLUListElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLUListElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLUListElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLUListElement* webKitDOMHTMLUListElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLUListElement = webKitDOMHTMLUListElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLUListElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_u_list_element_get_type();
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
		return webkit_dom_html_u_list_element_get_compact(webKitDOMHTMLUListElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTypeAttr()
	{
		auto retStr = webkit_dom_html_u_list_element_get_type_attr(webKitDOMHTMLUListElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
		webkit_dom_html_u_list_element_set_compact(webKitDOMHTMLUListElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTypeAttr(string value)
	{
		webkit_dom_html_u_list_element_set_type_attr(webKitDOMHTMLUListElement, Str.toStringz(value));
	}
}
