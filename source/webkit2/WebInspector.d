module webkit2.WebInspector;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.WebViewBase;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The WebKit Inspector is a graphical tool to inspect and change the
 * content of a #WebKitWebView. It also includes an interactive
 * JavaScript debugger. Using this class one can get a #GtkWidget
 * which can be embedded into an application to show the inspector.
 * 
 * The inspector is available when the #WebKitSettings of the
 * #WebKitWebView has set the #WebKitSettings:enable-developer-extras
 * to true, otherwise no inspector is available.
 * 
 * <informalexample><programlisting>
 * /<!-- -->* Enable the developer extras *<!-- -->/
 * WebKitSettings *setting = webkit_web_view_get_settings (WEBKIT_WEB_VIEW(my_webview));
 * g_object_set (G_OBJECT(settings), "enable-developer-extras", TRUE, NULL);
 * 
 * /<!-- -->* Load some data or reload to be able to inspect the page*<!-- -->/
 * webkit_web_view_load_uri (WEBKIT_WEB_VIEW(my_webview), "http://www.gnome.org");
 * 
 * /<!-- -->* Show the inspector *<!-- -->/
 * WebKitWebInspector *inspector = webkit_web_view_get_inspector (WEBKIT_WEB_VIEW(my_webview));
 * webkit_web_inspector_show (WEBKIT_WEB_INSPECTOR(inspector));
 * </programlisting></informalexample>
 */
public class WebInspector : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebInspector* webKitWebInspector;

	/** Get the main Gtk struct */
	public WebKitWebInspector* getWebInspectorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebInspector;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebInspector;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebInspector* webKitWebInspector, bool ownedRef = false)
	{
		this.webKitWebInspector = webKitWebInspector;
		super(cast(GObject*)webKitWebInspector, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_inspector_get_type();
	}

	/**
	 * Request @inspector to be attached. The signal #WebKitWebInspector::attach
	 * will be emitted. If the inspector is already attached it does nothing.
	 */
	public void attach()
	{
		webkit_web_inspector_attach(webKitWebInspector);
	}

	/**
	 * Request @inspector to be closed.
	 */
	public void close()
	{
		webkit_web_inspector_close(webKitWebInspector);
	}

	/**
	 * Request @inspector to be detached. The signal #WebKitWebInspector::detach
	 * will be emitted. If the inspector is already detached it does nothing.
	 */
	public void detach()
	{
		webkit_web_inspector_detach(webKitWebInspector);
	}

	/**
	 * Get the height that the inspector view should have when
	 * it's attached. If the inspector view is not attached this
	 * returns 0.
	 *
	 * Returns: the height of the inspector view when attached
	 */
	public uint getAttachedHeight()
	{
		return webkit_web_inspector_get_attached_height(webKitWebInspector);
	}

	/**
	 * Whether the @inspector can be attached to the same window that contains
	 * the inspected view.
	 *
	 * Returns: %TRUE if there is enough room for the inspector view inside the
	 *     window that contains the inspected view, or %FALSE otherwise.
	 *
	 * Since: 2.8
	 */
	public bool getCanAttach()
	{
		return webkit_web_inspector_get_can_attach(webKitWebInspector) != 0;
	}

	/**
	 * Get the URI that is currently being inspected. This can be %NULL if
	 * nothing has been loaded yet in the inspected view, if the inspector
	 * has been closed or when inspected view was loaded from a HTML string
	 * instead of a URI.
	 *
	 * Returns: the URI that is currently being inspected or %NULL
	 */
	public string getInspectedUri()
	{
		return Str.toString(webkit_web_inspector_get_inspected_uri(webKitWebInspector));
	}

	/**
	 * Get the #WebKitWebViewBase used to display the inspector.
	 * This might be %NULL if the inspector hasn't been loaded yet,
	 * or it has been closed.
	 *
	 * Returns: the #WebKitWebViewBase used to display the inspector or %NULL
	 */
	public WebViewBase getWebView()
	{
		auto __p = webkit_web_inspector_get_web_view(webKitWebInspector);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebViewBase)(cast(WebKitWebViewBase*) __p);
	}

	/**
	 * Whether the @inspector view is currently attached to the same window that contains
	 * the inspected view.
	 *
	 * Returns: %TRUE if @inspector is currently attached or %FALSE otherwise
	 */
	public bool isAttached()
	{
		return webkit_web_inspector_is_attached(webKitWebInspector) != 0;
	}

	/**
	 * Request @inspector to be shown.
	 */
	public void show()
	{
		webkit_web_inspector_show(webKitWebInspector);
	}

	/**
	 * Emitted when the inspector is requested to be attached to the window
	 * where the inspected web view is.
	 * If this signal is not handled the inspector view will be automatically
	 * attached to the inspected view, so you only need to handle this signal
	 * if you want to attach the inspector view yourself (for example, to add
	 * the inspector view to a browser tab).
	 *
	 * To prevent the inspector view from being attached you can connect to this
	 * signal and simply return %TRUE.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnAttach(bool delegate(WebInspector) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "attach", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the inspector should be shown.
	 *
	 * If the inspector is not attached the inspector window should be shown
	 * on top of any other windows.
	 * If the inspector is attached the inspector view should be made visible.
	 * For example, if the inspector view is attached using a tab in a browser
	 * window, the browser window should be raised and the tab containing the
	 * inspector view should be the active one.
	 * In both cases, if this signal is not handled, the default implementation
	 * calls gtk_window_present() on the current toplevel #GtkWindow of the
	 * inspector view.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnBringToFront(bool delegate(WebInspector) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "bring-to-front", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the inspector page is closed. If you are using your own
	 * inspector window, you should connect to this signal and destroy your
	 * window.
	 */
	gulong addOnClosed(void delegate(WebInspector) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the inspector is requested to be detached from the window
	 * it is currently attached to. The inspector is detached when the inspector page
	 * is about to be closed, and this signal is emitted right before
	 * #WebKitWebInspector::closed, or when the user clicks on the detach button
	 * in the inspector view to show the inspector in a separate window. In this case
	 * the signal #WebKitWebInspector::open-window is emitted after this one.
	 *
	 * To prevent the inspector view from being detached you can connect to this
	 * signal and simply return %TRUE.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnDetach(bool delegate(WebInspector) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "detach", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the inspector is requested to open in a separate window.
	 * If this signal is not handled, a #GtkWindow with the inspector will be
	 * created and shown, so you only need to handle this signal if you want
	 * to use your own window.
	 * This signal is emitted after #WebKitWebInspector::detach to show
	 * the inspector in a separate window after being detached.
	 *
	 * To prevent the inspector from being shown you can connect to this
	 * signal and simply return %TRUE
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnOpenWindow(bool delegate(WebInspector) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "open-window", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
