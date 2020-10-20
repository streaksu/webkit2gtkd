module webkit2webextension.DOMHTMLOListElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLOListElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLOListElement* webKitDOMHTMLOListElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLOListElement* getDOMHTMLOListElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLOListElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLOListElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLOListElement* webKitDOMHTMLOListElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLOListElement = webKitDOMHTMLOListElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLOListElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_o_list_element_get_type();
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
		return webkit_dom_html_o_list_element_get_compact(webKitDOMHTMLOListElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getStart()
	{
		return webkit_dom_html_o_list_element_get_start(webKitDOMHTMLOListElement);
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
		auto retStr = webkit_dom_html_o_list_element_get_type_attr(webKitDOMHTMLOListElement);

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
		webkit_dom_html_o_list_element_set_compact(webKitDOMHTMLOListElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setStart(glong value)
	{
		webkit_dom_html_o_list_element_set_start(webKitDOMHTMLOListElement, value);
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
		webkit_dom_html_o_list_element_set_type_attr(webKitDOMHTMLOListElement, Str.toStringz(value));
	}
}
