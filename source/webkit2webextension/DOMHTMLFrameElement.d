module webkit2webextension.DOMHTMLFrameElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDOMWindow;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLFrameElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLFrameElement* webKitDOMHTMLFrameElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLFrameElement* getDOMHTMLFrameElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLFrameElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLFrameElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLFrameElement* webKitDOMHTMLFrameElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLFrameElement = webKitDOMHTMLFrameElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLFrameElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_frame_element_get_type();
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
		auto __p = webkit_dom_html_frame_element_get_content_document(webKitDOMHTMLFrameElement);

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
		auto __p = webkit_dom_html_frame_element_get_content_window(webKitDOMHTMLFrameElement);

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
		auto retStr = webkit_dom_html_frame_element_get_frame_border(webKitDOMHTMLFrameElement);

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
		return webkit_dom_html_frame_element_get_height(webKitDOMHTMLFrameElement);
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
		auto retStr = webkit_dom_html_frame_element_get_long_desc(webKitDOMHTMLFrameElement);

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
		auto retStr = webkit_dom_html_frame_element_get_margin_height(webKitDOMHTMLFrameElement);

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
		auto retStr = webkit_dom_html_frame_element_get_margin_width(webKitDOMHTMLFrameElement);

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
		auto retStr = webkit_dom_html_frame_element_get_name(webKitDOMHTMLFrameElement);

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
	public bool getNoResize()
	{
		return webkit_dom_html_frame_element_get_no_resize(webKitDOMHTMLFrameElement) != 0;
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
		auto retStr = webkit_dom_html_frame_element_get_scrolling(webKitDOMHTMLFrameElement);

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
		auto retStr = webkit_dom_html_frame_element_get_src(webKitDOMHTMLFrameElement);

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
		return webkit_dom_html_frame_element_get_width(webKitDOMHTMLFrameElement);
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
		webkit_dom_html_frame_element_set_frame_border(webKitDOMHTMLFrameElement, Str.toStringz(value));
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
		webkit_dom_html_frame_element_set_long_desc(webKitDOMHTMLFrameElement, Str.toStringz(value));
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
		webkit_dom_html_frame_element_set_margin_height(webKitDOMHTMLFrameElement, Str.toStringz(value));
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
		webkit_dom_html_frame_element_set_margin_width(webKitDOMHTMLFrameElement, Str.toStringz(value));
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
		webkit_dom_html_frame_element_set_name(webKitDOMHTMLFrameElement, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setNoResize(bool value)
	{
		webkit_dom_html_frame_element_set_no_resize(webKitDOMHTMLFrameElement, value);
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
		webkit_dom_html_frame_element_set_scrolling(webKitDOMHTMLFrameElement, Str.toStringz(value));
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
		webkit_dom_html_frame_element_set_src(webKitDOMHTMLFrameElement, Str.toStringz(value));
	}
}
