module webkit2webextension.DOMHTMLTableCaptionElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTableCaptionElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTableCaptionElement* webKitDOMHTMLTableCaptionElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTableCaptionElement* getDOMHTMLTableCaptionElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTableCaptionElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTableCaptionElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTableCaptionElement* webKitDOMHTMLTableCaptionElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTableCaptionElement = webKitDOMHTMLTableCaptionElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTableCaptionElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_table_caption_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAlign()
	{
		auto retStr = webkit_dom_html_table_caption_element_get_align(webKitDOMHTMLTableCaptionElement);

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
	public void setAlign(string value)
	{
		webkit_dom_html_table_caption_element_set_align(webKitDOMHTMLTableCaptionElement, Str.toStringz(value));
	}
}
