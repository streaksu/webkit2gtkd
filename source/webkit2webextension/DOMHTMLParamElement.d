module webkit2webextension.DOMHTMLParamElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLParamElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLParamElement* webKitDOMHTMLParamElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLParamElement* getDOMHTMLParamElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLParamElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLParamElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLParamElement* webKitDOMHTMLParamElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLParamElement = webKitDOMHTMLParamElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLParamElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_param_element_get_type();
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
		auto retStr = webkit_dom_html_param_element_get_name(webKitDOMHTMLParamElement);

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
	public string getTypeAttr()
	{
		auto retStr = webkit_dom_html_param_element_get_type_attr(webKitDOMHTMLParamElement);

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
		auto retStr = webkit_dom_html_param_element_get_value(webKitDOMHTMLParamElement);

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
	public string getValueType()
	{
		auto retStr = webkit_dom_html_param_element_get_value_type(webKitDOMHTMLParamElement);

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
	public void setName(string value)
	{
		webkit_dom_html_param_element_set_name(webKitDOMHTMLParamElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTypeAttr(string value)
	{
		webkit_dom_html_param_element_set_type_attr(webKitDOMHTMLParamElement, Str.toStringz(value));
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
		webkit_dom_html_param_element_set_value(webKitDOMHTMLParamElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setValueType(string value)
	{
		webkit_dom_html_param_element_set_value_type(webKitDOMHTMLParamElement, Str.toStringz(value));
	}
}
