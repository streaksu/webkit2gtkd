module webkit2webextension.DOMHTMLLIElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLLIElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLLIElement* webKitDOMHTMLLIElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLLIElement* getDOMHTMLLIElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLLIElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLLIElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLLIElement* webKitDOMHTMLLIElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLLIElement = webKitDOMHTMLLIElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLLIElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_li_element_get_type();
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
		auto retStr = webkit_dom_html_li_element_get_type_attr(webKitDOMHTMLLIElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getValue()
	{
		return webkit_dom_html_li_element_get_value(webKitDOMHTMLLIElement);
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
		webkit_dom_html_li_element_set_type_attr(webKitDOMHTMLLIElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setValue(glong value)
	{
		webkit_dom_html_li_element_set_value(webKitDOMHTMLLIElement, value);
	}
}
