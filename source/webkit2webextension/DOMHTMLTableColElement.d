module webkit2webextension.DOMHTMLTableColElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTableColElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTableColElement* webKitDOMHTMLTableColElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTableColElement* getDOMHTMLTableColElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTableColElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTableColElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTableColElement* webKitDOMHTMLTableColElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTableColElement = webKitDOMHTMLTableColElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTableColElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_table_col_element_get_type();
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
		auto retStr = webkit_dom_html_table_col_element_get_align(webKitDOMHTMLTableColElement);

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
	public string getCh()
	{
		auto retStr = webkit_dom_html_table_col_element_get_ch(webKitDOMHTMLTableColElement);

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
	public string getChOff()
	{
		auto retStr = webkit_dom_html_table_col_element_get_ch_off(webKitDOMHTMLTableColElement);

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
	public glong getSpan()
	{
		return webkit_dom_html_table_col_element_get_span(webKitDOMHTMLTableColElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getVAlign()
	{
		auto retStr = webkit_dom_html_table_col_element_get_v_align(webKitDOMHTMLTableColElement);

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
	public string getWidth()
	{
		auto retStr = webkit_dom_html_table_col_element_get_width(webKitDOMHTMLTableColElement);

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
		webkit_dom_html_table_col_element_set_align(webKitDOMHTMLTableColElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCh(string value)
	{
		webkit_dom_html_table_col_element_set_ch(webKitDOMHTMLTableColElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setChOff(string value)
	{
		webkit_dom_html_table_col_element_set_ch_off(webKitDOMHTMLTableColElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setSpan(glong value)
	{
		webkit_dom_html_table_col_element_set_span(webKitDOMHTMLTableColElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setVAlign(string value)
	{
		webkit_dom_html_table_col_element_set_v_align(webKitDOMHTMLTableColElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setWidth(string value)
	{
		webkit_dom_html_table_col_element_set_width(webKitDOMHTMLTableColElement, Str.toStringz(value));
	}
}
