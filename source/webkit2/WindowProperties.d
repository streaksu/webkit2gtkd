module webkit2.WindowProperties;

private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The content of a #WebKitWebView can request to change certain
 * properties of the window containing the view. This can include the x, y position
 * of the window, the width and height but also if a toolbar,
 * scrollbar, statusbar, locationbar should be visible to the user,
 * and the request to show the #WebKitWebView fullscreen.
 * 
 * The #WebKitWebView::ready-to-show signal handler is the proper place
 * to apply the initial window properties. Then you can monitor the
 * #WebKitWindowProperties by connecting to ::notify signal.
 * 
 * <informalexample><programlisting>
 * static void ready_to_show_cb (WebKitWebView *web_view, gpointer user_data)
 * {
 * GtkWidget *window;
 * WebKitWindowProperties *window_properties;
 * gboolean visible;
 * 
 * /<!-- -->* Create the window to contain the WebKitWebView *<!-- -->/
 * window = browser_window_new ();
 * gtk_container_add (GTK_CONTAINER (window), GTK_WIDGET (web_view));
 * gtk_widget_show (GTK_WIDGET (web_view));
 * 
 * /<!-- -->* Get the WebKitWindowProperties of the web view and monitor it *<!-- -->/
 * window_properties = webkit_web_view_get_window_properties (web_view);
 * g_signal_connect (window_properties, "notify::geometry",
 * G_CALLBACK (window_geometry_changed), window);
 * g_signal_connect (window_properties, "notify::toolbar-visible",
 * G_CALLBACK (window_toolbar_visibility_changed), window);
 * g_signal_connect (window_properties, "notify::menubar-visible",
 * G_CALLBACK (window_menubar_visibility_changed), window);
 * ....
 * 
 * /<!-- -->* Apply the window properties before showing the window *<!-- -->/
 * visible = webkit_window_properties_get_toolbar_visible (window_properties);
 * browser_window_set_toolbar_visible (BROWSER_WINDOW (window), visible);
 * visible = webkit_window_properties_get_menubar_visible (window_properties);
 * browser_window_set_menubar_visible (BROWSER_WINDOW (window), visible);
 * ....
 * 
 * if (webkit_window_properties_get_fullscreen (window_properties)) {
 * gtk_window_fullscreen (GTK_WINDOW (window));
 * } else {
 * GdkRectangle geometry;
 * 
 * gtk_window_set_resizable (GTK_WINDOW (window),
 * webkit_window_properties_get_resizable (window_properties));
 * webkit_window_properties_get_geometry (window_properties, &geometry);
 * gtk_window_move (GTK_WINDOW (window), geometry.x, geometry.y);
 * gtk_window_resize (GTK_WINDOW (window), geometry.width, geometry.height);
 * }
 * 
 * gtk_widget_show (window);
 * }
 * </programlisting></informalexample>
 */
public class WindowProperties : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWindowProperties* webKitWindowProperties;

	/** Get the main Gtk struct */
	public WebKitWindowProperties* getWindowPropertiesStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWindowProperties;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWindowProperties;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWindowProperties* webKitWindowProperties, bool ownedRef = false)
	{
		this.webKitWindowProperties = webKitWindowProperties;
		super(cast(GObject*)webKitWindowProperties, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_window_properties_get_type();
	}

	/**
	 * Get whether the window should be shown in fullscreen state or not.
	 *
	 * Returns: %TRUE if the window should be fullscreen or %FALSE otherwise.
	 */
	public bool getFullscreen()
	{
		return webkit_window_properties_get_fullscreen(webKitWindowProperties) != 0;
	}

	/**
	 * Get the geometry the window should have on the screen when shown.
	 *
	 * Params:
	 *     geometry = return location for the window geometry
	 */
	public void getGeometry(out GdkRectangle geometry)
	{
		webkit_window_properties_get_geometry(webKitWindowProperties, &geometry);
	}

	/**
	 * Get whether the window should have the locationbar visible or not.
	 *
	 * Returns: %TRUE if locationbar should be visible or %FALSE otherwise.
	 */
	public bool getLocationbarVisible()
	{
		return webkit_window_properties_get_locationbar_visible(webKitWindowProperties) != 0;
	}

	/**
	 * Get whether the window should have the menubar visible or not.
	 *
	 * Returns: %TRUE if menubar should be visible or %FALSE otherwise.
	 */
	public bool getMenubarVisible()
	{
		return webkit_window_properties_get_menubar_visible(webKitWindowProperties) != 0;
	}

	/**
	 * Get whether the window should be resizable by the user or not.
	 *
	 * Returns: %TRUE if the window should be resizable or %FALSE otherwise.
	 */
	public bool getResizable()
	{
		return webkit_window_properties_get_resizable(webKitWindowProperties) != 0;
	}

	/**
	 * Get whether the window should have the scrollbars visible or not.
	 *
	 * Returns: %TRUE if scrollbars should be visible or %FALSE otherwise.
	 */
	public bool getScrollbarsVisible()
	{
		return webkit_window_properties_get_scrollbars_visible(webKitWindowProperties) != 0;
	}

	/**
	 * Get whether the window should have the statusbar visible or not.
	 *
	 * Returns: %TRUE if statusbar should be visible or %FALSE otherwise.
	 */
	public bool getStatusbarVisible()
	{
		return webkit_window_properties_get_statusbar_visible(webKitWindowProperties) != 0;
	}

	/**
	 * Get whether the window should have the toolbar visible or not.
	 *
	 * Returns: %TRUE if toolbar should be visible or %FALSE otherwise.
	 */
	public bool getToolbarVisible()
	{
		return webkit_window_properties_get_toolbar_visible(webKitWindowProperties) != 0;
	}
}
