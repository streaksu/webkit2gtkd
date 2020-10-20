module webkit2webextension.DOMHTMLOptionElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLOptionElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLOptionElement* webKitDOMHTMLOptionElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLOptionElement* getDOMHTMLOptionElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLOptionElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLOptionElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLOptionElement* webKitDOMHTMLOptionElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLOptionElement = webKitDOMHTMLOptionElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLOptionElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_option_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getDefaultSelected()
	{
		return webkit_dom_html_option_element_get_default_selected(webKitDOMHTMLOptionElement) != 0;
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
		return webkit_dom_html_option_element_get_disabled(webKitDOMHTMLOptionElement) != 0;
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
		auto __p = webkit_dom_html_option_element_get_form(webKitDOMHTMLOptionElement);

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
	 * Returns: A #glong
	 */
	public glong getIndex()
	{
		return webkit_dom_html_option_element_get_index(webKitDOMHTMLOptionElement);
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
		auto retStr = webkit_dom_html_option_element_get_label(webKitDOMHTMLOptionElement);

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
	public bool getSelected()
	{
		return webkit_dom_html_option_element_get_selected(webKitDOMHTMLOptionElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getText()
	{
		auto retStr = webkit_dom_html_option_element_get_text(webKitDOMHTMLOptionElement);

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
	public string getValue()
	{
		auto retStr = webkit_dom_html_option_element_get_value(webKitDOMHTMLOptionElement);

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
	public void setDefaultSelected(bool value)
	{
		webkit_dom_html_option_element_set_default_selected(webKitDOMHTMLOptionElement, value);
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
		webkit_dom_html_option_element_set_disabled(webKitDOMHTMLOptionElement, value);
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
		webkit_dom_html_option_element_set_label(webKitDOMHTMLOptionElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setSelected(bool value)
	{
		webkit_dom_html_option_element_set_selected(webKitDOMHTMLOptionElement, value);
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
		webkit_dom_html_option_element_set_value(webKitDOMHTMLOptionElement, Str.toStringz(value));
	}
}
