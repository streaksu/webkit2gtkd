module webkit2webextension.DOMUIEvent;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDOMWindow;
private import webkit2webextension.DOMEvent;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMUIEvent : DOMEvent
{
	/** the main Gtk struct */
	protected WebKitDOMUIEvent* webKitDOMUIEvent;

	/** Get the main Gtk struct */
	public WebKitDOMUIEvent* getDOMUIEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMUIEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMUIEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMUIEvent* webKitDOMUIEvent, bool ownedRef = false)
	{
		this.webKitDOMUIEvent = webKitDOMUIEvent;
		super(cast(WebKitDOMEvent*)webKitDOMUIEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_ui_event_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getCharCode()
	{
		return webkit_dom_ui_event_get_char_code(webKitDOMUIEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getDetail()
	{
		return webkit_dom_ui_event_get_detail(webKitDOMUIEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getKeyCode()
	{
		return webkit_dom_ui_event_get_key_code(webKitDOMUIEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getLayerX()
	{
		return webkit_dom_ui_event_get_layer_x(webKitDOMUIEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getLayerY()
	{
		return webkit_dom_ui_event_get_layer_y(webKitDOMUIEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getPageX()
	{
		return webkit_dom_ui_event_get_page_x(webKitDOMUIEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getPageY()
	{
		return webkit_dom_ui_event_get_page_y(webKitDOMUIEvent);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDOMWindow
	 */
	public DOMDOMWindow getView()
	{
		auto __p = webkit_dom_ui_event_get_view(webKitDOMUIEvent);

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
	 *     type = A #gchar
	 *     canBubble = A #gboolean
	 *     cancelable = A #gboolean
	 *     view = A #WebKitDOMDOMWindow
	 *     detail = A #glong
	 */
	public void initUiEvent(string type, bool canBubble, bool cancelable, DOMDOMWindow view, glong detail)
	{
		webkit_dom_ui_event_init_ui_event(webKitDOMUIEvent, Str.toStringz(type), canBubble, cancelable, (view is null) ? null : view.getDOMDOMWindowStruct(), detail);
	}
}
