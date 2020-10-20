module webkit2webextension.DOMHTMLTableRowElement;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTableRowElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTableRowElement* webKitDOMHTMLTableRowElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTableRowElement* getDOMHTMLTableRowElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTableRowElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTableRowElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTableRowElement* webKitDOMHTMLTableRowElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTableRowElement = webKitDOMHTMLTableRowElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTableRowElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_table_row_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #glong
	 *
	 * Throws: GException on failure.
	 */
	public void deleteCell(glong index)
	{
		GError* err = null;

		webkit_dom_html_table_row_element_delete_cell(webKitDOMHTMLTableRowElement, index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
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
		auto retStr = webkit_dom_html_table_row_element_get_align(webKitDOMHTMLTableRowElement);

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
		auto retStr = webkit_dom_html_table_row_element_get_bg_color(webKitDOMHTMLTableRowElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public DOMHTMLCollection getCells()
	{
		auto __p = webkit_dom_html_table_row_element_get_cells(webKitDOMHTMLTableRowElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
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
		auto retStr = webkit_dom_html_table_row_element_get_ch(webKitDOMHTMLTableRowElement);

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
		auto retStr = webkit_dom_html_table_row_element_get_ch_off(webKitDOMHTMLTableRowElement);

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
	public glong getRowIndex()
	{
		return webkit_dom_html_table_row_element_get_row_index(webKitDOMHTMLTableRowElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getSectionRowIndex()
	{
		return webkit_dom_html_table_row_element_get_section_row_index(webKitDOMHTMLTableRowElement);
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
		auto retStr = webkit_dom_html_table_row_element_get_v_align(webKitDOMHTMLTableRowElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #glong
	 *
	 * Returns: A #WebKitDOMHTMLElement
	 *
	 * Throws: GException on failure.
	 */
	public DOMHTMLElement insertCell(glong index)
	{
		GError* err = null;

		auto __p = webkit_dom_html_table_row_element_insert_cell(webKitDOMHTMLTableRowElement, index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLElement)(cast(WebKitDOMHTMLElement*) __p);
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
		webkit_dom_html_table_row_element_set_align(webKitDOMHTMLTableRowElement, Str.toStringz(value));
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
		webkit_dom_html_table_row_element_set_bg_color(webKitDOMHTMLTableRowElement, Str.toStringz(value));
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
		webkit_dom_html_table_row_element_set_ch(webKitDOMHTMLTableRowElement, Str.toStringz(value));
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
		webkit_dom_html_table_row_element_set_ch_off(webKitDOMHTMLTableRowElement, Str.toStringz(value));
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
		webkit_dom_html_table_row_element_set_v_align(webKitDOMHTMLTableRowElement, Str.toStringz(value));
	}
}
