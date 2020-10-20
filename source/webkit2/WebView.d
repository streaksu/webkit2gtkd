module webkit2.WebView;

private import cairo.Surface;
private import gdk.Event;
private import gdk.RGBA;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FileIF;
private import gio.InputStream;
private import gio.TlsCertificate;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import gtk.Widget;
private import std.algorithm;
private import webkit2.AuthenticationRequest;
private import webkit2.BackForwardList;
private import webkit2.BackForwardListItem;
private import webkit2.ColorChooserRequest;
private import webkit2.ContextMenu;
private import webkit2.Download;
private import webkit2.EditorState;
private import webkit2.FileChooserRequest;
private import webkit2.FindController;
private import webkit2.FormSubmissionRequest;
private import webkit2.HitTestResult;
private import webkit2.InputMethodContext;
private import webkit2.JavascriptResult;
private import webkit2.NavigationAction;
private import webkit2.Notification;
private import webkit2.OptionMenu;
private import webkit2.PermissionRequestIF;
private import webkit2.PolicyDecision;
private import webkit2.PrintOperation;
private import webkit2.ScriptDialog;
private import webkit2.Settings;
private import webkit2.URIRequest;
private import webkit2.UserContentManager;
private import webkit2.UserMessage;
private import webkit2.WebContext;
private import webkit2.WebInspector;
private import webkit2.WebResource;
private import webkit2.WebViewBase;
private import webkit2.WebViewSessionState;
private import webkit2.WebsiteDataManager;
private import webkit2.WebsitePolicies;
private import webkit2.WindowProperties;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * #WebKitWebView is the central class of the WPE WebKit and WebKitGTK
 * APIs. It is responsible for managing the drawing of the content and
 * forwarding of events. You can load any URI into the #WebKitWebView or
 * a data string. With #WebKitSettings you can control various aspects
 * of the rendering and loading of the content.
 * 
 * Note that in WebKitGTK, #WebKitWebView is scrollable by itself, so
 * you don't need to embed it in a #GtkScrolledWindow.
 */
public class WebView : WebViewBase
{
	alias getSettings = Widget.getSettings;
	/** the main Gtk struct */
	protected WebKitWebView* webKitWebView;

	/** Get the main Gtk struct */
	public WebKitWebView* getWebViewStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebView;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebView;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebView* webKitWebView, bool ownedRef = false)
	{
		this.webKitWebView = webKitWebView;
		super(cast(WebKitWebViewBase*)webKitWebView, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_view_get_type();
	}

	/**
	 * Creates a new #WebKitWebView with the default #WebKitWebContext and
	 * no #WebKitUserContentManager associated with it.
	 * See also webkit_web_view_new_with_context(),
	 * webkit_web_view_new_with_user_content_manager(), and
	 * webkit_web_view_new_with_settings().
	 *
	 * Returns: The newly created #WebKitWebView widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_web_view_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitWebView*) __p);
	}

	/**
	 * Creates a new #WebKitWebView with the given #WebKitWebContext and
	 * no #WebKitUserContentManager associated with it.
	 * See also webkit_web_view_new_with_user_content_manager() and
	 * webkit_web_view_new_with_settings().
	 *
	 * Params:
	 *     context = the #WebKitWebContext to be used by the #WebKitWebView
	 *
	 * Returns: The newly created #WebKitWebView widget
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(WebContext context)
	{
		auto __p = webkit_web_view_new_with_context((context is null) ? null : context.getWebContextStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_context");
		}

		this(cast(WebKitWebView*) __p);
	}

	/**
	 * Creates a new #WebKitWebView sharing the same web process with @web_view.
	 * This method doesn't have any effect when %WEBKIT_PROCESS_MODEL_SHARED_SECONDARY_PROCESS
	 * process model is used, because a single web process is shared for all the web views in the
	 * same #WebKitWebContext. When using %WEBKIT_PROCESS_MODEL_MULTIPLE_SECONDARY_PROCESSES process model,
	 * this method should always be used when creating the #WebKitWebView in the #WebKitWebView::create signal.
	 * You can also use this method to implement other process models based on %WEBKIT_PROCESS_MODEL_MULTIPLE_SECONDARY_PROCESSES,
	 * like for example, sharing the same web process for all the views in the same security domain.
	 *
	 * The newly created #WebKitWebView will also have the same #WebKitUserContentManager,
	 * #WebKitSettings, and #WebKitWebsitePolicies as @web_view.
	 *
	 * Params:
	 *     webView = the related #WebKitWebView
	 *
	 * Returns: The newly created #WebKitWebView widget
	 *
	 * Since: 2.4
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(WebView webView)
	{
		auto __p = webkit_web_view_new_with_related_view((webView is null) ? null : webView.getWebViewStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_related_view");
		}

		this(cast(WebKitWebView*) __p, true);
	}

	/**
	 * Creates a new #WebKitWebView with the given #WebKitSettings.
	 * See also webkit_web_view_new_with_context(), and
	 * webkit_web_view_new_with_user_content_manager().
	 *
	 * Params:
	 *     settings = a #WebKitSettings
	 *
	 * Returns: The newly created #WebKitWebView widget
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Settings settings)
	{
		auto __p = webkit_web_view_new_with_settings((settings is null) ? null : settings.getSettingsStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_settings");
		}

		this(cast(WebKitWebView*) __p);
	}

	/**
	 * Creates a new #WebKitWebView with the given #WebKitUserContentManager.
	 * The content loaded in the view may be affected by the content injected
	 * in the view by the user content manager.
	 *
	 * Params:
	 *     userContentManager = a #WebKitUserContentManager.
	 *
	 * Returns: The newly created #WebKitWebView widget
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(UserContentManager userContentManager)
	{
		auto __p = webkit_web_view_new_with_user_content_manager((userContentManager is null) ? null : userContentManager.getUserContentManagerStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_user_content_manager");
		}

		this(cast(WebKitWebView*) __p);
	}

	/**
	 * Asynchronously check if it is possible to execute the given editing command.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_view_can_execute_editing_command_finish() to get the result of the operation.
	 *
	 * Params:
	 *     command = the command to check
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void canExecuteEditingCommand(string command, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_can_execute_editing_command(webKitWebView, Str.toStringz(command), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_view_can_execute_editing_command().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if the editing command can be executed or %FALSE otherwise
	 *
	 * Throws: GException on failure.
	 */
	public bool canExecuteEditingCommandFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_can_execute_editing_command_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Determines whether @web_view has a previous history item.
	 *
	 * Returns: %TRUE if able to move back or %FALSE otherwise.
	 */
	public bool canGoBack()
	{
		return webkit_web_view_can_go_back(webKitWebView) != 0;
	}

	/**
	 * Determines whether @web_view has a next history item.
	 *
	 * Returns: %TRUE if able to move forward or %FALSE otherwise.
	 */
	public bool canGoForward()
	{
		return webkit_web_view_can_go_forward(webKitWebView) != 0;
	}

	/**
	 * Whether or not a MIME type can be displayed in @web_view.
	 *
	 * Params:
	 *     mimeType = a MIME type
	 *
	 * Returns: %TRUE if the MIME type @mime_type can be displayed or %FALSE otherwise
	 */
	public bool canShowMimeType(string mimeType)
	{
		return webkit_web_view_can_show_mime_type(webKitWebView, Str.toStringz(mimeType)) != 0;
	}

	/**
	 * Requests downloading of the specified URI string for @web_view.
	 *
	 * Params:
	 *     uri = the URI to download
	 *
	 * Returns: a new #WebKitDownload representing
	 *     the download operation.
	 */
	public Download downloadUri(string uri)
	{
		auto __p = webkit_web_view_download_uri(webKitWebView, Str.toStringz(uri));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Download)(cast(WebKitDownload*) __p, true);
	}

	/**
	 * Request to execute the given @command for @web_view. You can use
	 * webkit_web_view_can_execute_editing_command() to check whether
	 * it's possible to execute the command.
	 *
	 * Params:
	 *     command = the command to execute
	 */
	public void executeEditingCommand(string command)
	{
		webkit_web_view_execute_editing_command(webKitWebView, Str.toStringz(command));
	}

	/**
	 * Request to execute the given @command with @argument for @web_view. You can use
	 * webkit_web_view_can_execute_editing_command() to check whether
	 * it's possible to execute the command.
	 *
	 * Params:
	 *     command = the command to execute
	 *     argument = the command argument
	 *
	 * Since: 2.10
	 */
	public void executeEditingCommandWithArgument(string command, string argument)
	{
		webkit_web_view_execute_editing_command_with_argument(webKitWebView, Str.toStringz(command), Str.toStringz(argument));
	}

	/**
	 * Get the presentation type of #WebKitWebView when created for automation.
	 *
	 * Returns: a #WebKitAutomationBrowsingContextPresentation.
	 *
	 * Since: 2.28
	 */
	public WebKitAutomationBrowsingContextPresentation getAutomationPresentationType()
	{
		return webkit_web_view_get_automation_presentation_type(webKitWebView);
	}

	/**
	 * Obtains the #WebKitBackForwardList associated with the given #WebKitWebView. The
	 * #WebKitBackForwardList is owned by the #WebKitWebView.
	 *
	 * Returns: the #WebKitBackForwardList
	 */
	public BackForwardList getBackForwardList()
	{
		auto __p = webkit_web_view_get_back_forward_list(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BackForwardList)(cast(WebKitBackForwardList*) __p);
	}

	/**
	 * Gets the color that is used to draw the @web_view background before
	 * the actual contents are rendered.
	 * For more information see also webkit_web_view_set_background_color()
	 *
	 * Params:
	 *     rgba = a #GdkRGBA to fill in with the background color
	 *
	 * Since: 2.8
	 */
	public void getBackgroundColor(out RGBA rgba)
	{
		GdkRGBA* outrgba = sliceNew!GdkRGBA();

		webkit_web_view_get_background_color(webKitWebView, outrgba);

		rgba = ObjectG.getDObject!(RGBA)(outrgba, true);
	}

	/**
	 * Gets the web context of @web_view.
	 *
	 * Returns: the #WebKitWebContext of the view
	 */
	public WebContext getContext()
	{
		auto __p = webkit_web_view_get_context(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebContext)(cast(WebKitWebContext*) __p);
	}

	/**
	 * Returns the current custom character encoding name of @web_view.
	 *
	 * Returns: the current custom character encoding name or %NULL if no
	 *     custom character encoding has been set.
	 */
	public string getCustomCharset()
	{
		return Str.toString(webkit_web_view_get_custom_charset(webKitWebView));
	}

	/**
	 * Gets the web editor state of @web_view.
	 *
	 * Returns: the #WebKitEditorState of the view
	 *
	 * Since: 2.10
	 */
	public EditorState getEditorState()
	{
		auto __p = webkit_web_view_get_editor_state(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(EditorState)(cast(WebKitEditorState*) __p);
	}

	/**
	 * Gets the value of the #WebKitWebView:estimated-load-progress property.
	 * You can monitor the estimated progress of a load operation by
	 * connecting to the notify::estimated-load-progress signal of @web_view.
	 *
	 * Returns: an estimate of the of the percent complete for a document
	 *     load as a range from 0.0 to 1.0.
	 */
	public double getEstimatedLoadProgress()
	{
		return webkit_web_view_get_estimated_load_progress(webKitWebView);
	}

	/**
	 * Returns favicon currently associated to @web_view, if any. You can
	 * connect to notify::favicon signal of @web_view to be notified when
	 * the favicon is available.
	 *
	 * Returns: a pointer to a #cairo_surface_t with the
	 *     favicon or %NULL if there's no icon associated with @web_view.
	 */
	public Surface getFavicon()
	{
		auto __p = webkit_web_view_get_favicon(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/**
	 * Gets the #WebKitFindController that will allow the caller to query
	 * the #WebKitWebView for the text to look for.
	 *
	 * Returns: the #WebKitFindController associated to
	 *     this particular #WebKitWebView.
	 */
	public FindController getFindController()
	{
		auto __p = webkit_web_view_get_find_controller(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FindController)(cast(WebKitFindController*) __p);
	}

	/**
	 * Get the #WebKitInputMethodContext currently in use by @web_view, or %NULL if no input method is being used.
	 *
	 * Returns: a #WebKitInputMethodContext, or %NULL
	 *
	 * Since: 2.28
	 */
	public InputMethodContext getInputMethodContext()
	{
		auto __p = webkit_web_view_get_input_method_context(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputMethodContext)(cast(WebKitInputMethodContext*) __p);
	}

	/**
	 * Get the #WebKitWebInspector associated to @web_view
	 *
	 * Returns: the #WebKitWebInspector of @web_view
	 */
	public WebInspector getInspector()
	{
		auto __p = webkit_web_view_get_inspector(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebInspector)(cast(WebKitWebInspector*) __p);
	}

	/**
	 * Gets the mute state of @web_view.
	 *
	 * Returns: %TRUE if @web_view audio is muted or %FALSE is audio is not muted.
	 *
	 * Since: 2.30
	 */
	public bool getIsMuted()
	{
		return webkit_web_view_get_is_muted(webKitWebView) != 0;
	}

	/**
	 * Get the global JavaScript context used by @web_view to deserialize the
	 * result values of scripts executed with webkit_web_view_run_javascript().
	 *
	 * Deprecated: Use jsc_value_get_context() instead.
	 *
	 * Returns: the <function>JSGlobalContextRef</function> used by @web_view to deserialize
	 *     the result values of scripts.
	 */
	public JSGlobalContextRef getJavascriptGlobalContext()
	{
		return webkit_web_view_get_javascript_global_context(webKitWebView);
	}

	/**
	 * Return the main resource of @web_view.
	 *
	 * Returns: the main #WebKitWebResource of the view
	 *     or %NULL if nothing has been loaded.
	 */
	public WebResource getMainResource()
	{
		auto __p = webkit_web_view_get_main_resource(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebResource)(cast(WebKitWebResource*) __p);
	}

	/**
	 * Get the identifier of the #WebKitWebPage corresponding to
	 * the #WebKitWebView
	 *
	 * Returns: the page ID of @web_view.
	 */
	public ulong getPageId()
	{
		return webkit_web_view_get_page_id(webKitWebView);
	}

	/**
	 * Gets the current session state of @web_view
	 *
	 * Returns: a #WebKitWebViewSessionState
	 *
	 * Since: 2.12
	 */
	public WebViewSessionState getSessionState()
	{
		auto __p = webkit_web_view_get_session_state(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebViewSessionState)(cast(WebKitWebViewSessionState*) __p, true);
	}

	/**
	 * Gets the #WebKitSettings currently applied to @web_view.
	 * If no other #WebKitSettings have been explicitly applied to
	 * @web_view with webkit_web_view_set_settings(), the default
	 * #WebKitSettings will be returned. This method always returns
	 * a valid #WebKitSettings object.
	 * To modify any of the @web_view settings, you can either create
	 * a new #WebKitSettings object with webkit_settings_new(), setting
	 * the desired preferences, and then replace the existing @web_view
	 * settings with webkit_web_view_set_settings() or get the existing
	 * @web_view settings and update it directly. #WebKitSettings objects
	 * can be shared by multiple #WebKitWebView<!-- -->s, so modifying
	 * the settings of a #WebKitWebView would affect other
	 * #WebKitWebView<!-- -->s using the same #WebKitSettings.
	 *
	 * Returns: the #WebKitSettings attached to @web_view
	 */
	public Settings getSettings()
	{
		auto __p = webkit_web_view_get_settings(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Settings)(cast(WebKitSettings*) __p);
	}

	/**
	 * Asynchronously retrieves a snapshot of @web_view for @region.
	 * @options specifies how the snapshot should be rendered.
	 *
	 * When the operation is finished, @callback will be called. You must
	 * call webkit_web_view_get_snapshot_finish() to get the result of the
	 * operation.
	 *
	 * Params:
	 *     region = the #WebKitSnapshotRegion for this snapshot
	 *     options = #WebKitSnapshotOptions for the snapshot
	 *     cancellable = a #GCancellable
	 *     callback = a #GAsyncReadyCallback
	 *     userData = user data
	 */
	public void getSnapshot(WebKitSnapshotRegion region, WebKitSnapshotOptions options, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_get_snapshot(webKitWebView, region, options, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous operation started with webkit_web_view_get_snapshot().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #cairo_surface_t with the retrieved snapshot or %NULL in error.
	 *
	 * Throws: GException on failure.
	 */
	public Surface getSnapshotFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_get_snapshot_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new Surface(cast(cairo_surface_t*) __p);
	}

	/**
	 * Gets the value of the #WebKitWebView:title property.
	 * You can connect to notify::title signal of @web_view to
	 * be notified when the title has been received.
	 *
	 * Returns: The main frame document title of @web_view.
	 */
	public string getTitle()
	{
		return Str.toString(webkit_web_view_get_title(webKitWebView));
	}

	/**
	 * Retrieves the #GTlsCertificate associated with the main resource of @web_view,
	 * and the #GTlsCertificateFlags showing what problems, if any, have been found
	 * with that certificate.
	 * If the connection is not HTTPS, this function returns %FALSE.
	 * This function should be called after a response has been received from the
	 * server, so you can connect to #WebKitWebView::load-changed and call this function
	 * when it's emitted with %WEBKIT_LOAD_COMMITTED event.
	 *
	 * Note that this function provides no information about the security of the web
	 * page if the current #WebKitTLSErrorsPolicy is @WEBKIT_TLS_ERRORS_POLICY_IGNORE,
	 * as subresources of the page may be controlled by an attacker. This function
	 * may safely be used to determine the security status of the current page only
	 * if the current #WebKitTLSErrorsPolicy is @WEBKIT_TLS_ERRORS_POLICY_FAIL, in
	 * which case subresources that fail certificate verification will be blocked.
	 *
	 * Params:
	 *     certificate = return location for a #GTlsCertificate
	 *     errors = return location for a #GTlsCertificateFlags the verification status of @certificate
	 *
	 * Returns: %TRUE if the @web_view connection uses HTTPS and a response has been received
	 *     from the server, or %FALSE otherwise.
	 */
	public bool getTlsInfo(out TlsCertificate certificate, out GTlsCertificateFlags errors)
	{
		GTlsCertificate* outcertificate = null;

		auto __p = webkit_web_view_get_tls_info(webKitWebView, &outcertificate, &errors) != 0;

		certificate = ObjectG.getDObject!(TlsCertificate)(outcertificate);

		return __p;
	}

	/**
	 * Returns the current active URI of @web_view. The active URI might change during
	 * a load operation:
	 *
	 * <orderedlist>
	 * <listitem><para>
	 * When nothing has been loaded yet on @web_view the active URI is %NULL.
	 * </para></listitem>
	 * <listitem><para>
	 * When a new load operation starts the active URI is the requested URI:
	 * <itemizedlist>
	 * <listitem><para>
	 * If the load operation was started by webkit_web_view_load_uri(),
	 * the requested URI is the given one.
	 * </para></listitem>
	 * <listitem><para>
	 * If the load operation was started by webkit_web_view_load_html(),
	 * the requested URI is "about:blank".
	 * </para></listitem>
	 * <listitem><para>
	 * If the load operation was started by webkit_web_view_load_alternate_html(),
	 * the requested URI is content URI provided.
	 * </para></listitem>
	 * <listitem><para>
	 * If the load operation was started by webkit_web_view_go_back() or
	 * webkit_web_view_go_forward(), the requested URI is the original URI
	 * of the previous/next item in the #WebKitBackForwardList of @web_view.
	 * </para></listitem>
	 * <listitem><para>
	 * If the load operation was started by
	 * webkit_web_view_go_to_back_forward_list_item(), the requested URI
	 * is the opriginal URI of the given #WebKitBackForwardListItem.
	 * </para></listitem>
	 * </itemizedlist>
	 * </para></listitem>
	 * <listitem><para>
	 * If there is a server redirection during the load operation,
	 * the active URI is the redirected URI. When the signal
	 * #WebKitWebView::load-changed is emitted with %WEBKIT_LOAD_REDIRECTED
	 * event, the active URI is already updated to the redirected URI.
	 * </para></listitem>
	 * <listitem><para>
	 * When the signal #WebKitWebView::load-changed is emitted
	 * with %WEBKIT_LOAD_COMMITTED event, the active URI is the final
	 * one and it will not change unless a new load operation is started
	 * or a navigation action within the same page is performed.
	 * </para></listitem>
	 * </orderedlist>
	 *
	 * You can monitor the active URI by connecting to the notify::uri
	 * signal of @web_view.
	 *
	 * Returns: the current active URI of @web_view or %NULL
	 *     if nothing has been loaded yet.
	 */
	public string getUri()
	{
		return Str.toString(webkit_web_view_get_uri(webKitWebView));
	}

	/**
	 * Gets the user content manager associated to @web_view.
	 *
	 * Returns: the #WebKitUserContentManager associated with the view
	 *
	 * Since: 2.6
	 */
	public UserContentManager getUserContentManager()
	{
		auto __p = webkit_web_view_get_user_content_manager(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserContentManager)(cast(WebKitUserContentManager*) __p);
	}

	/**
	 * Get the #WebKitWebsiteDataManager associated to @web_view. If @web_view is not ephemeral,
	 * the returned #WebKitWebsiteDataManager will be the same as the #WebKitWebsiteDataManager
	 * of @web_view's #WebKitWebContext.
	 *
	 * Returns: a #WebKitWebsiteDataManager
	 *
	 * Since: 2.16
	 */
	public WebsiteDataManager getWebsiteDataManager()
	{
		auto __p = webkit_web_view_get_website_data_manager(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebsiteDataManager)(cast(WebKitWebsiteDataManager*) __p);
	}

	/**
	 * Gets the default website policies set on construction in the
	 * @web_view. These can be overridden on a per-origin basis via the
	 * #WebKitWebView::decide-policy signal handler.
	 *
	 * See also webkit_policy_decision_use_with_policies().
	 *
	 * Returns: the default #WebKitWebsitePolicies
	 *     associated with the view.
	 *
	 * Since: 2.30
	 */
	public WebsitePolicies getWebsitePolicies()
	{
		auto __p = webkit_web_view_get_website_policies(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebsitePolicies)(cast(WebKitWebsitePolicies*) __p);
	}

	/**
	 * Get the #WebKitWindowProperties object containing the properties
	 * that the window containing @web_view should have.
	 *
	 * Returns: the #WebKitWindowProperties of @web_view
	 */
	public WindowProperties getWindowProperties()
	{
		auto __p = webkit_web_view_get_window_properties(webKitWebView);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WindowProperties)(cast(WebKitWindowProperties*) __p);
	}

	/**
	 * Get the zoom level of @web_view, i.e. the factor by which the
	 * view contents are scaled with respect to their original size.
	 *
	 * Returns: the current zoom level of @web_view
	 */
	public double getZoomLevel()
	{
		return webkit_web_view_get_zoom_level(webKitWebView);
	}

	/**
	 * Loads the previous history item.
	 * You can monitor the load operation by connecting to
	 * #WebKitWebView::load-changed signal.
	 */
	public void goBack()
	{
		webkit_web_view_go_back(webKitWebView);
	}

	/**
	 * Loads the next history item.
	 * You can monitor the load operation by connecting to
	 * #WebKitWebView::load-changed signal.
	 */
	public void goForward()
	{
		webkit_web_view_go_forward(webKitWebView);
	}

	/**
	 * Loads the specific history item @list_item.
	 * You can monitor the load operation by connecting to
	 * #WebKitWebView::load-changed signal.
	 *
	 * Params:
	 *     listItem = a #WebKitBackForwardListItem
	 */
	public void goToBackForwardListItem(BackForwardListItem listItem)
	{
		webkit_web_view_go_to_back_forward_list_item(webKitWebView, (listItem is null) ? null : listItem.getBackForwardListItemStruct());
	}

	/**
	 * Get whether a #WebKitWebView was created with #WebKitWebView:is-controlled-by-automation
	 * property enabled. Only #WebKitWebView<!-- -->s controlled by automation can be used in an
	 * automation session.
	 *
	 * Returns: %TRUE if @web_view is controlled by automation, or %FALSE otherwise.
	 *
	 * Since: 2.18
	 */
	public bool isControlledByAutomation()
	{
		return webkit_web_view_is_controlled_by_automation(webKitWebView) != 0;
	}

	/** */
	public bool isEditable()
	{
		return webkit_web_view_is_editable(webKitWebView) != 0;
	}

	/**
	 * Get whether a #WebKitWebView is ephemeral. To create an ephemeral #WebKitWebView you need to
	 * use g_object_new() and pass is-ephemeral property with %TRUE value. See
	 * #WebKitWebView:is-ephemeral for more details.
	 * If @web_view was created with a ephemeral #WebKitWebView:related-view or an
	 * ephemeral #WebKitWebView:web-context it will also be ephemeral.
	 *
	 * Returns: %TRUE if @web_view is ephemeral or %FALSE otherwise.
	 *
	 * Since: 2.16
	 */
	public bool isEphemeral()
	{
		return webkit_web_view_is_ephemeral(webKitWebView) != 0;
	}

	/**
	 * Gets the value of the #WebKitWebView:is-loading property.
	 * You can monitor when a #WebKitWebView is loading a page by connecting to
	 * notify::is-loading signal of @web_view. This is useful when you are
	 * interesting in knowing when the view is loading something but not in the
	 * details about the status of the load operation, for example to start a spinner
	 * when the view is loading a page and stop it when it finishes.
	 *
	 * Returns: %TRUE if @web_view is loading a page or %FALSE otherwise.
	 */
	public bool isLoading()
	{
		return webkit_web_view_is_loading(webKitWebView) != 0;
	}

	/**
	 * Gets the value of the #WebKitWebView:is-playing-audio property.
	 * You can monitor when a page in a #WebKitWebView is playing audio by
	 * connecting to the notify::is-playing-audio signal of @web_view. This
	 * is useful when the application wants to provide visual feedback when a
	 * page is producing sound.
	 *
	 * Returns: %TRUE if a page in @web_view is playing audio or %FALSE otherwise.
	 *
	 * Since: 2.8
	 */
	public bool isPlayingAudio()
	{
		return webkit_web_view_is_playing_audio(webKitWebView) != 0;
	}

	/**
	 * Load the given @content string for the URI @content_uri.
	 * This allows clients to display page-loading errors in the #WebKitWebView itself.
	 * When this method is called from #WebKitWebView::load-failed signal to show an
	 * error page, then the back-forward list is maintained appropriately.
	 * For everything else this method works the same way as webkit_web_view_load_html().
	 *
	 * Params:
	 *     content = the new content to display as the main page of the @web_view
	 *     contentUri = the URI for the alternate page content
	 *     baseUri = the base URI for relative locations or %NULL
	 */
	public void loadAlternateHtml(string content, string contentUri, string baseUri)
	{
		webkit_web_view_load_alternate_html(webKitWebView, Str.toStringz(content), Str.toStringz(contentUri), Str.toStringz(baseUri));
	}

	/**
	 * Load the specified @bytes into @web_view using the given @mime_type and @encoding.
	 * When @mime_type is %NULL, it defaults to "text/html".
	 * When @encoding is %NULL, it defaults to "UTF-8".
	 * When @base_uri is %NULL, it defaults to "about:blank".
	 * You can monitor the load operation by connecting to #WebKitWebView::load-changed signal.
	 *
	 * Params:
	 *     bytes = input data to load
	 *     mimeType = the MIME type of @bytes, or %NULL
	 *     encoding = the character encoding of @bytes, or %NULL
	 *     baseUri = the base URI for relative locations or %NULL
	 *
	 * Since: 2.6
	 */
	public void loadBytes(Bytes bytes, string mimeType, string encoding, string baseUri)
	{
		webkit_web_view_load_bytes(webKitWebView, (bytes is null) ? null : bytes.getBytesStruct(), Str.toStringz(mimeType), Str.toStringz(encoding), Str.toStringz(baseUri));
	}

	/**
	 * Load the given @content string with the specified @base_uri.
	 * If @base_uri is not %NULL, relative URLs in the @content will be
	 * resolved against @base_uri and absolute local paths must be children of the @base_uri.
	 * For security reasons absolute local paths that are not children of @base_uri
	 * will cause the web process to terminate.
	 * If you need to include URLs in @content that are local paths in a different
	 * directory than @base_uri you can build a data URI for them. When @base_uri is %NULL,
	 * it defaults to "about:blank". The mime type of the document will be "text/html".
	 * You can monitor the load operation by connecting to #WebKitWebView::load-changed signal.
	 *
	 * Params:
	 *     content = The HTML string to load
	 *     baseUri = The base URI for relative locations or %NULL
	 */
	public void loadHtml(string content, string baseUri)
	{
		webkit_web_view_load_html(webKitWebView, Str.toStringz(content), Str.toStringz(baseUri));
	}

	/**
	 * Load the specified @plain_text string into @web_view. The mime type of
	 * document will be "text/plain". You can monitor the load
	 * operation by connecting to #WebKitWebView::load-changed signal.
	 *
	 * Params:
	 *     plainText = The plain text to load
	 */
	public void loadPlainText(string plainText)
	{
		webkit_web_view_load_plain_text(webKitWebView, Str.toStringz(plainText));
	}

	/**
	 * Requests loading of the specified #WebKitURIRequest.
	 * You can monitor the load operation by connecting to
	 * #WebKitWebView::load-changed signal.
	 *
	 * Params:
	 *     request = a #WebKitURIRequest to load
	 */
	public void loadRequest(URIRequest request)
	{
		webkit_web_view_load_request(webKitWebView, (request is null) ? null : request.getURIRequestStruct());
	}

	/**
	 * Requests loading of the specified URI string.
	 * You can monitor the load operation by connecting to
	 * #WebKitWebView::load-changed signal.
	 *
	 * Params:
	 *     uri = an URI string
	 */
	public void loadUri(string uri)
	{
		webkit_web_view_load_uri(webKitWebView, Str.toStringz(uri));
	}

	/**
	 * Reloads the current contents of @web_view.
	 * See also webkit_web_view_reload_bypass_cache().
	 */
	public void reload()
	{
		webkit_web_view_reload(webKitWebView);
	}

	/**
	 * Reloads the current contents of @web_view without
	 * using any cached data.
	 */
	public void reloadBypassCache()
	{
		webkit_web_view_reload_bypass_cache(webKitWebView);
	}

	/**
	 * Restore the @web_view session state from @state
	 *
	 * Params:
	 *     state = a #WebKitWebViewSessionState
	 *
	 * Since: 2.12
	 */
	public void restoreSessionState(WebViewSessionState state)
	{
		webkit_web_view_restore_session_state(webKitWebView, (state is null) ? null : state.getWebViewSessionStateStruct());
	}

	/**
	 * Asynchronously run @script in the context of the current page in @web_view. If
	 * WebKitSettings:enable-javascript is FALSE, this method will do nothing.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_view_run_javascript_finish() to get the result of the operation.
	 *
	 * Params:
	 *     script = the script to run
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the script finished
	 *     userData = the data to pass to callback function
	 */
	public void runJavascript(string script, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_run_javascript(webKitWebView, Str.toStringz(script), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_view_run_javascript().
	 *
	 * This is an example of using webkit_web_view_run_javascript() with a script returning
	 * a string:
	 *
	 * <informalexample><programlisting>
	 * static void
	 * web_view_javascript_finished (GObject      *object,
	 * GAsyncResult *result,
	 * gpointer      user_data)
	 * {
	 * WebKitJavascriptResult *js_result;
	 * JSCValue               *value;
	 * GError                 *error = NULL;
	 *
	 * js_result = webkit_web_view_run_javascript_finish (WEBKIT_WEB_VIEW (object), result, &error);
	 * if (!js_result) {
	 * g_warning ("Error running javascript: %s", error->message);
	 * g_error_free (error);
	 * return;
	 * }
	 *
	 * value = webkit_javascript_result_get_js_value (js_result);
	 * if (jsc_value_is_string (value)) {
	 * JSCException *exception;
	 * gchar        *str_value;
	 *
	 * str_value = jsc_value_to_string (value);
	 * exception = jsc_context_get_exception (jsc_value_get_context (value));
	 * if (exception)
	 * g_warning ("Error running javascript: %s", jsc_exception_get_message (exception));
	 * else
	 * g_print ("Script result: %s\n", str_value);
	 * g_free (str_value);
	 * } else {
	 * g_warning ("Error running javascript: unexpected return value");
	 * }
	 * webkit_javascript_result_unref (js_result);
	 * }
	 *
	 * static void
	 * web_view_get_link_url (WebKitWebView *web_view,
	 * const gchar   *link_id)
	 * {
	 * gchar *script;
	 *
	 * script = g_strdup_printf ("window.document.getElementById('%s').href;", link_id);
	 * webkit_web_view_run_javascript (web_view, script, NULL, web_view_javascript_finished, NULL);
	 * g_free (script);
	 * }
	 * </programlisting></informalexample>
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitJavascriptResult with the result of the last executed statement in @script
	 *     or %NULL in case of error
	 *
	 * Throws: GException on failure.
	 */
	public JavascriptResult runJavascriptFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_run_javascript_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(JavascriptResult)(cast(WebKitJavascriptResult*) __p, true);
	}

	/**
	 * Asynchronously run the script from @resource in the context of the
	 * current page in @web_view.
	 *
	 * When the operation is finished, @callback will be called. You can
	 * then call webkit_web_view_run_javascript_from_gresource_finish() to get the result
	 * of the operation.
	 *
	 * Params:
	 *     resource = the location of the resource to load
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the script finished
	 *     userData = the data to pass to callback function
	 */
	public void runJavascriptFromGresource(string resource, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_run_javascript_from_gresource(webKitWebView, Str.toStringz(resource), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_view_run_javascript_from_gresource().
	 *
	 * Check webkit_web_view_run_javascript_finish() for a usage example.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitJavascriptResult with the result of the last executed statement in @script
	 *     or %NULL in case of error
	 *
	 * Throws: GException on failure.
	 */
	public JavascriptResult runJavascriptFromGresourceFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_run_javascript_from_gresource_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(JavascriptResult)(cast(WebKitJavascriptResult*) __p, true);
	}

	/**
	 * Asynchronously run @script in the script world with name @world_name of the current page context in @web_view.
	 * If WebKitSettings:enable-javascript is FALSE, this method will do nothing.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_view_run_javascript_in_world_finish() to get the result of the operation.
	 *
	 * Params:
	 *     script = the script to run
	 *     worldName = the name of a #WebKitScriptWorld
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the script finished
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.22
	 */
	public void runJavascriptInWorld(string script, string worldName, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_run_javascript_in_world(webKitWebView, Str.toStringz(script), Str.toStringz(worldName), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_view_run_javascript_in_world().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitJavascriptResult with the result of the last executed statement in @script
	 *     or %NULL in case of error
	 *
	 * Since: 2.22
	 *
	 * Throws: GException on failure.
	 */
	public JavascriptResult runJavascriptInWorldFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_run_javascript_in_world_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(JavascriptResult)(cast(WebKitJavascriptResult*) __p, true);
	}

	/**
	 * Asynchronously save the current web page associated to the
	 * #WebKitWebView into a self-contained format using the mode
	 * specified in @save_mode.
	 *
	 * When the operation is finished, @callback will be called. You can
	 * then call webkit_web_view_save_finish() to get the result of the
	 * operation.
	 *
	 * Params:
	 *     saveMode = the #WebKitSaveMode specifying how the web page should be saved.
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void save(WebKitSaveMode saveMode, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_save(webKitWebView, saveMode, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_view_save().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #GInputStream with the result of saving
	 *     the current web page or %NULL in case of error.
	 *
	 * Throws: GException on failure.
	 */
	public InputStream saveFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_save_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputStream)(cast(GInputStream*) __p, true);
	}

	/**
	 * Asynchronously save the current web page associated to the
	 * #WebKitWebView into a self-contained format using the mode
	 * specified in @save_mode and writing it to @file.
	 *
	 * When the operation is finished, @callback will be called. You can
	 * then call webkit_web_view_save_to_file_finish() to get the result of the
	 * operation.
	 *
	 * Params:
	 *     file = the #GFile where the current web page should be saved to.
	 *     saveMode = the #WebKitSaveMode specifying how the web page should be saved.
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void saveToFile(FileIF file, WebKitSaveMode saveMode, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_save_to_file(webKitWebView, (file is null) ? null : file.getFileStruct(), saveMode, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_view_save_to_file().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if the web page was successfully saved to a file or %FALSE otherwise.
	 *
	 * Throws: GException on failure.
	 */
	public bool saveToFileFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_save_to_file_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Send @message to the #WebKitWebPage corresponding to @web_view. If @message is floating, it's consumed.
	 *
	 * If you don't expect any reply, or you simply want to ignore it, you can pass %NULL as @callback.
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_view_send_message_to_page_finish() to get the message reply.
	 *
	 * Params:
	 *     message = a #WebKitUserMessage
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = (nullable): A #GAsyncReadyCallback to call when the request is satisfied or %NULL
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.28
	 */
	public void sendMessageToPage(UserMessage message, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_view_send_message_to_page(webKitWebView, (message is null) ? null : message.getUserMessageStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_view_send_message_to_page().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitUserMessage with the reply or %NULL in case of error.
	 *
	 * Since: 2.28
	 *
	 * Throws: GException on failure.
	 */
	public UserMessage sendMessageToPageFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_view_send_message_to_page_finish(webKitWebView, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserMessage)(cast(WebKitUserMessage*) __p, true);
	}

	/**
	 * Sets the color that will be used to draw the @web_view background before
	 * the actual contents are rendered. Note that if the web page loaded in @web_view
	 * specifies a background color, it will take precedence over the @rgba color.
	 * By default the @web_view background color is opaque white.
	 * Note that the parent window must have a RGBA visual and
	 * #GtkWidget:app-paintable property set to %TRUE for backgrounds colors to work.
	 *
	 * <informalexample><programlisting>
	 * static void browser_window_set_background_color (BrowserWindow *window,
	 * const GdkRGBA *rgba)
	 * {
	 * WebKitWebView *web_view;
	 * GdkScreen *screen = gtk_window_get_screen (GTK_WINDOW (window));
	 * GdkVisual *rgba_visual = gdk_screen_get_rgba_visual (screen);
	 *
	 * if (!rgba_visual)
	 * return;
	 *
	 * gtk_widget_set_visual (GTK_WIDGET (window), rgba_visual);
	 * gtk_widget_set_app_paintable (GTK_WIDGET (window), TRUE);
	 *
	 * web_view = browser_window_get_web_view (window);
	 * webkit_web_view_set_background_color (web_view, rgba);
	 * }
	 * </programlisting></informalexample>
	 *
	 * Params:
	 *     rgba = a #GdkRGBA
	 *
	 * Since: 2.8
	 */
	public void setBackgroundColor(RGBA rgba)
	{
		webkit_web_view_set_background_color(webKitWebView, (rgba is null) ? null : rgba.getRGBAStruct());
	}

	/**
	 * Sets the current custom character encoding override of @web_view. The custom
	 * character encoding will override any text encoding detected via HTTP headers or
	 * META tags. Calling this method will stop any current load operation and reload the
	 * current page. Setting the custom character encoding to %NULL removes the character
	 * encoding override.
	 *
	 * Params:
	 *     charset = a character encoding name or %NULL
	 */
	public void setCustomCharset(string charset)
	{
		webkit_web_view_set_custom_charset(webKitWebView, Str.toStringz(charset));
	}

	/**
	 * Sets whether the user is allowed to edit the HTML document.
	 *
	 * If @editable is %TRUE, @web_view allows the user to edit the HTML document. If
	 * @editable is %FALSE, an element in @web_view's document can only be edited if the
	 * CONTENTEDITABLE attribute has been set on the element or one of its parent
	 * elements. By default a #WebKitWebView is not editable.
	 *
	 * Normally, a HTML document is not editable unless the elements within the
	 * document are editable. This function provides a way to make the contents
	 * of a #WebKitWebView editable without altering the document or DOM structure.
	 *
	 * Params:
	 *     editable = a #gboolean indicating the editable state
	 *
	 * Since: 2.8
	 */
	public void setEditable(bool editable)
	{
		webkit_web_view_set_editable(webKitWebView, editable);
	}

	/**
	 * Set the #WebKitInputMethodContext to be used by @web_view, or %NULL to not use any input method.
	 * Note that the same #WebKitInputMethodContext can't be set on more than one #WebKitWebView at the same time.
	 *
	 * Params:
	 *     context = the #WebKitInputMethodContext to set, or %NULL
	 *
	 * Since: 2.28
	 */
	public void setInputMethodContext(InputMethodContext context)
	{
		webkit_web_view_set_input_method_context(webKitWebView, (context is null) ? null : context.getInputMethodContextStruct());
	}

	/**
	 * Sets the mute state of @web_view.
	 *
	 * Params:
	 *     muted = mute flag
	 *
	 * Since: 2.30
	 */
	public void setIsMuted(bool muted)
	{
		webkit_web_view_set_is_muted(webKitWebView, muted);
	}

	/**
	 * Sets the #WebKitSettings to be applied to @web_view. The
	 * existing #WebKitSettings of @web_view will be replaced by
	 * @settings. New settings are applied immediately on @web_view.
	 * The same #WebKitSettings object can be shared
	 * by multiple #WebKitWebView<!-- -->s.
	 *
	 * Params:
	 *     settings = a #WebKitSettings
	 */
	public void setSettings(Settings settings)
	{
		webkit_web_view_set_settings(webKitWebView, (settings is null) ? null : settings.getSettingsStruct());
	}

	/**
	 * Set the zoom level of @web_view, i.e. the factor by which the
	 * view contents are scaled with respect to their original size.
	 *
	 * Params:
	 *     zoomLevel = the zoom level
	 */
	public void setZoomLevel(double zoomLevel)
	{
		webkit_web_view_set_zoom_level(webKitWebView, zoomLevel);
	}

	/**
	 * Stops any ongoing loading operation in @web_view.
	 * This method does nothing if no content is being loaded.
	 * If there is a loading operation in progress, it will be cancelled and
	 * #WebKitWebView::load-failed signal will be emitted with
	 * %WEBKIT_NETWORK_ERROR_CANCELLED error.
	 */
	public void stopLoading()
	{
		webkit_web_view_stop_loading(webKitWebView);
	}

	/**
	 * Tries to close the @web_view. This will fire the onbeforeunload event
	 * to ask the user for confirmation to close the page. If there isn't an
	 * onbeforeunload event handler or the user confirms to close the page,
	 * the #WebKitWebView::close signal is emitted, otherwise nothing happens.
	 *
	 * Since: 2.12
	 */
	public void tryClose()
	{
		webkit_web_view_try_close(webKitWebView);
	}

	/**
	 * This signal is emitted when the user is challenged with HTTP
	 * authentication. To let the  application access or supply
	 * the credentials as well as to allow the client application
	 * to either cancel the request or perform the authentication,
	 * the signal will pass an instance of the
	 * #WebKitAuthenticationRequest in the @request argument.
	 * To handle this signal asynchronously you should keep a ref
	 * of the request and return %TRUE. To disable HTTP authentication
	 * entirely, connect to this signal and simply return %TRUE.
	 *
	 * The default signal handler will run a default authentication
	 * dialog asynchronously for the user to interact with.
	 *
	 * Params:
	 *     request = a #WebKitAuthenticationRequest
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 *
	 * Since: 2.2
	 */
	gulong addOnAuthenticate(bool delegate(AuthenticationRequest, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "authenticate", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when closing a #WebKitWebView is requested. This occurs when a
	 * call is made from JavaScript's <function>window.close</function> function or
	 * after trying to close the @web_view with webkit_web_view_try_close().
	 * It is the owner's responsibility to handle this signal to hide or
	 * destroy the #WebKitWebView, if necessary.
	 */
	gulong addOnClose(void delegate(WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a context menu is about to be displayed to give the application
	 * a chance to customize the proposed menu, prevent the menu from being displayed,
	 * or build its own context menu.
	 * <itemizedlist>
	 * <listitem><para>
	 * To customize the proposed menu you can use webkit_context_menu_prepend(),
	 * webkit_context_menu_append() or webkit_context_menu_insert() to add new
	 * #WebKitContextMenuItem<!-- -->s to @context_menu, webkit_context_menu_move_item()
	 * to reorder existing items, or webkit_context_menu_remove() to remove an
	 * existing item. The signal handler should return %FALSE, and the menu represented
	 * by @context_menu will be shown.
	 * </para></listitem>
	 * <listitem><para>
	 * To prevent the menu from being displayed you can just connect to this signal
	 * and return %TRUE so that the proposed menu will not be shown.
	 * </para></listitem>
	 * <listitem><para>
	 * To build your own menu, you can remove all items from the proposed menu with
	 * webkit_context_menu_remove_all(), add your own items and return %FALSE so
	 * that the menu will be shown. You can also ignore the proposed #WebKitContextMenu,
	 * build your own #GtkMenu and return %TRUE to prevent the proposed menu from being shown.
	 * </para></listitem>
	 * <listitem><para>
	 * If you just want the default menu to be shown always, simply don't connect to this
	 * signal because showing the proposed context menu is the default behaviour.
	 * </para></listitem>
	 * </itemizedlist>
	 *
	 * The @event is expected to be one of the following types:
	 * <itemizedlist>
	 * <listitem><para>
	 * a #GdkEventButton of type %GDK_BUTTON_PRESS when the context menu
	 * was triggered with mouse.
	 * </para></listitem>
	 * <listitem><para>
	 * a #GdkEventKey of type %GDK_KEY_PRESS if the keyboard was used to show
	 * the menu.
	 * </para></listitem>
	 * <listitem><para>
	 * a generic #GdkEvent of type %GDK_NOTHING when the #GtkWidget::popup-menu
	 * signal was used to show the context menu.
	 * </para></listitem>
	 * </itemizedlist>
	 *
	 * If the signal handler returns %FALSE the context menu represented by @context_menu
	 * will be shown, if it return %TRUE the context menu will not be shown.
	 *
	 * The proposed #WebKitContextMenu passed in @context_menu argument is only valid
	 * during the signal emission.
	 *
	 * Params:
	 *     contextMenu = the proposed #WebKitContextMenu
	 *     event = the #GdkEvent that triggered the context menu
	 *     hitTestResult = a #WebKitHitTestResult
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnContextMenu(bool delegate(ContextMenu, Event, HitTestResult, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "context-menu", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after #WebKitWebView::context-menu signal, if the context menu is shown,
	 * to notify that the context menu is dismissed.
	 */
	gulong addOnContextMenuDismissed(void delegate(WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "context-menu-dismissed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the creation of a new #WebKitWebView is requested.
	 * If this signal is handled the signal handler should return the
	 * newly created #WebKitWebView.
	 *
	 * The #WebKitNavigationAction parameter contains information about the
	 * navigation action that triggered this signal.
	 *
	 * The new #WebKitWebView must be related to @web_view, see
	 * webkit_web_view_new_with_related_view() for more details.
	 *
	 * The new #WebKitWebView should not be displayed to the user
	 * until the #WebKitWebView::ready-to-show signal is emitted.
	 *
	 * Params:
	 *     navigationAction = a #WebKitNavigationAction
	 *
	 * Returns: a newly allocated #WebKitWebView widget
	 *     or %NULL to propagate the event further.
	 */
	gulong addOnCreate(Widget delegate(NavigationAction, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "create", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when WebKit is requesting the client to decide a policy
	 * decision, such as whether to navigate to a page, open a new window or whether or
	 * not to download a resource. The #WebKitNavigationPolicyDecision passed in the
	 * @decision argument is a generic type, but should be casted to a more
	 * specific type when making the decision. For example:
	 *
	 * <informalexample><programlisting>
	 * static gboolean
	 * decide_policy_cb (WebKitWebView *web_view,
	 * WebKitPolicyDecision *decision,
	 * WebKitPolicyDecisionType type)
	 * {
	 * switch (type) {
	 * case WEBKIT_POLICY_DECISION_TYPE_NAVIGATION_ACTION: {
	 * WebKitNavigationPolicyDecision *navigation_decision = WEBKIT_NAVIGATION_POLICY_DECISION (decision);
	 * /<!-- -->* Make a policy decision here. *<!-- -->/
	 * break;
	 * }
	 * case WEBKIT_POLICY_DECISION_TYPE_NEW_WINDOW_ACTION: {
	 * WebKitNavigationPolicyDecision *navigation_decision = WEBKIT_NAVIGATION_POLICY_DECISION (decision);
	 * /<!-- -->* Make a policy decision here. *<!-- -->/
	 * break;
	 * }
	 * case WEBKIT_POLICY_DECISION_TYPE_RESPONSE:
	 * WebKitResponsePolicyDecision *response = WEBKIT_RESPONSE_POLICY_DECISION (decision);
	 * /<!-- -->* Make a policy decision here. *<!-- -->/
	 * break;
	 * default:
	 * /<!-- -->* Making no decision results in webkit_policy_decision_use(). *<!-- -->/
	 * return FALSE;
	 * }
	 * return TRUE;
	 * }
	 * </programlisting></informalexample>
	 *
	 * It is possible to make policy decision asynchronously, by simply calling g_object_ref()
	 * on the @decision argument and returning %TRUE to block the default signal handler.
	 * If the last reference is removed on a #WebKitPolicyDecision and no decision has been
	 * made explicitly, webkit_policy_decision_use() will be the default policy decision. The
	 * default signal handler will simply call webkit_policy_decision_use(). Only the first
	 * policy decision chosen for a given #WebKitPolicyDecision will have any affect.
	 *
	 * Params:
	 *     decision = the #WebKitPolicyDecision
	 *     decisionType = a #WebKitPolicyDecisionType denoting the type of @decision
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnDecidePolicy(bool delegate(PolicyDecision, WebKitPolicyDecisionType, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "decide-policy", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when JavaScript code calls
	 * <function>element.webkitRequestFullScreen</function>. If the
	 * signal is not handled the #WebKitWebView will proceed to full screen
	 * its top level window. This signal can be used by client code to
	 * request permission to the user prior doing the full screen
	 * transition and eventually prepare the top-level window
	 * (e.g. hide some widgets that would otherwise be part of the
	 * full screen window).
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to continue emission of the event.
	 */
	gulong addOnEnterFullscreen(bool delegate(WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "enter-fullscreen", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when insecure content has been detected
	 * in a page loaded through a secure connection. This typically
	 * means that a external resource from an unstrusted source has
	 * been run or displayed, resulting in a mix of HTTPS and
	 * non-HTTPS content.
	 *
	 * You can check the @event parameter to know exactly which kind
	 * of event has been detected (see #WebKitInsecureContentEvent).
	 *
	 * Params:
	 *     event = the #WebKitInsecureContentEvent
	 */
	gulong addOnInsecureContentDetected(void delegate(WebKitInsecureContentEvent, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "insecure-content-detected", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the #WebKitWebView is about to restore its top level
	 * window out of its full screen state. This signal can be used by
	 * client code to restore widgets hidden during the
	 * #WebKitWebView::enter-fullscreen stage for instance.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to continue emission of the event.
	 */
	gulong addOnLeaveFullscreen(bool delegate(WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "leave-fullscreen", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a load operation in @web_view changes.
	 * The signal is always emitted with %WEBKIT_LOAD_STARTED when a
	 * new load request is made and %WEBKIT_LOAD_FINISHED when the load
	 * finishes successfully or due to an error. When the ongoing load
	 * operation fails #WebKitWebView::load-failed signal is emitted
	 * before #WebKitWebView::load-changed is emitted with
	 * %WEBKIT_LOAD_FINISHED.
	 * If a redirection is received from the server, this signal is emitted
	 * with %WEBKIT_LOAD_REDIRECTED after the initial emission with
	 * %WEBKIT_LOAD_STARTED and before %WEBKIT_LOAD_COMMITTED.
	 * When the page content starts arriving the signal is emitted with
	 * %WEBKIT_LOAD_COMMITTED event.
	 *
	 * You can handle this signal and use a switch to track any ongoing
	 * load operation.
	 *
	 * <informalexample><programlisting>
	 * static void web_view_load_changed (WebKitWebView  *web_view,
	 * WebKitLoadEvent load_event,
	 * gpointer        user_data)
	 * {
	 * switch (load_event) {
	 * case WEBKIT_LOAD_STARTED:
	 * /<!-- -->* New load, we have now a provisional URI *<!-- -->/
	 * provisional_uri = webkit_web_view_get_uri (web_view);
	 * /<!-- -->* Here we could start a spinner or update the
	 * <!-- -->* location bar with the provisional URI *<!-- -->/
	 * break;
	 * case WEBKIT_LOAD_REDIRECTED:
	 * redirected_uri = webkit_web_view_get_uri (web_view);
	 * break;
	 * case WEBKIT_LOAD_COMMITTED:
	 * /<!-- -->* The load is being performed. Current URI is
	 * <!-- -->* the final one and it won't change unless a new
	 * <!-- -->* load is requested or a navigation within the
	 * <!-- -->* same page is performed *<!-- -->/
	 * uri = webkit_web_view_get_uri (web_view);
	 * break;
	 * case WEBKIT_LOAD_FINISHED:
	 * /<!-- -->* Load finished, we can now stop the spinner *<!-- -->/
	 * break;
	 * }
	 * }
	 * </programlisting></informalexample>
	 *
	 * Params:
	 *     loadEvent = the #WebKitLoadEvent
	 */
	gulong addOnLoadChanged(void delegate(WebKitLoadEvent, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "load-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when an error occurs during a load operation.
	 * If the error happened when starting to load data for a page
	 * @load_event will be %WEBKIT_LOAD_STARTED. If it happened while
	 * loading a committed data source @load_event will be %WEBKIT_LOAD_COMMITTED.
	 * Since a load error causes the load operation to finish, the signal
	 * WebKitWebView::load-changed will always be emitted with
	 * %WEBKIT_LOAD_FINISHED event right after this one.
	 *
	 * By default, if the signal is not handled, a stock error page will be displayed.
	 * You need to handle the signal if you want to provide your own error page.
	 *
	 * Params:
	 *     loadEvent = the #WebKitLoadEvent of the load operation
	 *     failingUri = the URI that failed to load
	 *     error = the #GError that was triggered
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnLoadFailed(bool delegate(WebKitLoadEvent, string, ErrorG, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "load-failed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a TLS error occurs during a load operation.
	 * To allow an exception for this @certificate
	 * and the host of @failing_uri use webkit_web_context_allow_tls_certificate_for_host().
	 *
	 * To handle this signal asynchronously you should call g_object_ref() on @certificate
	 * and return %TRUE.
	 *
	 * If %FALSE is returned, #WebKitWebView::load-failed will be emitted. The load
	 * will finish regardless of the returned value.
	 *
	 * Params:
	 *     failingUri = the URI that failed to load
	 *     certificate = a #GTlsCertificate
	 *     errors = a #GTlsCertificateFlags with the verification status of @certificate
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 *
	 * Since: 2.6
	 */
	gulong addOnLoadFailedWithTlsErrors(bool delegate(string, TlsCertificate, GTlsCertificateFlags, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "load-failed-with-tls-errors", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the mouse cursor moves over an
	 * element such as a link, image or a media element. To determine
	 * what type of element the mouse cursor is over, a Hit Test is performed
	 * on the current mouse coordinates and the result is passed in the
	 * @hit_test_result argument. The @modifiers argument is a bitmask of
	 * #GdkModifierType flags indicating the state of modifier keys.
	 * The signal is emitted again when the mouse is moved out of the
	 * current element with a new @hit_test_result.
	 *
	 * Params:
	 *     hitTestResult = a #WebKitHitTestResult
	 *     modifiers = a bitmask of #GdkModifierType
	 */
	gulong addOnMouseTargetChanged(void delegate(HitTestResult, uint, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "mouse-target-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when WebKit is requesting the client to
	 * decide about a permission request, such as allowing the browser
	 * to switch to fullscreen mode, sharing its location or similar
	 * operations.
	 *
	 * A possible way to use this signal could be through a dialog
	 * allowing the user decide what to do with the request:
	 *
	 * <informalexample><programlisting>
	 * static gboolean permission_request_cb (WebKitWebView *web_view,
	 * WebKitPermissionRequest *request,
	 * GtkWindow *parent_window)
	 * {
	 * GtkWidget *dialog = gtk_message_dialog_new (parent_window,
	 * GTK_DIALOG_MODAL,
	 * GTK_MESSAGE_QUESTION,
	 * GTK_BUTTONS_YES_NO,
	 * "Allow Permission Request?");
	 * gtk_widget_show (dialog);
	 * gint result = gtk_dialog_run (GTK_DIALOG (dialog));
	 *
	 * switch (result) {
	 * case GTK_RESPONSE_YES:
	 * webkit_permission_request_allow (request);
	 * break;
	 * default:
	 * webkit_permission_request_deny (request);
	 * break;
	 * }
	 * gtk_widget_destroy (dialog);
	 *
	 * return TRUE;
	 * }
	 * </programlisting></informalexample>
	 *
	 * It is possible to handle permission requests asynchronously, by
	 * simply calling g_object_ref() on the @request argument and
	 * returning %TRUE to block the default signal handler.  If the
	 * last reference is removed on a #WebKitPermissionRequest and the
	 * request has not been handled, webkit_permission_request_deny()
	 * will be the default action.
	 *
	 * If the signal is not handled, the @request will be completed automatically
	 * by the specific #WebKitPermissionRequest that could allow or deny it. Check the
	 * documentation of classes implementing #WebKitPermissionRequest interface to know
	 * their default action.
	 *
	 * Params:
	 *     request = the #WebKitPermissionRequest
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnPermissionRequest(bool delegate(PermissionRequestIF, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "permission-request", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when printing is requested on @web_view, usually by a JavaScript call,
	 * before the print dialog is shown. This signal can be used to set the initial
	 * print settings and page setup of @print_operation to be used as default values in
	 * the print dialog. You can call webkit_print_operation_set_print_settings() and
	 * webkit_print_operation_set_page_setup() and then return %FALSE to propagate the
	 * event so that the print dialog is shown.
	 *
	 * You can connect to this signal and return %TRUE to cancel the print operation
	 * or implement your own print dialog.
	 *
	 * Params:
	 *     printOperation = the #WebKitPrintOperation that will handle the print request
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnPrint(bool delegate(PrintOperation, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "print", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after #WebKitWebView::create on the newly created #WebKitWebView
	 * when it should be displayed to the user. When this signal is emitted
	 * all the information about how the window should look, including
	 * size, position, whether the location, status and scrollbars
	 * should be displayed, is already set on the #WebKitWindowProperties
	 * of @web_view. See also webkit_web_view_get_window_properties().
	 */
	gulong addOnReadyToShow(void delegate(WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "ready-to-show", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a new resource is going to be loaded. The @request parameter
	 * contains the #WebKitURIRequest that will be sent to the server.
	 * You can monitor the load operation by connecting to the different signals
	 * of @resource.
	 *
	 * Params:
	 *     resource = a #WebKitWebResource
	 *     request = a #WebKitURIRequest
	 */
	gulong addOnResourceLoadStarted(void delegate(WebResource, URIRequest, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "resource-load-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted after #WebKitWebView::ready-to-show on the newly
	 * created #WebKitWebView when JavaScript code calls
	 * <function>window.showModalDialog</function>. The purpose of
	 * this signal is to allow the client application to prepare the
	 * new view to behave as modal. Once the signal is emitted a new
	 * main loop will be run to block user interaction in the parent
	 * #WebKitWebView until the new dialog is closed.
	 */
	gulong addOnRunAsModal(void delegate(WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "run-as-modal", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the user interacts with a &lt;input
	 * type='color' /&gt; HTML element, requesting from WebKit to show
	 * a dialog to select a color. To let the application know the details of
	 * the color chooser, as well as to allow the client application to either
	 * cancel the request or perform an actual color selection, the signal will
	 * pass an instance of the #WebKitColorChooserRequest in the @request
	 * argument.
	 *
	 * It is possible to handle this request asynchronously by increasing the
	 * reference count of the request.
	 *
	 * The default signal handler will asynchronously run a regular
	 * #GtkColorChooser for the user to interact with.
	 *
	 * Params:
	 *     request = a #WebKitColorChooserRequest
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 *
	 * Since: 2.8
	 */
	gulong addOnRunColorChooser(bool delegate(ColorChooserRequest, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "run-color-chooser", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the user interacts with a &lt;input
	 * type='file' /&gt; HTML element, requesting from WebKit to show
	 * a dialog to select one or more files to be uploaded. To let the
	 * application know the details of the file chooser, as well as to
	 * allow the client application to either cancel the request or
	 * perform an actual selection of files, the signal will pass an
	 * instance of the #WebKitFileChooserRequest in the @request
	 * argument.
	 *
	 * The default signal handler will asynchronously run a regular
	 * #GtkFileChooserDialog for the user to interact with.
	 *
	 * Params:
	 *     request = a #WebKitFileChooserRequest
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnRunFileChooser(bool delegate(FileChooserRequest, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "run-file-chooser", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when JavaScript code calls <function>window.alert</function>,
	 * <function>window.confirm</function> or <function>window.prompt</function>,
	 * or when <function>onbeforeunload</function> event is fired.
	 * The @dialog parameter should be used to build the dialog.
	 * If the signal is not handled a different dialog will be built and shown depending
	 * on the dialog type:
	 * <itemizedlist>
	 * <listitem><para>
	 * %WEBKIT_SCRIPT_DIALOG_ALERT: message dialog with a single Close button.
	 * </para></listitem>
	 * <listitem><para>
	 * %WEBKIT_SCRIPT_DIALOG_CONFIRM: message dialog with OK and Cancel buttons.
	 * </para></listitem>
	 * <listitem><para>
	 * %WEBKIT_SCRIPT_DIALOG_PROMPT: message dialog with OK and Cancel buttons and
	 * a text entry with the default text.
	 * </para></listitem>
	 * <listitem><para>
	 * %WEBKIT_SCRIPT_DIALOG_BEFORE_UNLOAD_CONFIRM: message dialog with Stay and Leave buttons.
	 * </para></listitem>
	 * </itemizedlist>
	 *
	 * It is possible to handle the script dialog request asynchronously, by simply
	 * caling webkit_script_dialog_ref() on the @dialog argument and calling
	 * webkit_script_dialog_close() when done.
	 * If the last reference is removed on a #WebKitScriptDialog and the dialog has not been
	 * closed, webkit_script_dialog_close() will be called.
	 *
	 * Params:
	 *     dialog = the #WebKitScriptDialog to show
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnScriptDialog(bool delegate(ScriptDialog, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "script-dialog", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a notification should be presented to the
	 * user. The @notification is kept alive until either: 1) the web page cancels it
	 * or 2) a navigation happens.
	 *
	 * The default handler will emit a notification using libnotify, if built with
	 * support for it.
	 *
	 * Params:
	 *     notification = a #WebKitNotification
	 *
	 * Returns: %TRUE to stop other handlers from being invoked. %FALSE otherwise.
	 *
	 * Since: 2.8
	 */
	gulong addOnShowNotification(bool delegate(Notification, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show-notification", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a select element in @web_view needs to display a
	 * dropdown menu. This signal can be used to show a custom menu, using @menu to get
	 * the details of all items that should be displayed. The area of the element in the
	 * #WebKitWebView is given as @rectangle parameter, it can be used to position the
	 * menu.
	 * To handle this signal asynchronously you should keep a ref of the @menu.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 *
	 * Since: 2.28
	 */
	gulong addOnShowOptionMenu(bool delegate(OptionMenu, Event, GdkRectangle*, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "show-option-menu", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a form is about to be submitted. The @request
	 * argument passed contains information about the text fields of the form. This
	 * is typically used to store login information that can be used later to
	 * pre-fill the form.
	 * The form will not be submitted until webkit_form_submission_request_submit() is called.
	 *
	 * It is possible to handle the form submission request asynchronously, by
	 * simply calling g_object_ref() on the @request argument and calling
	 * webkit_form_submission_request_submit() when done to continue with the form submission.
	 * If the last reference is removed on a #WebKitFormSubmissionRequest and the
	 * form has not been submitted, webkit_form_submission_request_submit() will be called.
	 *
	 * Params:
	 *     request = a #WebKitFormSubmissionRequest
	 */
	gulong addOnSubmitForm(void delegate(FormSubmissionRequest, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "submit-form", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a #WebKitUserMessage is received from the
	 * #WebKitWebPage corresponding to @web_view. You can reply to the message
	 * using webkit_user_message_send_reply().
	 *
	 * You can handle the user message asynchronously by calling g_object_ref() on
	 * @message and returning %TRUE. If the last reference of @message is removed
	 * and the message has not been replied to, the operation in the #WebKitWebPage will
	 * finish with error %WEBKIT_USER_MESSAGE_UNHANDLED_MESSAGE.
	 *
	 * Params:
	 *     message = the #WebKitUserMessage received
	 *
	 * Returns: %TRUE if the message was handled, or %FALSE otherwise.
	 *
	 * Since: 2.28
	 */
	gulong addOnUserMessageReceived(bool delegate(UserMessage, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "user-message-received", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the web process crashes.
	 *
	 * Deprecated: Use WebKitWebView::web-process-terminated instead.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnWebProcessCrashed(bool delegate(WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "web-process-crashed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when the web process terminates abnormally due
	 * to @reason.
	 *
	 * Params:
	 *     reason = the a #WebKitWebProcessTerminationReason
	 *
	 * Since: 2.20
	 */
	gulong addOnWebProcessTerminated(void delegate(WebKitWebProcessTerminationReason, WebView) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "web-process-terminated", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
