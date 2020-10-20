module webkit2webextension.DOMHTMLScriptElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLScriptElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLScriptElement* webKitDOMHTMLScriptElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLScriptElement* getDOMHTMLScriptElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLScriptElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLScriptElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLScriptElement* webKitDOMHTMLScriptElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLScriptElement = webKitDOMHTMLScriptElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLScriptElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_script_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCharset()
	{
		auto retStr = webkit_dom_html_script_element_get_charset(webKitDOMHTMLScriptElement);

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
	public bool getDefer()
	{
		return webkit_dom_html_script_element_get_defer(webKitDOMHTMLScriptElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getEvent()
	{
		auto retStr = webkit_dom_html_script_element_get_event(webKitDOMHTMLScriptElement);

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
	public string getHtmlFor()
	{
		auto retStr = webkit_dom_html_script_element_get_html_for(webKitDOMHTMLScriptElement);

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
	public string getSrc()
	{
		auto retStr = webkit_dom_html_script_element_get_src(webKitDOMHTMLScriptElement);

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
	public string getText()
	{
		auto retStr = webkit_dom_html_script_element_get_text(webKitDOMHTMLScriptElement);

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
		auto retStr = webkit_dom_html_script_element_get_type_attr(webKitDOMHTMLScriptElement);

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
	 *
	 * Since: 2.16
	 */
	public void setCharset(string value)
	{
		webkit_dom_html_script_element_set_charset(webKitDOMHTMLScriptElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setDefer(bool value)
	{
		webkit_dom_html_script_element_set_defer(webKitDOMHTMLScriptElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setEvent(string value)
	{
		webkit_dom_html_script_element_set_event(webKitDOMHTMLScriptElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHtmlFor(string value)
	{
		webkit_dom_html_script_element_set_html_for(webKitDOMHTMLScriptElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setSrc(string value)
	{
		webkit_dom_html_script_element_set_src(webKitDOMHTMLScriptElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setText(string value)
	{
		webkit_dom_html_script_element_set_text(webKitDOMHTMLScriptElement, Str.toStringz(value));
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
		webkit_dom_html_script_element_set_type_attr(webKitDOMHTMLScriptElement, Str.toStringz(value));
	}
}
