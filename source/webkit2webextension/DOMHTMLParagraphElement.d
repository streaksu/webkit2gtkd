module webkit2webextension.DOMHTMLParagraphElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLParagraphElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLParagraphElement* webKitDOMHTMLParagraphElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLParagraphElement* getDOMHTMLParagraphElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLParagraphElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLParagraphElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLParagraphElement* webKitDOMHTMLParagraphElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLParagraphElement = webKitDOMHTMLParagraphElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLParagraphElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_paragraph_element_get_type();
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
		auto retStr = webkit_dom_html_paragraph_element_get_align(webKitDOMHTMLParagraphElement);

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
		webkit_dom_html_paragraph_element_set_align(webKitDOMHTMLParagraphElement, Str.toStringz(value));
	}
}
