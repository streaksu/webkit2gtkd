module webkit2webextension.DOMHTMLImageElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLImageElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLImageElement* webKitDOMHTMLImageElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLImageElement* getDOMHTMLImageElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLImageElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLImageElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLImageElement* webKitDOMHTMLImageElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLImageElement = webKitDOMHTMLImageElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLImageElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_image_element_get_type();
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
		auto retStr = webkit_dom_html_image_element_get_align(webKitDOMHTMLImageElement);

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
		auto retStr = webkit_dom_html_image_element_get_alt(webKitDOMHTMLImageElement);

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
		auto retStr = webkit_dom_html_image_element_get_border(webKitDOMHTMLImageElement);

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
	public bool getComplete()
	{
		return webkit_dom_html_image_element_get_complete(webKitDOMHTMLImageElement) != 0;
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
		return webkit_dom_html_image_element_get_height(webKitDOMHTMLImageElement);
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
		return webkit_dom_html_image_element_get_hspace(webKitDOMHTMLImageElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getIsMap()
	{
		return webkit_dom_html_image_element_get_is_map(webKitDOMHTMLImageElement) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getLongDesc()
	{
		auto retStr = webkit_dom_html_image_element_get_long_desc(webKitDOMHTMLImageElement);

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
	public string getLowsrc()
	{
		auto retStr = webkit_dom_html_image_element_get_lowsrc(webKitDOMHTMLImageElement);

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
		auto retStr = webkit_dom_html_image_element_get_name(webKitDOMHTMLImageElement);

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
	public glong getNaturalHeight()
	{
		return webkit_dom_html_image_element_get_natural_height(webKitDOMHTMLImageElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getNaturalWidth()
	{
		return webkit_dom_html_image_element_get_natural_width(webKitDOMHTMLImageElement);
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
		auto retStr = webkit_dom_html_image_element_get_src(webKitDOMHTMLImageElement);

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
	public string getUseMap()
	{
		auto retStr = webkit_dom_html_image_element_get_use_map(webKitDOMHTMLImageElement);

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
		return webkit_dom_html_image_element_get_vspace(webKitDOMHTMLImageElement);
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
		return webkit_dom_html_image_element_get_width(webKitDOMHTMLImageElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getX()
	{
		return webkit_dom_html_image_element_get_x(webKitDOMHTMLImageElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getY()
	{
		return webkit_dom_html_image_element_get_y(webKitDOMHTMLImageElement);
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
		webkit_dom_html_image_element_set_align(webKitDOMHTMLImageElement, Str.toStringz(value));
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
		webkit_dom_html_image_element_set_alt(webKitDOMHTMLImageElement, Str.toStringz(value));
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
		webkit_dom_html_image_element_set_border(webKitDOMHTMLImageElement, Str.toStringz(value));
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
		webkit_dom_html_image_element_set_height(webKitDOMHTMLImageElement, value);
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
		webkit_dom_html_image_element_set_hspace(webKitDOMHTMLImageElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setIsMap(bool value)
	{
		webkit_dom_html_image_element_set_is_map(webKitDOMHTMLImageElement, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setLongDesc(string value)
	{
		webkit_dom_html_image_element_set_long_desc(webKitDOMHTMLImageElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setLowsrc(string value)
	{
		webkit_dom_html_image_element_set_lowsrc(webKitDOMHTMLImageElement, Str.toStringz(value));
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
		webkit_dom_html_image_element_set_name(webKitDOMHTMLImageElement, Str.toStringz(value));
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
		webkit_dom_html_image_element_set_src(webKitDOMHTMLImageElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setUseMap(string value)
	{
		webkit_dom_html_image_element_set_use_map(webKitDOMHTMLImageElement, Str.toStringz(value));
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
		webkit_dom_html_image_element_set_vspace(webKitDOMHTMLImageElement, value);
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
		webkit_dom_html_image_element_set_width(webKitDOMHTMLImageElement, value);
	}
}
