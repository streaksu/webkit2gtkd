module webkit2webextension.DOMHTMLFrameSetElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLFrameSetElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLFrameSetElement* webKitDOMHTMLFrameSetElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLFrameSetElement* getDOMHTMLFrameSetElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLFrameSetElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLFrameSetElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLFrameSetElement* webKitDOMHTMLFrameSetElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLFrameSetElement = webKitDOMHTMLFrameSetElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLFrameSetElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_frame_set_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCols()
	{
		auto retStr = webkit_dom_html_frame_set_element_get_cols(webKitDOMHTMLFrameSetElement);

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
	public string getRows()
	{
		auto retStr = webkit_dom_html_frame_set_element_get_rows(webKitDOMHTMLFrameSetElement);

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
	public void setCols(string value)
	{
		webkit_dom_html_frame_set_element_set_cols(webKitDOMHTMLFrameSetElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setRows(string value)
	{
		webkit_dom_html_frame_set_element_set_rows(webKitDOMHTMLFrameSetElement, Str.toStringz(value));
	}
}
