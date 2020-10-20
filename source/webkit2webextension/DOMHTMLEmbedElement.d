module webkit2webextension.DOMHTMLEmbedElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLEmbedElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLEmbedElement* webKitDOMHTMLEmbedElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLEmbedElement* getDOMHTMLEmbedElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLEmbedElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLEmbedElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLEmbedElement* webKitDOMHTMLEmbedElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLEmbedElement = webKitDOMHTMLEmbedElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLEmbedElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_embed_element_get_type();
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
		auto retStr = webkit_dom_html_embed_element_get_align(webKitDOMHTMLEmbedElement);

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
	public glong getHeight()
	{
		return webkit_dom_html_embed_element_get_height(webKitDOMHTMLEmbedElement);
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
		auto retStr = webkit_dom_html_embed_element_get_name(webKitDOMHTMLEmbedElement);

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
		auto retStr = webkit_dom_html_embed_element_get_src(webKitDOMHTMLEmbedElement);

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
		auto retStr = webkit_dom_html_embed_element_get_type_attr(webKitDOMHTMLEmbedElement);

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
	public glong getWidth()
	{
		return webkit_dom_html_embed_element_get_width(webKitDOMHTMLEmbedElement);
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
		webkit_dom_html_embed_element_set_align(webKitDOMHTMLEmbedElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setHeight(glong value)
	{
		webkit_dom_html_embed_element_set_height(webKitDOMHTMLEmbedElement, value);
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
		webkit_dom_html_embed_element_set_name(webKitDOMHTMLEmbedElement, Str.toStringz(value));
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
		webkit_dom_html_embed_element_set_src(webKitDOMHTMLEmbedElement, Str.toStringz(value));
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
		webkit_dom_html_embed_element_set_type_attr(webKitDOMHTMLEmbedElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setWidth(glong value)
	{
		webkit_dom_html_embed_element_set_width(webKitDOMHTMLEmbedElement, value);
	}
}
