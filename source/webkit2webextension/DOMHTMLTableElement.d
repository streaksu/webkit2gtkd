module webkit2webextension.DOMHTMLTableElement;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLTableCaptionElement;
private import webkit2webextension.DOMHTMLTableSectionElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTableElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTableElement* webKitDOMHTMLTableElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTableElement* getDOMHTMLTableElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTableElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTableElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTableElement* webKitDOMHTMLTableElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTableElement = webKitDOMHTMLTableElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTableElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_table_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLElement
	 */
	public DOMHTMLElement createCaption()
	{
		auto __p = webkit_dom_html_table_element_create_caption(webKitDOMHTMLTableElement);

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
	 * Returns: A #WebKitDOMHTMLElement
	 */
	public DOMHTMLElement createTFoot()
	{
		auto __p = webkit_dom_html_table_element_create_t_foot(webKitDOMHTMLTableElement);

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
	 * Returns: A #WebKitDOMHTMLElement
	 */
	public DOMHTMLElement createTHead()
	{
		auto __p = webkit_dom_html_table_element_create_t_head(webKitDOMHTMLTableElement);

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
	 */
	public void deleteCaption()
	{
		webkit_dom_html_table_element_delete_caption(webKitDOMHTMLTableElement);
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

		webkit_dom_html_table_element_delete_row(webKitDOMHTMLTableElement, index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void deleteTFoot()
	{
		webkit_dom_html_table_element_delete_t_foot(webKitDOMHTMLTableElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void deleteTHead()
	{
		webkit_dom_html_table_element_delete_t_head(webKitDOMHTMLTableElement);
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
		auto retStr = webkit_dom_html_table_element_get_align(webKitDOMHTMLTableElement);

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
		auto retStr = webkit_dom_html_table_element_get_bg_color(webKitDOMHTMLTableElement);

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
	public string getBorder()
	{
		auto retStr = webkit_dom_html_table_element_get_border(webKitDOMHTMLTableElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLTableCaptionElement
	 */
	public DOMHTMLTableCaptionElement getCaption()
	{
		auto __p = webkit_dom_html_table_element_get_caption(webKitDOMHTMLTableElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLTableCaptionElement)(cast(WebKitDOMHTMLTableCaptionElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCellPadding()
	{
		auto retStr = webkit_dom_html_table_element_get_cell_padding(webKitDOMHTMLTableElement);

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
	public string getCellSpacing()
	{
		auto retStr = webkit_dom_html_table_element_get_cell_spacing(webKitDOMHTMLTableElement);

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
		auto __p = webkit_dom_html_table_element_get_rows(webKitDOMHTMLTableElement);

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
	public string getRules()
	{
		auto retStr = webkit_dom_html_table_element_get_rules(webKitDOMHTMLTableElement);

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
	public string getSummary()
	{
		auto retStr = webkit_dom_html_table_element_get_summary(webKitDOMHTMLTableElement);

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
	public DOMHTMLCollection getTBodies()
	{
		auto __p = webkit_dom_html_table_element_get_t_bodies(webKitDOMHTMLTableElement);

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
	 * Returns: A #WebKitDOMHTMLTableSectionElement
	 */
	public DOMHTMLTableSectionElement getTFoot()
	{
		auto __p = webkit_dom_html_table_element_get_t_foot(webKitDOMHTMLTableElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLTableSectionElement)(cast(WebKitDOMHTMLTableSectionElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLTableSectionElement
	 */
	public DOMHTMLTableSectionElement getTHead()
	{
		auto __p = webkit_dom_html_table_element_get_t_head(webKitDOMHTMLTableElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLTableSectionElement)(cast(WebKitDOMHTMLTableSectionElement*) __p);
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
		auto retStr = webkit_dom_html_table_element_get_width(webKitDOMHTMLTableElement);

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

		auto __p = webkit_dom_html_table_element_insert_row(webKitDOMHTMLTableElement, index, &err);

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
		webkit_dom_html_table_element_set_align(webKitDOMHTMLTableElement, Str.toStringz(value));
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
		webkit_dom_html_table_element_set_bg_color(webKitDOMHTMLTableElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setBorder(string value)
	{
		webkit_dom_html_table_element_set_border(webKitDOMHTMLTableElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #WebKitDOMHTMLTableCaptionElement
	 *
	 * Throws: GException on failure.
	 */
	public void setCaption(DOMHTMLTableCaptionElement value)
	{
		GError* err = null;

		webkit_dom_html_table_element_set_caption(webKitDOMHTMLTableElement, (value is null) ? null : value.getDOMHTMLTableCaptionElementStruct(), &err);

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
	 * Params:
	 *     value = A #gchar
	 */
	public void setCellPadding(string value)
	{
		webkit_dom_html_table_element_set_cell_padding(webKitDOMHTMLTableElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCellSpacing(string value)
	{
		webkit_dom_html_table_element_set_cell_spacing(webKitDOMHTMLTableElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setRules(string value)
	{
		webkit_dom_html_table_element_set_rules(webKitDOMHTMLTableElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setSummary(string value)
	{
		webkit_dom_html_table_element_set_summary(webKitDOMHTMLTableElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #WebKitDOMHTMLTableSectionElement
	 *
	 * Throws: GException on failure.
	 */
	public void setTFoot(DOMHTMLTableSectionElement value)
	{
		GError* err = null;

		webkit_dom_html_table_element_set_t_foot(webKitDOMHTMLTableElement, (value is null) ? null : value.getDOMHTMLTableSectionElementStruct(), &err);

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
	 * Params:
	 *     value = A #WebKitDOMHTMLTableSectionElement
	 *
	 * Throws: GException on failure.
	 */
	public void setTHead(DOMHTMLTableSectionElement value)
	{
		GError* err = null;

		webkit_dom_html_table_element_set_t_head(webKitDOMHTMLTableElement, (value is null) ? null : value.getDOMHTMLTableSectionElementStruct(), &err);

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
	 * Params:
	 *     value = A #gchar
	 */
	public void setWidth(string value)
	{
		webkit_dom_html_table_element_set_width(webKitDOMHTMLTableElement, Str.toStringz(value));
	}
}
