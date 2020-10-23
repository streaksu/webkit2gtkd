module webkit2.WebContext;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.TlsCertificate;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.AutomationSession;
private import webkit2.CookieManager;
private import webkit2.Download;
private import webkit2.FaviconDatabase;
private import webkit2.GeolocationManager;
private import webkit2.NetworkProxySettings;
private import webkit2.SecurityManager;
private import webkit2.SecurityOrigin;
private import webkit2.UserMessage;
private import webkit2.WebsiteDataManager;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The #WebKitWebContext manages all aspects common to all
 * #WebKitWebView<!-- -->s.
 * 
 * You can define the #WebKitCacheModel and #WebKitProcessModel with
 * webkit_web_context_set_cache_model() and
 * webkit_web_context_set_process_model(), depending on the needs of
 * your application. You can access the #WebKitSecurityManager to specify
 * the behaviour of your application regarding security using
 * webkit_web_context_get_security_manager().
 * 
 * It is also possible to change your preferred language or enable
 * spell checking, using webkit_web_context_set_preferred_languages(),
 * webkit_web_context_set_spell_checking_languages() and
 * webkit_web_context_set_spell_checking_enabled().
 * 
 * You can use webkit_web_context_register_uri_scheme() to register
 * custom URI schemes, and manage several other settings.
 * 
 * TLS certificate validation failure is now treated as a transport
 * error by default. To handle TLS failures differently, you can
 * connect to #WebKitWebView::load-failed-with-tls-errors.
 * Alternatively, you can use webkit_web_context_set_tls_errors_policy()
 * to set the policy %WEBKIT_TLS_ERRORS_POLICY_IGNORE; however, this is
 * not appropriate for Internet applications.
 */
public class WebContext : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebContext* webKitWebContext;

	/** Get the main Gtk struct */
	public WebKitWebContext* getWebContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebContext* webKitWebContext, bool ownedRef = false)
	{
		this.webKitWebContext = webKitWebContext;
		super(cast(GObject*)webKitWebContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_context_get_type();
	}

	/**
	 * Create a new #WebKitWebContext
	 *
	 * Returns: a newly created #WebKitWebContext
	 *
	 * Since: 2.8
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_web_context_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitWebContext*) __p, true);
	}

	/**
	 * Create a new ephemeral #WebKitWebContext. An ephemeral #WebKitWebContext is a context
	 * created with an ephemeral #WebKitWebsiteDataManager. This is just a convenient method
	 * to create ephemeral contexts without having to create your own #WebKitWebsiteDataManager.
	 * All #WebKitWebView<!-- -->s associated with this context will also be ephemeral. Websites will
	 * not store any data in the client storage.
	 * This is normally used to implement private instances.
	 *
	 * Returns: a new ephemeral #WebKitWebContext.
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public static WebContext newEphemeral()
	{
		return new WebContext(webkit_web_context_new_ephemeral(), true);
	}

	/**
	 * Create a new #WebKitWebContext with a #WebKitWebsiteDataManager.
	 *
	 * Params:
	 *     manager = a #WebKitWebsiteDataManager
	 *
	 * Returns: a newly created #WebKitWebContext
	 *
	 * Since: 2.10
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(WebsiteDataManager manager)
	{
		auto __p = webkit_web_context_new_with_website_data_manager((manager is null) ? null : manager.getWebsiteDataManagerStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_website_data_manager");
		}

		this(cast(WebKitWebContext*) __p, true);
	}

	/**
	 * Gets the default web context
	 *
	 * Returns: a #WebKitWebContext
	 */
	public static WebContext getDefault()
	{
		auto __p = webkit_web_context_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebContext)(cast(WebKitWebContext*) __p);
	}

	/**
	 * Adds a path to be mounted in the sandbox. @path must exist before any web process
	 * has been created otherwise it will be silently ignored. It is a fatal error to
	 * add paths after a web process has been spawned.
	 *
	 * Paths in directories such as `/sys`, `/proc`, and `/dev` or all of `/`
	 * are not valid.
	 *
	 * See also webkit_web_context_set_sandbox_enabled()
	 *
	 * Params:
	 *     path = an absolute path to mount in the sandbox
	 *     readOnly = if %TRUE the path will be read-only
	 *
	 * Since: 2.26
	 */
	public void addPathToSandbox(string path, bool readOnly)
	{
		webkit_web_context_add_path_to_sandbox(webKitWebContext, Str.toStringz(path), readOnly);
	}

	/**
	 * Ignore further TLS errors on the @host for the certificate present in @info.
	 *
	 * Params:
	 *     certificate = a #GTlsCertificate
	 *     host = the host for which a certificate is to be allowed
	 *
	 * Since: 2.6
	 */
	public void allowTlsCertificateForHost(TlsCertificate certificate, string host)
	{
		webkit_web_context_allow_tls_certificate_for_host(webKitWebContext, (certificate is null) ? null : certificate.getTlsCertificateStruct(), Str.toStringz(host));
	}

	/**
	 * Clears all resources currently cached.
	 * See also webkit_web_context_set_cache_model().
	 */
	public void clearCache()
	{
		webkit_web_context_clear_cache(webKitWebContext);
	}

	/**
	 * Requests downloading of the specified URI string. The download operation
	 * will not be associated to any #WebKitWebView, if you are interested in
	 * starting a download from a particular #WebKitWebView use
	 * webkit_web_view_download_uri() instead.
	 *
	 * Params:
	 *     uri = the URI to download
	 *
	 * Returns: a new #WebKitDownload representing
	 *     the download operation.
	 */
	public Download downloadUri(string uri)
	{
		auto __p = webkit_web_context_download_uri(webKitWebContext, Str.toStringz(uri));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Download)(cast(WebKitDownload*) __p, true);
	}

	/**
	 * Returns the current cache model. For more information about this
	 * value check the documentation of the function
	 * webkit_web_context_set_cache_model().
	 *
	 * Returns: the current #WebKitCacheModel
	 */
	public WebKitCacheModel getCacheModel()
	{
		return webkit_web_context_get_cache_model(webKitWebContext);
	}

	/**
	 * Get the #WebKitCookieManager of the @context's #WebKitWebsiteDataManager.
	 *
	 * Returns: the #WebKitCookieManager of @context.
	 */
	public CookieManager getCookieManager()
	{
		auto __p = webkit_web_context_get_cookie_manager(webKitWebContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CookieManager)(cast(WebKitCookieManager*) __p);
	}

	/**
	 * Get the #WebKitFaviconDatabase associated with @context.
	 *
	 * To initialize the database you need to call
	 * webkit_web_context_set_favicon_database_directory().
	 *
	 * Returns: the #WebKitFaviconDatabase of @context.
	 */
	public FaviconDatabase getFaviconDatabase()
	{
		auto __p = webkit_web_context_get_favicon_database(webKitWebContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(FaviconDatabase)(cast(WebKitFaviconDatabase*) __p);
	}

	/**
	 * Get the directory path being used to store the favicons database
	 * for @context, or %NULL if
	 * webkit_web_context_set_favicon_database_directory() hasn't been
	 * called yet.
	 *
	 * This function will always return the same path after having called
	 * webkit_web_context_set_favicon_database_directory() for the first
	 * time.
	 *
	 * Returns: the path of the directory of the favicons
	 *     database associated with @context, or %NULL.
	 */
	public string getFaviconDatabaseDirectory()
	{
		return Str.toString(webkit_web_context_get_favicon_database_directory(webKitWebContext));
	}

	/**
	 * Get the #WebKitGeolocationManager of @context.
	 *
	 * Returns: the #WebKitGeolocationManager of @context.
	 *
	 * Since: 2.26
	 */
	public GeolocationManager getGeolocationManager()
	{
		auto __p = webkit_web_context_get_geolocation_manager(webKitWebContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GeolocationManager)(cast(WebKitGeolocationManager*) __p);
	}

	/**
	 * Asynchronously get the list of installed plugins.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_web_context_get_plugins_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void getPlugins(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_web_context_get_plugins(webKitWebContext, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_web_context_get_plugins.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #GList of #WebKitPlugin. You must free the #GList with
	 *     g_list_free() and unref the #WebKitPlugin<!-- -->s with g_object_unref() when you're done with them.
	 *
	 * Throws: GException on failure.
	 */
	public ListG getPluginsFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_web_context_get_plugins_finish(webKitWebContext, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Returns the current process model. For more information about this value
	 * see webkit_web_context_set_process_model().
	 *
	 * Returns: the current #WebKitProcessModel
	 *
	 * Since: 2.4
	 */
	public WebKitProcessModel getProcessModel()
	{
		return webkit_web_context_get_process_model(webKitWebContext);
	}

	/**
	 * Get whether sandboxing is currently enabled.
	 *
	 * Returns: %TRUE if sandboxing is enabled, or %FALSE otherwise.
	 *
	 * Since: 2.26
	 */
	public bool getSandboxEnabled()
	{
		return webkit_web_context_get_sandbox_enabled(webKitWebContext) != 0;
	}

	/**
	 * Get the #WebKitSecurityManager of @context.
	 *
	 * Returns: the #WebKitSecurityManager of @context.
	 */
	public SecurityManager getSecurityManager()
	{
		auto __p = webkit_web_context_get_security_manager(webKitWebContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(SecurityManager)(cast(WebKitSecurityManager*) __p);
	}

	/**
	 * Get whether spell checking feature is currently enabled.
	 *
	 * Returns: %TRUE If spell checking is enabled, or %FALSE otherwise.
	 */
	public bool getSpellCheckingEnabled()
	{
		return webkit_web_context_get_spell_checking_enabled(webKitWebContext) != 0;
	}

	/**
	 * Get the the list of spell checking languages associated with
	 * @context, or %NULL if no languages have been previously set.
	 *
	 * See webkit_web_context_set_spell_checking_languages() for more
	 * details on the format of the languages in the list.
	 *
	 * Returns: A %NULL-terminated
	 *     array of languages if available, or %NULL otherwise.
	 */
	public string[] getSpellCheckingLanguages()
	{
		return Str.toStringArray(webkit_web_context_get_spell_checking_languages(webKitWebContext));
	}

	/**
	 * Get the TLS errors policy of @context
	 *
	 * Returns: a #WebKitTLSErrorsPolicy
	 */
	public WebKitTLSErrorsPolicy getTlsErrorsPolicy()
	{
		return webkit_web_context_get_tls_errors_policy(webKitWebContext);
	}

	/**
	 * Get the #WebKitWebContext:use-system-appearance-for-scrollbars property.
	 *
	 * Returns: %TRUE if scrollbars are rendering using the system appearance, or %FALSE otherwise
	 *
	 * Since: 2.30
	 */
	public bool getUseSystemAppearanceForScrollbars()
	{
		return webkit_web_context_get_use_system_appearance_for_scrollbars(webKitWebContext) != 0;
	}

	/**
	 * Gets the maximum number of web processes that can be created at the same time for the @context.
	 *
	 * This function is now deprecated and always returns 0 (no limit). See also webkit_web_context_set_web_process_count_limit().
	 *
	 * Returns: the maximum limit of web processes, or 0 if there isn't a limit.
	 *
	 * Since: 2.10
	 */
	public uint getWebProcessCountLimit()
	{
		return webkit_web_context_get_web_process_count_limit(webKitWebContext);
	}

	/**
	 * Get the #WebKitWebsiteDataManager of @context.
	 *
	 * Returns: a #WebKitWebsiteDataManager
	 *
	 * Since: 2.10
	 */
	public WebsiteDataManager getWebsiteDataManager()
	{
		auto __p = webkit_web_context_get_website_data_manager(webKitWebContext);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebsiteDataManager)(cast(WebKitWebsiteDataManager*) __p);
	}

	/**
	 * Sets initial desktop notification permissions for the @context.
	 * @allowed_origins and @disallowed_origins must each be #GList of
	 * #WebKitSecurityOrigin objects representing origins that will,
	 * respectively, either always or never have permission to show desktop
	 * notifications. No #WebKitNotificationPermissionRequest will ever be
	 * generated for any of the security origins represented in
	 * @allowed_origins or @disallowed_origins. This function is necessary
	 * because some webpages proactively check whether they have permission
	 * to display notifications without ever creating a permission request.
	 *
	 * This function only affects web processes that have not already been
	 * created. The best time to call it is when handling
	 * #WebKitWebContext::initialize-notification-permissions so as to
	 * ensure that new web processes receive the most recent set of
	 * permissions.
	 *
	 * Params:
	 *     allowedOrigins = a #GList of security origins
	 *     disallowedOrigins = a #GList of security origins
	 *
	 * Since: 2.16
	 */
	public void initializeNotificationPermissions(ListG allowedOrigins, ListG disallowedOrigins)
	{
		webkit_web_context_initialize_notification_permissions(webKitWebContext, (allowedOrigins is null) ? null : allowedOrigins.getListGStruct(), (disallowedOrigins is null) ? null : disallowedOrigins.getListGStruct());
	}

	/**
	 * Get whether automation is allowed in @context.
	 * See also webkit_web_context_set_automation_allowed().
	 *
	 * Returns: %TRUE if automation is allowed or %FALSE otherwise.
	 *
	 * Since: 2.18
	 */
	public bool isAutomationAllowed()
	{
		return webkit_web_context_is_automation_allowed(webKitWebContext) != 0;
	}

	/**
	 * Get whether a #WebKitWebContext is ephemeral.
	 *
	 * Returns: %TRUE if @context is ephemeral or %FALSE otherwise.
	 *
	 * Since: 2.16
	 */
	public bool isEphemeral()
	{
		return webkit_web_context_is_ephemeral(webKitWebContext) != 0;
	}

	/**
	 * Resolve the domain name of the given @hostname in advance, so that if a URI
	 * of @hostname is requested the load will be performed more quickly.
	 *
	 * Params:
	 *     hostname = a hostname to be resolved
	 */
	public void prefetchDns(string hostname)
	{
		webkit_web_context_prefetch_dns(webKitWebContext, Str.toStringz(hostname));
	}

	/**
	 * Register @scheme in @context, so that when an URI request with @scheme is made in the
	 * #WebKitWebContext, the #WebKitURISchemeRequestCallback registered will be called with a
	 * #WebKitURISchemeRequest.
	 * It is possible to handle URI scheme requests asynchronously, by calling g_object_ref() on the
	 * #WebKitURISchemeRequest and calling webkit_uri_scheme_request_finish() later
	 * when the data of the request is available or
	 * webkit_uri_scheme_request_finish_error() in case of error.
	 *
	 * <informalexample><programlisting>
	 * static void
	 * about_uri_scheme_request_cb (WebKitURISchemeRequest *request,
	 * gpointer                user_data)
	 * {
	 * GInputStream *stream;
	 * gsize         stream_length;
	 * const gchar  *path;
	 *
	 * path = webkit_uri_scheme_request_get_path (request);
	 * if (!g_strcmp0 (path, "plugins")) {
	 * /<!-- -->* Create a GInputStream with the contents of plugins about page, and set its length to stream_length *<!-- -->/
	 * } else if (!g_strcmp0 (path, "memory")) {
	 * /<!-- -->* Create a GInputStream with the contents of memory about page, and set its length to stream_length *<!-- -->/
	 * } else if (!g_strcmp0 (path, "applications")) {
	 * /<!-- -->* Create a GInputStream with the contents of applications about page, and set its length to stream_length *<!-- -->/
	 * } else if (!g_strcmp0 (path, "example")) {
	 * gchar *contents;
	 *
	 * contents = g_strdup_printf ("&lt;html&gt;&lt;body&gt;&lt;p&gt;Example about page&lt;/p&gt;&lt;/body&gt;&lt;/html&gt;");
	 * stream_length = strlen (contents);
	 * stream = g_memory_input_stream_new_from_data (contents, stream_length, g_free);
	 * } else {
	 * GError *error;
	 *
	 * error = g_error_new (ABOUT_HANDLER_ERROR, ABOUT_HANDLER_ERROR_INVALID, "Invalid about:%s page.", path);
	 * webkit_uri_scheme_request_finish_error (request, error);
	 * g_error_free (error);
	 * return;
	 * }
	 * webkit_uri_scheme_request_finish (request, stream, stream_length, "text/html");
	 * g_object_unref (stream);
	 * }
	 * </programlisting></informalexample>
	 *
	 * Params:
	 *     scheme = the network scheme to register
	 *     callback = a #WebKitURISchemeRequestCallback
	 *     userData = data to pass to callback function
	 *     userDataDestroyFunc = destroy notify for @user_data
	 */
	public void registerUriScheme(string scheme, WebKitURISchemeRequestCallback callback, void* userData, GDestroyNotify userDataDestroyFunc)
	{
		webkit_web_context_register_uri_scheme(webKitWebContext, Str.toStringz(scheme), callback, userData, userDataDestroyFunc);
	}

	/**
	 * Send @message to all #WebKitWebExtension<!-- -->s associated to @context.
	 * If @message is floating, it's consumed.
	 *
	 * Params:
	 *     message = a #WebKitUserMessage
	 *
	 * Since: 2.28
	 */
	public void sendMessageToAllExtensions(UserMessage message)
	{
		webkit_web_context_send_message_to_all_extensions(webKitWebContext, (message is null) ? null : message.getUserMessageStruct());
	}

	/**
	 * Set an additional directory where WebKit will look for plugins.
	 *
	 * Params:
	 *     directory = the directory to add
	 */
	public void setAdditionalPluginsDirectory(string directory)
	{
		webkit_web_context_set_additional_plugins_directory(webKitWebContext, Str.toStringz(directory));
	}

	/**
	 * Set whether automation is allowed in @context. When automation is enabled the browser could
	 * be controlled by another process by requesting an automation session. When a new automation
	 * session is requested the signal #WebKitWebContext::automation-started is emitted.
	 * Automation is disabled by default, so you need to explicitly call this method passing %TRUE
	 * to enable it.
	 *
	 * Note that only one #WebKitWebContext can have automation enabled, so this will do nothing
	 * if there's another #WebKitWebContext with automation already enabled.
	 *
	 * Params:
	 *     allowed = value to set
	 *
	 * Since: 2.18
	 */
	public void setAutomationAllowed(bool allowed)
	{
		webkit_web_context_set_automation_allowed(webKitWebContext, allowed);
	}

	/**
	 * Specifies a usage model for WebViews, which WebKit will use to
	 * determine its caching behavior. All web views follow the cache
	 * model. This cache model determines the RAM and disk space to use
	 * for caching previously viewed content .
	 *
	 * Research indicates that users tend to browse within clusters of
	 * documents that hold resources in common, and to revisit previously
	 * visited documents. WebKit and the frameworks below it include
	 * built-in caches that take advantage of these patterns,
	 * substantially improving document load speed in browsing
	 * situations. The WebKit cache model controls the behaviors of all of
	 * these caches, including various WebCore caches.
	 *
	 * Browsers can improve document load speed substantially by
	 * specifying %WEBKIT_CACHE_MODEL_WEB_BROWSER. Applications without a
	 * browsing interface can reduce memory usage substantially by
	 * specifying %WEBKIT_CACHE_MODEL_DOCUMENT_VIEWER. The default value is
	 * %WEBKIT_CACHE_MODEL_WEB_BROWSER.
	 *
	 * Params:
	 *     cacheModel = a #WebKitCacheModel
	 */
	public void setCacheModel(WebKitCacheModel cacheModel)
	{
		webkit_web_context_set_cache_model(webKitWebContext, cacheModel);
	}

	/**
	 * Set the directory where disk cache files will be stored
	 * This method must be called before loading anything in this context, otherwise
	 * it will not have any effect.
	 *
	 * Note that this method overrides the directory set in the #WebKitWebsiteDataManager,
	 * but it doesn't change the value returned by webkit_website_data_manager_get_disk_cache_directory()
	 * since the #WebKitWebsiteDataManager is immutable.
	 *
	 * Deprecated: Use webkit_web_context_new_with_website_data_manager() instead.
	 *
	 * Params:
	 *     directory = the directory to set
	 */
	public void setDiskCacheDirectory(string directory)
	{
		webkit_web_context_set_disk_cache_directory(webKitWebContext, Str.toStringz(directory));
	}

	/**
	 * Set the directory path to be used to store the favicons database
	 * for @context on disk. Passing %NULL as @path means using the
	 * default directory for the platform (see g_get_user_cache_dir()).
	 *
	 * Calling this method also means enabling the favicons database for
	 * its use from the applications, so that's why it's expected to be
	 * called only once. Further calls for the same instance of
	 * #WebKitWebContext won't cause any effect.
	 *
	 * Params:
	 *     path = an absolute path to the icon database
	 *         directory or %NULL to use the defaults
	 */
	public void setFaviconDatabaseDirectory(string path)
	{
		webkit_web_context_set_favicon_database_directory(webKitWebContext, Str.toStringz(path));
	}

	/**
	 * Set the network proxy settings to be used by connections started in @context.
	 * By default %WEBKIT_NETWORK_PROXY_MODE_DEFAULT is used, which means that the
	 * system settings will be used (g_proxy_resolver_get_default()).
	 * If you want to override the system default settings, you can either use
	 * %WEBKIT_NETWORK_PROXY_MODE_NO_PROXY to make sure no proxies are used at all,
	 * or %WEBKIT_NETWORK_PROXY_MODE_CUSTOM to provide your own proxy settings.
	 * When @proxy_mode is %WEBKIT_NETWORK_PROXY_MODE_CUSTOM @proxy_settings must be
	 * a valid #WebKitNetworkProxySettings; otherwise, @proxy_settings must be %NULL.
	 *
	 * Params:
	 *     proxyMode = a #WebKitNetworkProxyMode
	 *     proxySettings = a #WebKitNetworkProxySettings, or %NULL
	 *
	 * Since: 2.16
	 */
	public void setNetworkProxySettings(WebKitNetworkProxyMode proxyMode, NetworkProxySettings proxySettings)
	{
		webkit_web_context_set_network_proxy_settings(webKitWebContext, proxyMode, (proxySettings is null) ? null : proxySettings.getNetworkProxySettingsStruct());
	}

	/**
	 * Set the list of preferred languages, sorted from most desirable
	 * to least desirable. The list will be used to build the "Accept-Language"
	 * header that will be included in the network requests started by
	 * the #WebKitWebContext.
	 *
	 * Params:
	 *     languages = a %NULL-terminated list of language identifiers
	 */
	public void setPreferredLanguages(string[] languages)
	{
		webkit_web_context_set_preferred_languages(webKitWebContext, Str.toStringzArray(languages));
	}

	/**
	 * Specifies a process model for WebViews, which WebKit will use to
	 * determine how auxiliary processes are handled.
	 *
	 * %WEBKIT_PROCESS_MODEL_MULTIPLE_SECONDARY_PROCESSES will use
	 * one process per view most of the time, while still allowing for web
	 * views to share a process when needed (for example when different
	 * views interact with each other). Using this model, when a process
	 * hangs or crashes, only the WebViews using it stop working, while
	 * the rest of the WebViews in the application will still function
	 * normally.
	 *
	 * %WEBKIT_PROCESS_MODEL_SHARED_SECONDARY_PROCESS is deprecated since 2.26,
	 * using it has no effect for security reasons.
	 *
	 * This method **must be called before any web process has been created**,
	 * as early as possible in your application. Calling it later will make
	 * your application crash.
	 *
	 * Params:
	 *     processModel = a #WebKitProcessModel
	 *
	 * Since: 2.4
	 */
	public void setProcessModel(WebKitProcessModel processModel)
	{
		webkit_web_context_set_process_model(webKitWebContext, processModel);
	}

	/**
	 * Set whether WebKit subprocesses will be sandboxed, limiting access to the system.
	 *
	 * This method **must be called before any web process has been created**,
	 * as early as possible in your application. Calling it later is a fatal error.
	 *
	 * This is only implemented on Linux and is a no-op otherwise.
	 *
	 * Params:
	 *     enabled = if %TRUE enable sandboxing
	 *
	 * Since: 2.26
	 */
	public void setSandboxEnabled(bool enabled)
	{
		webkit_web_context_set_sandbox_enabled(webKitWebContext, enabled);
	}

	/**
	 * Enable or disable the spell checking feature.
	 *
	 * Params:
	 *     enabled = Value to be set
	 */
	public void setSpellCheckingEnabled(bool enabled)
	{
		webkit_web_context_set_spell_checking_enabled(webKitWebContext, enabled);
	}

	/**
	 * Set the list of spell checking languages to be used for spell
	 * checking.
	 *
	 * The locale string typically is in the form lang_COUNTRY, where lang
	 * is an ISO-639 language code, and COUNTRY is an ISO-3166 country code.
	 * For instance, sv_FI for Swedish as written in Finland or pt_BR
	 * for Portuguese as written in Brazil.
	 *
	 * You need to call this function with a valid list of languages at
	 * least once in order to properly enable the spell checking feature
	 * in WebKit.
	 *
	 * Params:
	 *     languages = a %NULL-terminated list of spell checking languages
	 */
	public void setSpellCheckingLanguages(string[] languages)
	{
		webkit_web_context_set_spell_checking_languages(webKitWebContext, Str.toStringzArray(languages));
	}

	/**
	 * Set the TLS errors policy of @context as @policy
	 *
	 * Params:
	 *     policy = a #WebKitTLSErrorsPolicy
	 */
	public void setTlsErrorsPolicy(WebKitTLSErrorsPolicy policy)
	{
		webkit_web_context_set_tls_errors_policy(webKitWebContext, policy);
	}

	/**
	 * Set the #WebKitWebContext:use-system-appearance-for-scrollbars property.
	 *
	 * Params:
	 *     enabled = value to set
	 *
	 * Since: 2.30
	 */
	public void setUseSystemAppearanceForScrollbars(bool enabled)
	{
		webkit_web_context_set_use_system_appearance_for_scrollbars(webKitWebContext, enabled);
	}

	/**
	 * Set the directory where WebKit will look for Web Extensions.
	 * This method must be called before loading anything in this context,
	 * otherwise it will not have any effect. You can connect to
	 * #WebKitWebContext::initialize-web-extensions to call this method
	 * before anything is loaded.
	 *
	 * Params:
	 *     directory = the directory to add
	 */
	public void setWebExtensionsDirectory(string directory)
	{
		webkit_web_context_set_web_extensions_directory(webKitWebContext, Str.toStringz(directory));
	}

	/**
	 * Set user data to be passed to Web Extensions on initialization.
	 * The data will be passed to the
	 * #WebKitWebExtensionInitializeWithUserDataFunction.
	 * This method must be called before loading anything in this context,
	 * otherwise it will not have any effect. You can connect to
	 * #WebKitWebContext::initialize-web-extensions to call this method
	 * before anything is loaded.
	 *
	 * Params:
	 *     userData = a #GVariant
	 *
	 * Since: 2.4
	 */
	public void setWebExtensionsInitializationUserData(Variant userData)
	{
		webkit_web_context_set_web_extensions_initialization_user_data(webKitWebContext, (userData is null) ? null : userData.getVariantStruct());
	}

	/**
	 * Sets the maximum number of web processes that can be created at the same time for the @context.
	 * The default value is 0 and means no limit.
	 *
	 * This function is now deprecated and does nothing for security reasons.
	 *
	 * Params:
	 *     limit = the maximum number of web processes
	 *
	 * Since: 2.10
	 */
	public void setWebProcessCountLimit(uint limit)
	{
		webkit_web_context_set_web_process_count_limit(webKitWebContext, limit);
	}

	/**
	 * This signal is emitted when a new automation request is made.
	 * Note that it will never be emitted if automation is not enabled in @context,
	 * see webkit_web_context_set_automation_allowed() for more details.
	 *
	 * Params:
	 *     session = the #WebKitAutomationSession associated with this event
	 *
	 * Since: 2.18
	 */
	gulong addOnAutomationStarted(void delegate(AutomationSession, WebContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "automation-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a new download request is made.
	 *
	 * Params:
	 *     download = the #WebKitDownload associated with this event
	 */
	gulong addOnDownloadStarted(void delegate(Download, WebContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "download-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a #WebKitWebContext needs to set
	 * initial notification permissions for a web process. It is emitted
	 * when a new web process is about to be launched, and signals the
	 * most appropriate moment to use
	 * webkit_web_context_initialize_notification_permissions(). If no
	 * notification permissions have changed since the last time this
	 * signal was emitted, then there is no need to call
	 * webkit_web_context_initialize_notification_permissions() again.
	 *
	 * Since: 2.16
	 */
	gulong addOnInitializeNotificationPermissions(void delegate(WebContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "initialize-notification-permissions", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a new web process is about to be
	 * launched. It signals the most appropriate moment to use
	 * webkit_web_context_set_web_extensions_initialization_user_data()
	 * and webkit_web_context_set_web_extensions_directory().
	 *
	 * Since: 2.4
	 */
	gulong addOnInitializeWebExtensions(void delegate(WebContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "initialize-web-extensions", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when a #WebKitUserMessage is received from a
	 * #WebKitWebExtension. You can reply to the message using
	 * webkit_user_message_send_reply().
	 *
	 * You can handle the user message asynchronously by calling g_object_ref() on
	 * @message and returning %TRUE.
	 *
	 * Params:
	 *     message = the #WebKitUserMessage received
	 *
	 * Returns: %TRUE if the message was handled, or %FALSE otherwise.
	 *
	 * Since: 2.28
	 */
	gulong addOnUserMessageReceived(bool delegate(UserMessage, WebContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "user-message-received", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
