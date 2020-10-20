module webkit2webextension.DOMEvent;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMEventTargetIF;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMEvent : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMEvent* webKitDOMEvent;

	/** Get the main Gtk struct */
	public WebKitDOMEvent* getDOMEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMEvent* webKitDOMEvent, bool ownedRef = false)
	{
		this.webKitDOMEvent = webKitDOMEvent;
		super(cast(WebKitDOMObject*)webKitDOMEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_event_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getBubbles()
	{
		return webkit_dom_event_get_bubbles(webKitDOMEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getCancelBubble()
	{
		return webkit_dom_event_get_cancel_bubble(webKitDOMEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getCancelable()
	{
		return webkit_dom_event_get_cancelable(webKitDOMEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMEventTarget
	 */
	public DOMEventTargetIF getCurrentTarget()
	{
		auto __p = webkit_dom_event_get_current_target(webKitDOMEvent);

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
	 * Returns: A #gushort
	 */
	public ushort getEventPhase()
	{
		return webkit_dom_event_get_event_phase(webKitDOMEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getEventType()
	{
		auto retStr = webkit_dom_event_get_event_type(webKitDOMEvent);

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
	public bool getReturnValue()
	{
		return webkit_dom_event_get_return_value(webKitDOMEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMEventTarget
	 */
	public DOMEventTargetIF getSrcElement()
	{
		auto __p = webkit_dom_event_get_src_element(webKitDOMEvent);

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
	 * Returns: A #WebKitDOMEventTarget
	 */
	public DOMEventTargetIF getTarget()
	{
		auto __p = webkit_dom_event_get_target(webKitDOMEvent);

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
	 * Returns: A #guint32
	 */
	public uint getTimeStamp()
	{
		return webkit_dom_event_get_time_stamp(webKitDOMEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     eventTypeArg = A #gchar
	 *     canBubbleArg = A #gboolean
	 *     cancelableArg = A #gboolean
	 */
	public void initEvent(string eventTypeArg, bool canBubbleArg, bool cancelableArg)
	{
		webkit_dom_event_init_event(webKitDOMEvent, Str.toStringz(eventTypeArg), canBubbleArg, cancelableArg);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void preventDefault()
	{
		webkit_dom_event_prevent_default(webKitDOMEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setCancelBubble(bool value)
	{
		webkit_dom_event_set_cancel_bubble(webKitDOMEvent, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setReturnValue(bool value)
	{
		webkit_dom_event_set_return_value(webKitDOMEvent, value);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void stopPropagation()
	{
		webkit_dom_event_stop_propagation(webKitDOMEvent);
	}
}
