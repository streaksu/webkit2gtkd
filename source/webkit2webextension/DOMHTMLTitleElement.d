module webkit2webextension.DOMHTMLTitleElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTitleElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTitleElement* webKitDOMHTMLTitleElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTitleElement* getDOMHTMLTitleElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTitleElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTitleElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTitleElement* webKitDOMHTMLTitleElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTitleElement = webKitDOMHTMLTitleElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTitleElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_title_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getText()
	{
		auto retStr = webkit_dom_html_title_element_get_text(webKitDOMHTMLTitleElement);

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
	public void setText(string value)
	{
		webkit_dom_html_title_element_set_text(webKitDOMHTMLTitleElement, Str.toStringz(value));
	}
}
