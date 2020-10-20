module webkit2webextension.DOMHTMLCanvasElement;

private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLCanvasElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLCanvasElement* webKitDOMHTMLCanvasElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLCanvasElement* getDOMHTMLCanvasElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLCanvasElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLCanvasElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLCanvasElement* webKitDOMHTMLCanvasElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLCanvasElement = webKitDOMHTMLCanvasElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLCanvasElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_canvas_element_get_type();
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
		return webkit_dom_html_canvas_element_get_height(webKitDOMHTMLCanvasElement);
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
		return webkit_dom_html_canvas_element_get_width(webKitDOMHTMLCanvasElement);
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
		webkit_dom_html_canvas_element_set_height(webKitDOMHTMLCanvasElement, value);
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
		webkit_dom_html_canvas_element_set_width(webKitDOMHTMLCanvasElement, value);
	}
}
