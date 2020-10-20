module webkit2webextension.DOMHTMLMetaElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLMetaElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLMetaElement* webKitDOMHTMLMetaElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLMetaElement* getDOMHTMLMetaElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLMetaElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLMetaElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLMetaElement* webKitDOMHTMLMetaElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLMetaElement = webKitDOMHTMLMetaElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLMetaElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_meta_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getContent()
	{
		auto retStr = webkit_dom_html_meta_element_get_content(webKitDOMHTMLMetaElement);

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
	public string getHttpEquiv()
	{
		auto retStr = webkit_dom_html_meta_element_get_http_equiv(webKitDOMHTMLMetaElement);

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
		auto retStr = webkit_dom_html_meta_element_get_name(webKitDOMHTMLMetaElement);

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
	public string getScheme()
	{
		auto retStr = webkit_dom_html_meta_element_get_scheme(webKitDOMHTMLMetaElement);

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
	public void setContent(string value)
	{
		webkit_dom_html_meta_element_set_content(webKitDOMHTMLMetaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHttpEquiv(string value)
	{
		webkit_dom_html_meta_element_set_http_equiv(webKitDOMHTMLMetaElement, Str.toStringz(value));
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
		webkit_dom_html_meta_element_set_name(webKitDOMHTMLMetaElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setScheme(string value)
	{
		webkit_dom_html_meta_element_set_scheme(webKitDOMHTMLMetaElement, Str.toStringz(value));
	}
}
