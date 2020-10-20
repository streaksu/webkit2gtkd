module webkit2webextension.DOMWheelEvent;

private import webkit2webextension.DOMDOMWindow;
private import webkit2webextension.DOMMouseEvent;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMWheelEvent : DOMMouseEvent
{
	/** the main Gtk struct */
	protected WebKitDOMWheelEvent* webKitDOMWheelEvent;

	/** Get the main Gtk struct */
	public WebKitDOMWheelEvent* getDOMWheelEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMWheelEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMWheelEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMWheelEvent* webKitDOMWheelEvent, bool ownedRef = false)
	{
		this.webKitDOMWheelEvent = webKitDOMWheelEvent;
		super(cast(WebKitDOMMouseEvent*)webKitDOMWheelEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_wheel_event_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getWheelDelta()
	{
		return webkit_dom_wheel_event_get_wheel_delta(webKitDOMWheelEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getWheelDeltaX()
	{
		return webkit_dom_wheel_event_get_wheel_delta_x(webKitDOMWheelEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getWheelDeltaY()
	{
		return webkit_dom_wheel_event_get_wheel_delta_y(webKitDOMWheelEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     wheelDeltaX = A #glong
	 *     wheelDeltaY = A #glong
	 *     view = A #WebKitDOMDOMWindow
	 *     screenX = A #glong
	 *     screenY = A #glong
	 *     clientX = A #glong
	 *     clientY = A #glong
	 *     ctrlKey = A #gboolean
	 *     altKey = A #gboolean
	 *     shiftKey = A #gboolean
	 *     metaKey = A #gboolean
	 */
	public void initWheelEvent(glong wheelDeltaX, glong wheelDeltaY, DOMDOMWindow view, glong screenX, glong screenY, glong clientX, glong clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey)
	{
		webkit_dom_wheel_event_init_wheel_event(webKitDOMWheelEvent, wheelDeltaX, wheelDeltaY, (view is null) ? null : view.getDOMDOMWindowStruct(), screenX, screenY, clientX, clientY, ctrlKey, altKey, shiftKey, metaKey);
	}
}
