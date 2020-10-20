module webkit2webextension.DOMHTMLTableSectionElement;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTableSectionElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTableSectionElement* webKitDOMHTMLTableSectionElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTableSectionElement* getDOMHTMLTableSectionElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTableSectionElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTableSectionElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTableSectionElement* webKitDOMHTMLTableSectionElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTableSectionElement = webKitDOMHTMLTableSectionElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTableSectionElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_table_section_element_get_type();
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
	public void deleteRow(glong index)
	{
		GError* err = null;

		webkit_dom_html_table_section_element_delete_row(webKitDOMHTMLTableSectionElement, index, &err);

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
		auto retStr = webkit_dom_html_table_section_element_get_align(webKitDOMHTMLTableSectionElement);

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
		auto retStr = webkit_dom_html_table_section_element_get_ch(webKitDOMHTMLTableSectionElement);

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
		auto retStr = webkit_dom_html_table_section_element_get_ch_off(webKitDOMHTMLTableSectionElement);

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
	public DOMHTMLCollection getRows()
	{
		auto __p = webkit_dom_html_table_section_element_get_rows(webKitDOMHTMLTableSectionElement);

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
	public string getVAlign()
	{
		auto retStr = webkit_dom_html_table_section_element_get_v_align(webKitDOMHTMLTableSectionElement);

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
	public DOMHTMLElement insertRow(glong index)
	{
		GError* err = null;

		auto __p = webkit_dom_html_table_section_element_insert_row(webKitDOMHTMLTableSectionElement, index, &err);

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
		webkit_dom_html_table_section_element_set_align(webKitDOMHTMLTableSectionElement, Str.toStringz(value));
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
		webkit_dom_html_table_section_element_set_ch(webKitDOMHTMLTableSectionElement, Str.toStringz(value));
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
		webkit_dom_html_table_section_element_set_ch_off(webKitDOMHTMLTableSectionElement, Str.toStringz(value));
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
		webkit_dom_html_table_section_element_set_v_align(webKitDOMHTMLTableSectionElement, Str.toStringz(value));
	}
}
