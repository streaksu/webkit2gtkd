module webkit2webextension.DOMKeyboardEvent;

private import glib.Str;
private import webkit2webextension.DOMDOMWindow;
private import webkit2webextension.DOMUIEvent;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMKeyboardEvent : DOMUIEvent
{
	/** the main Gtk struct */
	protected WebKitDOMKeyboardEvent* webKitDOMKeyboardEvent;

	/** Get the main Gtk struct */
	public WebKitDOMKeyboardEvent* getDOMKeyboardEventStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMKeyboardEvent;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMKeyboardEvent;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMKeyboardEvent* webKitDOMKeyboardEvent, bool ownedRef = false)
	{
		this.webKitDOMKeyboardEvent = webKitDOMKeyboardEvent;
		super(cast(WebKitDOMUIEvent*)webKitDOMKeyboardEvent, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_keyboard_event_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getAltGraphKey()
	{
		return webkit_dom_keyboard_event_get_alt_graph_key(webKitDOMKeyboardEvent) != 0;
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
		return webkit_dom_keyboard_event_get_alt_key(webKitDOMKeyboardEvent) != 0;
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
		return webkit_dom_keyboard_event_get_ctrl_key(webKitDOMKeyboardEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getKeyIdentifier()
	{
		auto retStr = webkit_dom_keyboard_event_get_key_identifier(webKitDOMKeyboardEvent);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getKeyLocation()
	{
		return webkit_dom_keyboard_event_get_key_location(webKitDOMKeyboardEvent);
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
		return webkit_dom_keyboard_event_get_meta_key(webKitDOMKeyboardEvent) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     keyIdentifierArg = A #gchar
	 *
	 * Returns: A #gboolean
	 */
	public bool getModifierState(string keyIdentifierArg)
	{
		return webkit_dom_keyboard_event_get_modifier_state(webKitDOMKeyboardEvent, Str.toStringz(keyIdentifierArg)) != 0;
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
		return webkit_dom_keyboard_event_get_shift_key(webKitDOMKeyboardEvent) != 0;
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
	 *     keyIdentifier = A #gchar
	 *     location = A #gulong
	 *     ctrlKey = A #gboolean
	 *     altKey = A #gboolean
	 *     shiftKey = A #gboolean
	 *     metaKey = A #gboolean
	 *     altGraphKey = A #gboolean
	 */
	public void initKeyboardEvent(string type, bool canBubble, bool cancelable, DOMDOMWindow view, string keyIdentifier, gulong location, bool ctrlKey, bool altKey, bool shiftKey, bool metaKey, bool altGraphKey)
	{
		webkit_dom_keyboard_event_init_keyboard_event(webKitDOMKeyboardEvent, Str.toStringz(type), canBubble, cancelable, (view is null) ? null : view.getDOMDOMWindowStruct(), Str.toStringz(keyIdentifier), location, ctrlKey, altKey, shiftKey, metaKey, altGraphKey);
	}
}
