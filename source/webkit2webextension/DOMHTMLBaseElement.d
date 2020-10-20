module webkit2webextension.DOMHTMLBaseElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLBaseElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLBaseElement* webKitDOMHTMLBaseElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLBaseElement* getDOMHTMLBaseElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLBaseElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLBaseElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLBaseElement* webKitDOMHTMLBaseElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLBaseElement = webKitDOMHTMLBaseElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLBaseElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_base_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHref()
	{
		auto retStr = webkit_dom_html_base_element_get_href(webKitDOMHTMLBaseElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTarget()
	{
		auto retStr = webkit_dom_html_base_element_get_target(webKitDOMHTMLBaseElement);

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
	public void setHref(string value)
	{
		webkit_dom_html_base_element_set_href(webKitDOMHTMLBaseElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTarget(string value)
	{
		webkit_dom_html_base_element_set_target(webKitDOMHTMLBaseElement, Str.toStringz(value));
	}
}
