module webkit2webextension.DOMClientRect;

private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMClientRect : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMClientRect* webKitDOMClientRect;

	/** Get the main Gtk struct */
	public WebKitDOMClientRect* getDOMClientRectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMClientRect;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMClientRect;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMClientRect* webKitDOMClientRect, bool ownedRef = false)
	{
		this.webKitDOMClientRect = webKitDOMClientRect;
		super(cast(WebKitDOMObject*)webKitDOMClientRect, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_client_rect_get_type();
	}

	/**
	 * Returns the bottom coordinate of @self, relative to the viewport.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gfloat
	 *
	 * Since: 2.18
	 */
	public float getBottom()
	{
		return webkit_dom_client_rect_get_bottom(webKitDOMClientRect);
	}

	/**
	 * Returns the height of @self.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gfloat
	 *
	 * Since: 2.18
	 */
	public float getHeight()
	{
		return webkit_dom_client_rect_get_height(webKitDOMClientRect);
	}

	/**
	 * Returns the left coordinate of @self, relative to the viewport.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gfloat
	 *
	 * Since: 2.18
	 */
	public float getLeft()
	{
		return webkit_dom_client_rect_get_left(webKitDOMClientRect);
	}

	/**
	 * Returns the right coordinate of @self, relative to the viewport.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gfloat
	 *
	 * Since: 2.18
	 */
	public float getRight()
	{
		return webkit_dom_client_rect_get_right(webKitDOMClientRect);
	}

	/**
	 * Returns the top coordinate of @self, relative to the viewport.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gfloat
	 *
	 * Since: 2.18
	 */
	public float getTop()
	{
		return webkit_dom_client_rect_get_top(webKitDOMClientRect);
	}

	/**
	 * Returns the width of @self.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gfloat
	 *
	 * Since: 2.18
	 */
	public float getWidth()
	{
		return webkit_dom_client_rect_get_width(webKitDOMClientRect);
	}
}
