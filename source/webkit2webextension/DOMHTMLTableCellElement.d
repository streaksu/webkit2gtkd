module webkit2webextension.DOMHTMLTableCellElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTableCellElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTableCellElement* webKitDOMHTMLTableCellElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTableCellElement* getDOMHTMLTableCellElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTableCellElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTableCellElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTableCellElement* webKitDOMHTMLTableCellElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTableCellElement = webKitDOMHTMLTableCellElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTableCellElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_table_cell_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAbbr()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_abbr(webKitDOMHTMLTableCellElement);

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
	public string getAlign()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_align(webKitDOMHTMLTableCellElement);

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
	public string getAxis()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_axis(webKitDOMHTMLTableCellElement);

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
	public string getBgColor()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_bg_color(webKitDOMHTMLTableCellElement);

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
	public glong getCellIndex()
	{
		return webkit_dom_html_table_cell_element_get_cell_index(webKitDOMHTMLTableCellElement);
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
		auto retStr = webkit_dom_html_table_cell_element_get_ch(webKitDOMHTMLTableCellElement);

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
		auto retStr = webkit_dom_html_table_cell_element_get_ch_off(webKitDOMHTMLTableCellElement);

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
	public glong getColSpan()
	{
		return webkit_dom_html_table_cell_element_get_col_span(webKitDOMHTMLTableCellElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHeaders()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_headers(webKitDOMHTMLTableCellElement);

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
	public string getHeight()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_height(webKitDOMHTMLTableCellElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getNoWrap()
	{
		return webkit_dom_html_table_cell_element_get_no_wrap(webKitDOMHTMLTableCellElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getRowSpan()
	{
		return webkit_dom_html_table_cell_element_get_row_span(webKitDOMHTMLTableCellElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getScope()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_scope(webKitDOMHTMLTableCellElement);

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
	public string getVAlign()
	{
		auto retStr = webkit_dom_html_table_cell_element_get_v_align(webKitDOMHTMLTableCellElement);

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
		auto retStr = webkit_dom_html_table_cell_element_get_width(webKitDOMHTMLTableCellElement);

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
	public void setAbbr(string value)
	{
		webkit_dom_html_table_cell_element_set_abbr(webKitDOMHTMLTableCellElement, Str.toStringz(value));
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
		webkit_dom_html_table_cell_element_set_align(webKitDOMHTMLTableCellElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAxis(string value)
	{
		webkit_dom_html_table_cell_element_set_axis(webKitDOMHTMLTableCellElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setBgColor(string value)
	{
		webkit_dom_html_table_cell_element_set_bg_color(webKitDOMHTMLTableCellElement, Str.toStringz(value));
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
		webkit_dom_html_table_cell_element_set_ch(webKitDOMHTMLTableCellElement, Str.toStringz(value));
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
		webkit_dom_html_table_cell_element_set_ch_off(webKitDOMHTMLTableCellElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setColSpan(glong value)
	{
		webkit_dom_html_table_cell_element_set_col_span(webKitDOMHTMLTableCellElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHeaders(string value)
	{
		webkit_dom_html_table_cell_element_set_headers(webKitDOMHTMLTableCellElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHeight(string value)
	{
		webkit_dom_html_table_cell_element_set_height(webKitDOMHTMLTableCellElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setNoWrap(bool value)
	{
		webkit_dom_html_table_cell_element_set_no_wrap(webKitDOMHTMLTableCellElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setRowSpan(glong value)
	{
		webkit_dom_html_table_cell_element_set_row_span(webKitDOMHTMLTableCellElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setScope(string value)
	{
		webkit_dom_html_table_cell_element_set_scope(webKitDOMHTMLTableCellElement, Str.toStringz(value));
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
		webkit_dom_html_table_cell_element_set_v_align(webKitDOMHTMLTableCellElement, Str.toStringz(value));
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
		webkit_dom_html_table_cell_element_set_width(webKitDOMHTMLTableCellElement, Str.toStringz(value));
	}
}
