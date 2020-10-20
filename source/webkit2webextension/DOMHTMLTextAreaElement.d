module webkit2webextension.DOMHTMLTextAreaElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLTextAreaElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLTextAreaElement* webKitDOMHTMLTextAreaElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLTextAreaElement* getDOMHTMLTextAreaElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLTextAreaElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLTextAreaElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLTextAreaElement* webKitDOMHTMLTextAreaElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLTextAreaElement = webKitDOMHTMLTextAreaElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLTextAreaElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_text_area_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAreaType()
	{
		auto retStr = webkit_dom_html_text_area_element_get_area_type(webKitDOMHTMLTextAreaElement);

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
	public bool getAutofocus()
	{
		return webkit_dom_html_text_area_element_get_autofocus(webKitDOMHTMLTextAreaElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getCols()
	{
		return webkit_dom_html_text_area_element_get_cols(webKitDOMHTMLTextAreaElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getDefaultValue()
	{
		auto retStr = webkit_dom_html_text_area_element_get_default_value(webKitDOMHTMLTextAreaElement);

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
	public bool getDisabled()
	{
		return webkit_dom_html_text_area_element_get_disabled(webKitDOMHTMLTextAreaElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLFormElement
	 */
	public DOMHTMLFormElement getForm()
	{
		auto __p = webkit_dom_html_text_area_element_get_form(webKitDOMHTMLTextAreaElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLFormElement)(cast(WebKitDOMHTMLFormElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getName()
	{
		auto retStr = webkit_dom_html_text_area_element_get_name(webKitDOMHTMLTextAreaElement);

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
	public bool getReadOnly()
	{
		return webkit_dom_html_text_area_element_get_read_only(webKitDOMHTMLTextAreaElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getRows()
	{
		return webkit_dom_html_text_area_element_get_rows(webKitDOMHTMLTextAreaElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getSelectionEnd()
	{
		return webkit_dom_html_text_area_element_get_selection_end(webKitDOMHTMLTextAreaElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getSelectionStart()
	{
		return webkit_dom_html_text_area_element_get_selection_start(webKitDOMHTMLTextAreaElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getValue()
	{
		auto retStr = webkit_dom_html_text_area_element_get_value(webKitDOMHTMLTextAreaElement);

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
	public bool getWillValidate()
	{
		return webkit_dom_html_text_area_element_get_will_validate(webKitDOMHTMLTextAreaElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool isEdited()
	{
		return webkit_dom_html_text_area_element_is_edited(webKitDOMHTMLTextAreaElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void select()
	{
		webkit_dom_html_text_area_element_select(webKitDOMHTMLTextAreaElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setAutofocus(bool value)
	{
		webkit_dom_html_text_area_element_set_autofocus(webKitDOMHTMLTextAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setCols(glong value)
	{
		webkit_dom_html_text_area_element_set_cols(webKitDOMHTMLTextAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setDefaultValue(string value)
	{
		webkit_dom_html_text_area_element_set_default_value(webKitDOMHTMLTextAreaElement, Str.toStringz(value));
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
		webkit_dom_html_text_area_element_set_disabled(webKitDOMHTMLTextAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setName(string value)
	{
		webkit_dom_html_text_area_element_set_name(webKitDOMHTMLTextAreaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setReadOnly(bool value)
	{
		webkit_dom_html_text_area_element_set_read_only(webKitDOMHTMLTextAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setRows(glong value)
	{
		webkit_dom_html_text_area_element_set_rows(webKitDOMHTMLTextAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setSelectionEnd(glong value)
	{
		webkit_dom_html_text_area_element_set_selection_end(webKitDOMHTMLTextAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     start = A #glong
	 *     end = A #glong
	 *     direction = A #gchar
	 */
	public void setSelectionRange(glong start, glong end, string direction)
	{
		webkit_dom_html_text_area_element_set_selection_range(webKitDOMHTMLTextAreaElement, start, end, Str.toStringz(direction));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setSelectionStart(glong value)
	{
		webkit_dom_html_text_area_element_set_selection_start(webKitDOMHTMLTextAreaElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setValue(string value)
	{
		webkit_dom_html_text_area_element_set_value(webKitDOMHTMLTextAreaElement, Str.toStringz(value));
	}
}
