module webkit2webextension.DOMHTMLButtonElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLButtonElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLButtonElement* webKitDOMHTMLButtonElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLButtonElement* getDOMHTMLButtonElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLButtonElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLButtonElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLButtonElement* webKitDOMHTMLButtonElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLButtonElement = webKitDOMHTMLButtonElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLButtonElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_button_element_get_type();
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
		return webkit_dom_html_button_element_get_autofocus(webKitDOMHTMLButtonElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getButtonType()
	{
		auto retStr = webkit_dom_html_button_element_get_button_type(webKitDOMHTMLButtonElement);

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
		return webkit_dom_html_button_element_get_disabled(webKitDOMHTMLButtonElement) != 0;
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
		auto __p = webkit_dom_html_button_element_get_form(webKitDOMHTMLButtonElement);

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
		auto retStr = webkit_dom_html_button_element_get_name(webKitDOMHTMLButtonElement);

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
		auto retStr = webkit_dom_html_button_element_get_value(webKitDOMHTMLButtonElement);

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
		return webkit_dom_html_button_element_get_will_validate(webKitDOMHTMLButtonElement) != 0;
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
		webkit_dom_html_button_element_set_autofocus(webKitDOMHTMLButtonElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setButtonType(string value)
	{
		webkit_dom_html_button_element_set_button_type(webKitDOMHTMLButtonElement, Str.toStringz(value));
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
		webkit_dom_html_button_element_set_disabled(webKitDOMHTMLButtonElement, value);
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
		webkit_dom_html_button_element_set_name(webKitDOMHTMLButtonElement, Str.toStringz(value));
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
		webkit_dom_html_button_element_set_value(webKitDOMHTMLButtonElement, Str.toStringz(value));
	}
}
