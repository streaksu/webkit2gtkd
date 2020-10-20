module webkit2webextension.DOMHTMLIFrameElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDOMWindow;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLIFrameElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLIFrameElement* webKitDOMHTMLIFrameElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLIFrameElement* getDOMHTMLIFrameElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLIFrameElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLIFrameElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLIFrameElement* webKitDOMHTMLIFrameElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLIFrameElement = webKitDOMHTMLIFrameElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLIFrameElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_iframe_element_get_type();
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
		auto retStr = webkit_dom_html_iframe_element_get_align(webKitDOMHTMLIFrameElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDocument
	 */
	public DOMDocument getContentDocument()
	{
		auto __p = webkit_dom_html_iframe_element_get_content_document(webKitDOMHTMLIFrameElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocument)(cast(WebKitDOMDocument*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 */
	public DOMDOMWindow getContentWindow()
	{
		auto __p = webkit_dom_html_iframe_element_get_content_window(webKitDOMHTMLIFrameElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDOMWindow)(cast(WebKitDOMDOMWindow*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getFrameBorder()
	{
		auto retStr = webkit_dom_html_iframe_element_get_frame_border(webKitDOMHTMLIFrameElement);

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
		auto retStr = webkit_dom_html_iframe_element_get_height(webKitDOMHTMLIFrameElement);

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
	public string getLongDesc()
	{
		auto retStr = webkit_dom_html_iframe_element_get_long_desc(webKitDOMHTMLIFrameElement);

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
	public string getMarginHeight()
	{
		auto retStr = webkit_dom_html_iframe_element_get_margin_height(webKitDOMHTMLIFrameElement);

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
	public string getMarginWidth()
	{
		auto retStr = webkit_dom_html_iframe_element_get_margin_width(webKitDOMHTMLIFrameElement);

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
		auto retStr = webkit_dom_html_iframe_element_get_name(webKitDOMHTMLIFrameElement);

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
	public string getScrolling()
	{
		auto retStr = webkit_dom_html_iframe_element_get_scrolling(webKitDOMHTMLIFrameElement);

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
		auto retStr = webkit_dom_html_iframe_element_get_src(webKitDOMHTMLIFrameElement);

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
	public string getWidth()
	{
		auto retStr = webkit_dom_html_iframe_element_get_width(webKitDOMHTMLIFrameElement);

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
		webkit_dom_html_iframe_element_set_align(webKitDOMHTMLIFrameElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setFrameBorder(string value)
	{
		webkit_dom_html_iframe_element_set_frame_border(webKitDOMHTMLIFrameElement, Str.toStringz(value));
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
		webkit_dom_html_iframe_element_set_height(webKitDOMHTMLIFrameElement, Str.toStringz(value));
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
		webkit_dom_html_iframe_element_set_long_desc(webKitDOMHTMLIFrameElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setMarginHeight(string value)
	{
		webkit_dom_html_iframe_element_set_margin_height(webKitDOMHTMLIFrameElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setMarginWidth(string value)
	{
		webkit_dom_html_iframe_element_set_margin_width(webKitDOMHTMLIFrameElement, Str.toStringz(value));
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
		webkit_dom_html_iframe_element_set_name(webKitDOMHTMLIFrameElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setScrolling(string value)
	{
		webkit_dom_html_iframe_element_set_scrolling(webKitDOMHTMLIFrameElement, Str.toStringz(value));
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
		webkit_dom_html_iframe_element_set_src(webKitDOMHTMLIFrameElement, Str.toStringz(value));
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
		webkit_dom_html_iframe_element_set_width(webKitDOMHTMLIFrameElement, Str.toStringz(value));
	}
}
