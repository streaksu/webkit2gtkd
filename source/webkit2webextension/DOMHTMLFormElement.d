module webkit2webextension.DOMHTMLFormElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLFormElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLFormElement* webKitDOMHTMLFormElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLFormElement* getDOMHTMLFormElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLFormElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLFormElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLFormElement* webKitDOMHTMLFormElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLFormElement = webKitDOMHTMLFormElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLFormElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_form_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAcceptCharset()
	{
		auto retStr = webkit_dom_html_form_element_get_accept_charset(webKitDOMHTMLFormElement);

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
	public string getAction()
	{
		auto retStr = webkit_dom_html_form_element_get_action(webKitDOMHTMLFormElement);

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
	public DOMHTMLCollection getElements()
	{
		auto __p = webkit_dom_html_form_element_get_elements(webKitDOMHTMLFormElement);

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
	public string getEncoding()
	{
		auto retStr = webkit_dom_html_form_element_get_encoding(webKitDOMHTMLFormElement);

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
	public string getEnctype()
	{
		auto retStr = webkit_dom_html_form_element_get_enctype(webKitDOMHTMLFormElement);

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
	public glong getLength()
	{
		return webkit_dom_html_form_element_get_length(webKitDOMHTMLFormElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getMethod()
	{
		auto retStr = webkit_dom_html_form_element_get_method(webKitDOMHTMLFormElement);

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
	public string getName()
	{
		auto retStr = webkit_dom_html_form_element_get_name(webKitDOMHTMLFormElement);

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
	public string getTarget()
	{
		auto retStr = webkit_dom_html_form_element_get_target(webKitDOMHTMLFormElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void reset()
	{
		webkit_dom_html_form_element_reset(webKitDOMHTMLFormElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAcceptCharset(string value)
	{
		webkit_dom_html_form_element_set_accept_charset(webKitDOMHTMLFormElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAction(string value)
	{
		webkit_dom_html_form_element_set_action(webKitDOMHTMLFormElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setEncoding(string value)
	{
		webkit_dom_html_form_element_set_encoding(webKitDOMHTMLFormElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setEnctype(string value)
	{
		webkit_dom_html_form_element_set_enctype(webKitDOMHTMLFormElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setMethod(string value)
	{
		webkit_dom_html_form_element_set_method(webKitDOMHTMLFormElement, Str.toStringz(value));
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
		webkit_dom_html_form_element_set_name(webKitDOMHTMLFormElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setTarget(string value)
	{
		webkit_dom_html_form_element_set_target(webKitDOMHTMLFormElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void submit()
	{
		webkit_dom_html_form_element_submit(webKitDOMHTMLFormElement);
	}
}
