module webkit2webextension.DOMEventTargetT;

public  import glib.ErrorG;
public  import glib.GException;
public  import glib.Str;
public  import gobject.Closure;
public  import webkit2webextension.DOMEvent;
public  import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public template DOMEventTargetT(TStruct)
{
	/** Get the main Gtk struct */
	public WebKitDOMEventTarget* getDOMEventTargetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(WebKitDOMEventTarget*)getStruct();
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
	public bool addEventListener(string eventName, GCallback handler, bool useCapture, void* userData)
	{
		return webkit_dom_event_target_add_event_listener(getDOMEventTargetStruct(), Str.toStringz(eventName), handler, useCapture, userData) != 0;
	}

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
	public bool addEventListenerWithClosure(string eventName, Closure handler, bool useCapture)
	{
		return webkit_dom_event_target_add_event_listener_with_closure(getDOMEventTargetStruct(), Str.toStringz(eventName), (handler is null) ? null : handler.getClosureStruct(), useCapture) != 0;
	}

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
	public bool dispatchEvent(DOMEvent event)
	{
		GError* err = null;

		auto __p = webkit_dom_event_target_dispatch_event(getDOMEventTargetStruct(), (event is null) ? null : event.getDOMEventStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
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
	 *
	 * Returns: a #gboolean
	 */
	public bool removeEventListener(string eventName, GCallback handler, bool useCapture)
	{
		return webkit_dom_event_target_remove_event_listener(getDOMEventTargetStruct(), Str.toStringz(eventName), handler, useCapture) != 0;
	}

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
	public bool removeEventListenerWithClosure(string eventName, Closure handler, bool useCapture)
	{
		return webkit_dom_event_target_remove_event_listener_with_closure(getDOMEventTargetStruct(), Str.toStringz(eventName), (handler is null) ? null : handler.getClosureStruct(), useCapture) != 0;
	}
}
