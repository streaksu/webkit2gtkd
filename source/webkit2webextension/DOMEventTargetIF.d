module webkit2webextension.DOMEventTargetIF;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.Closure;
private import webkit2webextension.DOMEvent;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public interface DOMEventTargetIF{
	/** Get the main Gtk struct */
	public WebKitDOMEventTarget* getDOMEventTargetStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return webkit_dom_event_target_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     eventName = A #gchar
	 *     handler = A #GCallback
	 *     useCapture = A #gboolean
	 *     userData = A #gpointer
	 *
	 * Returns: a #gboolean
	 */
	public bool addEventListener(string eventName, GCallback handler, bool useCapture, void* userData);

	/**
	 * Version of webkit_dom_event_target_add_event_listener() using a closure
	 * instead of a callbacks for easier binding in other languages.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     eventName = A #gchar
	 *     handler = A #GClosure
	 *     useCapture = A #gboolean
	 *
	 * Returns: a #gboolean
	 */
	public bool addEventListenerWithClosure(string eventName, Closure handler, bool useCapture);

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     event = A #WebKitDOMEvent
	 *
	 * Returns: a #gboolean
	 *
	 * Throws: GException on failure.
	 */
	public bool dispatchEvent(DOMEvent event);

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     eventName = A #gchar
	 *     handler = A #GCallback
	 *     useCapture = A #gboolean
	 *
	 * Returns: a #gboolean
	 */
	public bool removeEventListener(string eventName, GCallback handler, bool useCapture);

	/**
	 * Version of webkit_dom_event_target_remove_event_listener() using a closure
	 * instead of a callbacks for easier binding in other languages.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     eventName = A #gchar
	 *     handler = A #GClosure
	 *     useCapture = A #gboolean
	 *
	 * Returns: a #gboolean
	 */
	public bool removeEventListenerWithClosure(string eventName, Closure handler, bool useCapture);
}
