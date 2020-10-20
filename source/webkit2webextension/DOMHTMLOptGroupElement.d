module webkit2webextension.DOMHTMLOptGroupElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLOptGroupElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLOptGroupElement* webKitDOMHTMLOptGroupElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLOptGroupElement* getDOMHTMLOptGroupElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLOptGroupElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLOptGroupElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLOptGroupElement* webKitDOMHTMLOptGroupElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLOptGroupElement = webKitDOMHTMLOptGroupElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLOptGroupElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_opt_group_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getDisabled()
	{
		return webkit_dom_html_opt_group_element_get_disabled(webKitDOMHTMLOptGroupElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getLabel()
	{
		auto retStr = webkit_dom_html_opt_group_element_get_label(webKitDOMHTMLOptGroupElement);

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
	public void setDisabled(bool value)
	{
		webkit_dom_html_opt_group_element_set_disabled(webKitDOMHTMLOptGroupElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setLabel(string value)
	{
		webkit_dom_html_opt_group_element_set_label(webKitDOMHTMLOptGroupElement, Str.toStringz(value));
	}
}
