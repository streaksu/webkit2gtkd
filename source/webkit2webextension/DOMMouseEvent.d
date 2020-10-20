module webkit2webextension.DOMMouseEvent;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDOMWindow;
private import webkit2webextension.DOMEventTargetIF;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMUIEvent;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMMouseEvent : DOMUIEvent
{
	/** the main Gtk struct */
	protected WebKitDOMMouseEvent* webKitDOMMouseEvent;

	/** Get the main Gtk struct */
	public WebKitDOMMouseEvent* getDOMMouseEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMMouseEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMMouseEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMMouseEvent* webKitDOMMouseEvent, bool ownedRef = false)
	{
		this.webKitDOMMouseEvent = webKitDOMMouseEvent;
		super(cast(WebKitDOMUIEvent*)webKitDOMMouseEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_mouse_event_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getAltKey()
	{
		return webkit_dom_mouse_event_get_alt_key(webKitDOMMouseEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gushort
	 */
	public ushort getButton()
	{
		return webkit_dom_mouse_event_get_button(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getClientX()
	{
		return webkit_dom_mouse_event_get_client_x(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getClientY()
	{
		return webkit_dom_mouse_event_get_client_y(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getCtrlKey()
	{
		return webkit_dom_mouse_event_get_ctrl_key(webKitDOMMouseEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getFromElement()
	{
		auto __p = webkit_dom_mouse_event_get_from_element(webKitDOMMouseEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getMetaKey()
	{
		return webkit_dom_mouse_event_get_meta_key(webKitDOMMouseEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getOffsetX()
	{
		return webkit_dom_mouse_event_get_offset_x(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getOffsetY()
	{
		return webkit_dom_mouse_event_get_offset_y(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMEventTarget
	 */
	public DOMEventTargetIF getRelatedTarget()
	{
		auto __p = webkit_dom_mouse_event_get_related_target(webKitDOMMouseEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMEventTargetIF)(cast(WebKitDOMEventTarget*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getScreenX()
	{
		return webkit_dom_mouse_event_get_screen_x(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getScreenY()
	{
		return webkit_dom_mouse_event_get_screen_y(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getShiftKey()
	{
		return webkit_dom_mouse_event_get_shift_key(webKitDOMMouseEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getToElement()
	{
		auto __p = webkit_dom_mouse_event_get_to_element(webKitDOMMouseEvent);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
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
		return webkit_dom_mouse_event_get_x(webKitDOMMouseEvent);
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
		return webkit_dom_mouse_event_get_y(webKitDOMMouseEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     type = A #gchar
	 *     canBubble = A #gboolean
	 *     cancelable = A #gboolean
	 *     view = A #WebKitDOMDOMWindow
	 *     detail = A #glong
	 *     screenX = A #glong
	 *     screenY = A #glong
	 *     clientX = A #glong
	 *     clientY = A #glong
	 *     ctrlKey = A #gboolean
	 *     altKey = A #gboolean
	 *     shiftKey = A #gboolean
	 *     metaKey = A #gboolean
	 *     button = A #gushort
	 *     relatedTarget = A #WebKitDOMEventTarget
	 */
	public void initMouseEvent(string type, bool canBubble, bool cancelable, DOMDOMWindow view, glong detail, glong screenX, glong screenY, glong clientX, glong clientY, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, ushort button, DOMEventTargetIF relatedTarget)
	{
		webkit_dom_mouse_event_init_mouse_event(webKitDOMMouseEvent, Str.toStringz(type), canBubble, cancelable, (view is null) ? null : view.getDOMDOMWindowStruct(), detail, screenX, screenY, clientX, clientY, ctrlKey, altKey, shiftKey, metaKey, button, (relatedTarget is null) ? null : relatedTarget.getDOMEventTargetStruct());
	}
}
