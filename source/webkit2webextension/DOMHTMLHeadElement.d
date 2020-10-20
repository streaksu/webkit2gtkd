module webkit2webextension.DOMHTMLHeadElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLHeadElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLHeadElement* webKitDOMHTMLHeadElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLHeadElement* getDOMHTMLHeadElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLHeadElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLHeadElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLHeadElement* webKitDOMHTMLHeadElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLHeadElement = webKitDOMHTMLHeadElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLHeadElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_head_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getProfile()
	{
		auto retStr = webkit_dom_html_head_element_get_profile(webKitDOMHTMLHeadElement);

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
	public void setProfile(string value)
	{
		webkit_dom_html_head_element_set_profile(webKitDOMHTMLHeadElement, Str.toStringz(value));
	}
}
