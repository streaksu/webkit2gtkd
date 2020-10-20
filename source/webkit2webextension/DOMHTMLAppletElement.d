module webkit2webextension.DOMHTMLAppletElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLAppletElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLAppletElement* webKitDOMHTMLAppletElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLAppletElement* getDOMHTMLAppletElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLAppletElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLAppletElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLAppletElement* webKitDOMHTMLAppletElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLAppletElement = webKitDOMHTMLAppletElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLAppletElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_applet_element_get_type();
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
		auto retStr = webkit_dom_html_applet_element_get_align(webKitDOMHTMLAppletElement);

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
	public string getAlt()
	{
		auto retStr = webkit_dom_html_applet_element_get_alt(webKitDOMHTMLAppletElement);

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
	public string getArchive()
	{
		auto retStr = webkit_dom_html_applet_element_get_archive(webKitDOMHTMLAppletElement);

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
	public string getCode()
	{
		auto retStr = webkit_dom_html_applet_element_get_code(webKitDOMHTMLAppletElement);

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
	public string getCodeBase()
	{
		auto retStr = webkit_dom_html_applet_element_get_code_base(webKitDOMHTMLAppletElement);

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
		auto retStr = webkit_dom_html_applet_element_get_height(webKitDOMHTMLAppletElement);

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
	public glong getHspace()
	{
		return webkit_dom_html_applet_element_get_hspace(webKitDOMHTMLAppletElement);
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
		auto retStr = webkit_dom_html_applet_element_get_name(webKitDOMHTMLAppletElement);

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
	public string getObject()
	{
		auto retStr = webkit_dom_html_applet_element_get_object(webKitDOMHTMLAppletElement);

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
	public glong getVspace()
	{
		return webkit_dom_html_applet_element_get_vspace(webKitDOMHTMLAppletElement);
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
		auto retStr = webkit_dom_html_applet_element_get_width(webKitDOMHTMLAppletElement);

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
	public void setAlign(string value)
	{
		webkit_dom_html_applet_element_set_align(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setAlt(string value)
	{
		webkit_dom_html_applet_element_set_alt(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setArchive(string value)
	{
		webkit_dom_html_applet_element_set_archive(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCode(string value)
	{
		webkit_dom_html_applet_element_set_code(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setCodeBase(string value)
	{
		webkit_dom_html_applet_element_set_code_base(webKitDOMHTMLAppletElement, Str.toStringz(value));
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
		webkit_dom_html_applet_element_set_height(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setHspace(glong value)
	{
		webkit_dom_html_applet_element_set_hspace(webKitDOMHTMLAppletElement, value);
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
		webkit_dom_html_applet_element_set_name(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setObject(string value)
	{
		webkit_dom_html_applet_element_set_object(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setVspace(glong value)
	{
		webkit_dom_html_applet_element_set_vspace(webKitDOMHTMLAppletElement, value);
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
		webkit_dom_html_applet_element_set_width(webKitDOMHTMLAppletElement, Str.toStringz(value));
	}
}
