module webkit2webextension.DOMHTMLModElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLModElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLModElement* webKitDOMHTMLModElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLModElement* getDOMHTMLModElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLModElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLModElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLModElement* webKitDOMHTMLModElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLModElement = webKitDOMHTMLModElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLModElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_mod_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCite()
	{
		auto retStr = webkit_dom_html_mod_element_get_cite(webKitDOMHTMLModElement);

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
	public string getDateTime()
	{
		auto retStr = webkit_dom_html_mod_element_get_date_time(webKitDOMHTMLModElement);

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
	public void setCite(string value)
	{
		webkit_dom_html_mod_element_set_cite(webKitDOMHTMLModElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setDateTime(string value)
	{
		webkit_dom_html_mod_element_set_date_time(webKitDOMHTMLModElement, Str.toStringz(value));
	}
}
