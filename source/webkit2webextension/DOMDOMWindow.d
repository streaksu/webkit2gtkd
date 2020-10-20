module webkit2webextension.DOMDOMWindow;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMCSSStyleDeclaration;
private import webkit2webextension.DOMDOMSelection;
private import webkit2webextension.DOMDocument;
private import webkit2webextension.DOMElement;
private import webkit2webextension.DOMEventTargetIF;
private import webkit2webextension.DOMEventTargetT;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMDOMWindow : DOMObject, DOMEventTargetIF
{
	/** the main Gtk struct */
	protected WebKitDOMDOMWindow* webKitDOMDOMWindow;

	/** Get the main Gtk struct */
	public WebKitDOMDOMWindow* getDOMDOMWindowStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMDOMWindow;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMDOMWindow;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMDOMWindow* webKitDOMDOMWindow, bool ownedRef = false)
	{
		this.webKitDOMDOMWindow = webKitDOMDOMWindow;
		super(cast(WebKitDOMObject*)webKitDOMDOMWindow, ownedRef);
	}

	// add the DOMEventTarget capabilities
	mixin DOMEventTargetT!(WebKitDOMDOMWindow);


	/** */
	public static GType getType()
	{
		return webkit_dom_dom_window_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     message = A #gchar
	 *
	 * Since: 2.16
	 */
	public void alert(string message)
	{
		webkit_dom_dom_window_alert(webKitDOMDOMWindow, Str.toStringz(message));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void blur()
	{
		webkit_dom_dom_window_blur(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void captureEvents()
	{
		webkit_dom_dom_window_capture_events(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void close()
	{
		webkit_dom_dom_window_close(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     message = A #gchar
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool confirm(string message)
	{
		return webkit_dom_dom_window_confirm(webKitDOMDOMWindow, Str.toStringz(message)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     string_ = A #gchar
	 *     caseSensitive = A #gboolean
	 *     backwards = A #gboolean
	 *     wrap = A #gboolean
	 *     wholeWord = A #gboolean
	 *     searchInFrames = A #gboolean
	 *     showDialog = A #gboolean
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool find(string string_, bool caseSensitive, bool backwards, bool wrap, bool wholeWord, bool searchInFrames, bool showDialog)
	{
		return webkit_dom_dom_window_find(webKitDOMDOMWindow, Str.toStringz(string_), caseSensitive, backwards, wrap, wholeWord, searchInFrames, showDialog) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void focus()
	{
		webkit_dom_dom_window_focus(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getClosed()
	{
		return webkit_dom_dom_window_get_closed(webKitDOMDOMWindow) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     element = A #WebKitDOMElement
	 *     pseudoElement = A #gchar
	 *
	 * Returns: A #WebKitDOMCSSStyleDeclaration
	 *
	 * Since: 2.16
	 */
	public DOMCSSStyleDeclaration getComputedStyle(DOMElement element, string pseudoElement)
	{
		auto __p = webkit_dom_dom_window_get_computed_style(webKitDOMDOMWindow, (element is null) ? null : element.getDOMElementStruct(), Str.toStringz(pseudoElement));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMCSSStyleDeclaration)(cast(WebKitDOMCSSStyleDeclaration*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.16
	 */
	public string getDefaultStatus()
	{
		auto retStr = webkit_dom_dom_window_get_default_status(webKitDOMDOMWindow);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 *
	 * Since: 2.16
	 */
	public double getDevicePixelRatio()
	{
		return webkit_dom_dom_window_get_device_pixel_ratio(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDocument
	 *
	 * Since: 2.16
	 */
	public DOMDocument getDocument()
	{
		auto __p = webkit_dom_dom_window_get_document(webKitDOMDOMWindow);

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
	 * Returns: A #WebKitDOMElement
	 *
	 * Since: 2.16
	 */
	public DOMElement getFrameElement()
	{
		auto __p = webkit_dom_dom_window_get_frame_element(webKitDOMDOMWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 *
	 * Since: 2.16
	 */
	public DOMDOMWindow getFrames()
	{
		auto __p = webkit_dom_dom_window_get_frames(webKitDOMDOMWindow);

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
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getInnerHeight()
	{
		return webkit_dom_dom_window_get_inner_height(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getInnerWidth()
	{
		return webkit_dom_dom_window_get_inner_width(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 *
	 * Since: 2.16
	 */
	public gulong getLength()
	{
		return webkit_dom_dom_window_get_length(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.16
	 */
	public string getName()
	{
		auto retStr = webkit_dom_dom_window_get_name(webKitDOMDOMWindow);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getOffscreenBuffering()
	{
		return webkit_dom_dom_window_get_offscreen_buffering(webKitDOMDOMWindow) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 *
	 * Since: 2.16
	 */
	public DOMDOMWindow getOpener()
	{
		auto __p = webkit_dom_dom_window_get_opener(webKitDOMDOMWindow);

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
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getOrientation()
	{
		return webkit_dom_dom_window_get_orientation(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getOuterHeight()
	{
		return webkit_dom_dom_window_get_outer_height(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getOuterWidth()
	{
		return webkit_dom_dom_window_get_outer_width(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getPageXOffset()
	{
		return webkit_dom_dom_window_get_page_x_offset(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getPageYOffset()
	{
		return webkit_dom_dom_window_get_page_y_offset(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 *
	 * Since: 2.16
	 */
	public DOMDOMWindow getParent()
	{
		auto __p = webkit_dom_dom_window_get_parent(webKitDOMDOMWindow);

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
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getScreenLeft()
	{
		return webkit_dom_dom_window_get_screen_left(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getScreenTop()
	{
		return webkit_dom_dom_window_get_screen_top(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getScreenX()
	{
		return webkit_dom_dom_window_get_screen_x(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getScreenY()
	{
		return webkit_dom_dom_window_get_screen_y(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getScrollX()
	{
		return webkit_dom_dom_window_get_scroll_x(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 *
	 * Since: 2.16
	 */
	public glong getScrollY()
	{
		return webkit_dom_dom_window_get_scroll_y(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMSelection
	 *
	 * Since: 2.16
	 */
	public DOMDOMSelection getSelection()
	{
		auto __p = webkit_dom_dom_window_get_selection(webKitDOMDOMWindow);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDOMSelection)(cast(WebKitDOMDOMSelection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 *
	 * Since: 2.16
	 */
	public DOMDOMWindow getSelf()
	{
		auto __p = webkit_dom_dom_window_get_self(webKitDOMDOMWindow);

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
	 *
	 * Since: 2.16
	 */
	public string getStatus()
	{
		auto retStr = webkit_dom_dom_window_get_status(webKitDOMDOMWindow);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 *
	 * Since: 2.16
	 */
	public DOMDOMWindow getTop()
	{
		auto __p = webkit_dom_dom_window_get_top(webKitDOMDOMWindow);

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
	 * Returns: A #WebKitDOMDOMWindow
	 *
	 * Since: 2.16
	 */
	public DOMDOMWindow getWindow()
	{
		auto __p = webkit_dom_dom_window_get_window(webKitDOMDOMWindow);

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
	 * Params:
	 *     x = A #gfloat
	 *     y = A #gfloat
	 *
	 * Since: 2.16
	 */
	public void moveBy(float x, float y)
	{
		webkit_dom_dom_window_move_by(webKitDOMDOMWindow, x, y);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     x = A #gfloat
	 *     y = A #gfloat
	 *
	 * Since: 2.16
	 */
	public void moveTo(float x, float y)
	{
		webkit_dom_dom_window_move_to(webKitDOMDOMWindow, x, y);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void print()
	{
		webkit_dom_dom_window_print(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     message = A #gchar
	 *     defaultValue = A #gchar
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.16
	 */
	public string prompt(string message, string defaultValue)
	{
		auto retStr = webkit_dom_dom_window_prompt(webKitDOMDOMWindow, Str.toStringz(message), Str.toStringz(defaultValue));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void releaseEvents()
	{
		webkit_dom_dom_window_release_events(webKitDOMDOMWindow);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     x = A #gfloat
	 *     y = A #gfloat
	 *
	 * Since: 2.16
	 */
	public void resizeBy(float x, float y)
	{
		webkit_dom_dom_window_resize_by(webKitDOMDOMWindow, x, y);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     width = A #gfloat
	 *     height = A #gfloat
	 *
	 * Since: 2.16
	 */
	public void resizeTo(float width, float height)
	{
		webkit_dom_dom_window_resize_to(webKitDOMDOMWindow, width, height);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     x = A #gdouble
	 *     y = A #gdouble
	 *
	 * Since: 2.16
	 */
	public void scrollBy(double x, double y)
	{
		webkit_dom_dom_window_scroll_by(webKitDOMDOMWindow, x, y);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     x = A #gdouble
	 *     y = A #gdouble
	 *
	 * Since: 2.16
	 */
	public void scrollTo(double x, double y)
	{
		webkit_dom_dom_window_scroll_to(webKitDOMDOMWindow, x, y);
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
	public void setDefaultStatus(string value)
	{
		webkit_dom_dom_window_set_default_status(webKitDOMDOMWindow, Str.toStringz(value));
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
	public void setName(string value)
	{
		webkit_dom_dom_window_set_name(webKitDOMDOMWindow, Str.toStringz(value));
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
	public void setStatus(string value)
	{
		webkit_dom_dom_window_set_status(webKitDOMDOMWindow, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void stop()
	{
		webkit_dom_dom_window_stop(webKitDOMDOMWindow);
	}

	/** */
	public bool webkitMessageHandlersPostMessage(string handler, string message)
	{
		return webkit_dom_dom_window_webkit_message_handlers_post_message(webKitDOMDOMWindow, Str.toStringz(handler), Str.toStringz(message)) != 0;
	}
}
