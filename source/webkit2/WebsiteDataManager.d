module webkit2.WebsiteDataManager;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.CookieManager;
private import webkit2.WebsiteData;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitWebsiteDataManager allows you to manage the data that websites
 * can store in the client file system like databases or caches.
 * You can use WebKitWebsiteDataManager to configure the local directories
 * where the Website data will be stored, by creating a new manager with
 * webkit_website_data_manager_new() passing the values you want to set.
 * You can set all the possible configuration values or only some of them,
 * a default value will be used automatically for the configuration options
 * not provided. #WebKitWebsiteDataManager:base-data-directory and
 * #WebKitWebsiteDataManager:base-cache-directory are two special properties
 * that can be used to set a common base directory for all Website data and
 * caches. It's possible to provide both, a base directory and a specific value,
 * but in that case, the specific value takes precedence over the base directory.
 * The newly created WebKitWebsiteDataManager must be passed as a construct property
 * to a #WebKitWebContext, you can use webkit_web_context_new_with_website_data_manager()
 * to create a new #WebKitWebContext with a WebKitWebsiteDataManager.
 * In case you don't want to set any specific configuration, you don't need to create
 * a WebKitWebsiteDataManager, the #WebKitWebContext will create a WebKitWebsiteDataManager
 * with the default configuration. To get the WebKitWebsiteDataManager of a #WebKitWebContext
 * you can use webkit_web_context_get_website_data_manager().
 * 
 * A WebKitWebsiteDataManager can also be ephemeral and then all the directories configuration
 * is not needed because website data will never persist. You can create an ephemeral WebKitWebsiteDataManager
 * with webkit_website_data_manager_new_ephemeral(). Then you can pass an ephemeral WebKitWebsiteDataManager to
 * a #WebKitWebContext to make it ephemeral or use webkit_web_context_new_ephemeral() and the WebKitWebsiteDataManager
 * will be automatically created by the #WebKitWebContext.
 * 
 * WebKitWebsiteDataManager can also be used to fetch websites data, remove data
 * stored by particular websites, or clear data for all websites modified since a given
 * period of time.
 *
 * Since: 2.10
 */
public class WebsiteDataManager : ObjectG
{
	/** the main Gtk struct */
	protected WebKitWebsiteDataManager* webKitWebsiteDataManager;

	/** Get the main Gtk struct */
	public WebKitWebsiteDataManager* getWebsiteDataManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebsiteDataManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebsiteDataManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebsiteDataManager* webKitWebsiteDataManager, bool ownedRef = false)
	{
		this.webKitWebsiteDataManager = webKitWebsiteDataManager;
		super(cast(GObject*)webKitWebsiteDataManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_website_data_manager_get_type();
	}

	/**
	 * Creates an ephemeral #WebKitWebsiteDataManager. See #WebKitWebsiteDataManager:is-ephemeral for more details.
	 *
	 * Returns: a new ephemeral #WebKitWebsiteDataManager.
	 *
	 * Since: 2.16
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_website_data_manager_new_ephemeral();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_ephemeral");
		}

		this(cast(WebKitWebsiteDataManager*) __p, true);
	}

	/**
	 * Asynchronously clear the website data of the given @types modified in the past @timespan.
	 * If @timespan is 0, all website data will be removed.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_website_data_manager_clear_finish() to get the result of the operation.
	 *
	 * Due to implementation limitations, this function does not currently delete
	 * any stored cookies if @timespan is nonzero. This behavior may change in the
	 * future.
	 *
	 * Params:
	 *     types = #WebKitWebsiteDataTypes
	 *     timespan = a #GTimeSpan
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.16
	 */
	public void clear(WebKitWebsiteDataTypes types, GTimeSpan timespan, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_website_data_manager_clear(webKitWebsiteDataManager, types, timespan, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_website_data_manager_clear()
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if website data was successfully cleared, or %FALSE otherwise.
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public bool clearFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_website_data_manager_clear_finish(webKitWebsiteDataManager, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously get the list of #WebKitWebsiteData for the given @types.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_website_data_manager_fetch_finish() to get the result of the operation.
	 *
	 * Params:
	 *     types = #WebKitWebsiteDataTypes
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.16
	 */
	public void fetch(WebKitWebsiteDataTypes types, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_website_data_manager_fetch(webKitWebsiteDataManager, types, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_website_data_manager_fetch().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #GList of #WebKitWebsiteData. You must free the #GList with
	 *     g_list_free() and unref the #WebKitWebsiteData<!-- -->s with webkit_website_data_unref() when you're done with them.
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public ListG fetchFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_website_data_manager_fetch_finish(webKitWebsiteDataManager, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * Get the #WebKitWebsiteDataManager:base-cache-directory property.
	 *
	 * Returns: the base directory for Website cache, or %NULL if
	 *     #WebKitWebsiteDataManager:base-cache-directory was not provided or @manager is ephemeral.
	 *
	 * Since: 2.10
	 */
	public string getBaseCacheDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_base_cache_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitWebsiteDataManager:base-data-directory property.
	 *
	 * Returns: the base directory for Website data, or %NULL if
	 *     #WebKitWebsiteDataManager:base-data-directory was not provided or @manager is ephemeral.
	 *
	 * Since: 2.10
	 */
	public string getBaseDataDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_base_data_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitCookieManager of @manager.
	 *
	 * Returns: a #WebKitCookieManager
	 *
	 * Since: 2.16
	 */
	public CookieManager getCookieManager()
	{
		auto __p = webkit_website_data_manager_get_cookie_manager(webKitWebsiteDataManager);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(CookieManager)(cast(WebKitCookieManager*) __p);
	}

	/**
	 * Get the #WebKitWebsiteDataManager:disk-cache-directory property.
	 *
	 * Returns: the directory where HTTP disk cache is stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.10
	 */
	public string getDiskCacheDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_disk_cache_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitWebsiteDataManager:dom-cache-directory property.
	 *
	 * Returns: the directory where DOM cache is stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.30
	 */
	public string getDomCacheDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_dom_cache_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitWebsiteDataManager:hsts-cache-directory property.
	 *
	 * Returns: the directory where the HSTS cache is stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.26
	 */
	public string getHstsCacheDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_hsts_cache_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitWebsiteDataManager:indexeddb-directory property.
	 *
	 * Returns: the directory where IndexedDB databases are stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.10
	 */
	public string getIndexeddbDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_indexeddb_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitWebsiteDataManager:itp-directory property.
	 *
	 * Returns: the directory where Intelligent Tracking Prevention data is stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.30
	 */
	public string getItpDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_itp_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get whether Intelligent Tracking Prevention (ITP) is enabled or not.
	 *
	 * Returns: %TRUE if ITP is enabled, or %FALSE otherwise.
	 *
	 * Since: 2.30
	 */
	public bool getItpEnabled()
	{
		return webkit_website_data_manager_get_itp_enabled(webKitWebsiteDataManager) != 0;
	}

	/**
	 * Asynchronously get the list of #WebKitITPThirdParty seen for @manager. Every #WebKitITPThirdParty
	 * contains the list of #WebKitITPFirstParty under which it has been seen.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_website_data_manager_get_itp_summary_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.30
	 */
	public void getItpSummary(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_website_data_manager_get_itp_summary(webKitWebsiteDataManager, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_website_data_manager_get_itp_summary().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #GList of #WebKitITPThirdParty.
	 *     You must free the #GList with g_list_free() and unref the #WebKitITPThirdParty<!-- -->s with
	 *     webkit_itp_third_party_unref() when you're done with them.
	 *
	 * Since: 2.30
	 *
	 * Throws: GException on failure.
	 */
	public ListG getItpSummaryFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_website_data_manager_get_itp_summary_finish(webKitWebsiteDataManager, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * Get the #WebKitWebsiteDataManager:local-storage-directory property.
	 *
	 * Returns: the directory where local storage data is stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.10
	 */
	public string getLocalStorageDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_local_storage_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitWebsiteDataManager:offline-application-cache-directory property.
	 *
	 * Returns: the directory where offline web application cache is stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.10
	 */
	public string getOfflineApplicationCacheDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_offline_application_cache_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get whether persistent credential storage is enabled or not.
	 * See also webkit_website_data_manager_set_persistent_credential_storage_enabled().
	 *
	 * Returns: %TRUE if persistent credential storage is enabled, or %FALSE otherwise.
	 *
	 * Since: 2.30
	 */
	public bool getPersistentCredentialStorageEnabled()
	{
		return webkit_website_data_manager_get_persistent_credential_storage_enabled(webKitWebsiteDataManager) != 0;
	}

	/**
	 * Get the #WebKitWebsiteDataManager:service-worker-registrations-directory property.
	 *
	 * Returns: the directory where service worker registrations are stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.30
	 */
	public string getServiceWorkerRegistrationsDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_service_worker_registrations_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get the #WebKitWebsiteDataManager:websql-directory property.
	 *
	 * Deprecated: WebSQL is no longer supported. Use IndexedDB instead.
	 *
	 * Returns: the directory where WebSQL databases are stored or %NULL if @manager is ephemeral.
	 *
	 * Since: 2.10
	 */
	public string getWebsqlDirectory()
	{
		return Str.toString(webkit_website_data_manager_get_websql_directory(webKitWebsiteDataManager));
	}

	/**
	 * Get whether a #WebKitWebsiteDataManager is ephemeral. See #WebKitWebsiteDataManager:is-ephemeral for more details.
	 *
	 * Returns: %TRUE if @manager is ephemeral or %FALSE otherwise.
	 *
	 * Since: 2.16
	 */
	public bool isEphemeral()
	{
		return webkit_website_data_manager_is_ephemeral(webKitWebsiteDataManager) != 0;
	}

	/**
	 * Asynchronously removes the website data of the for the given @types for websites in the given @website_data list.
	 * Use webkit_website_data_manager_clear() if you want to remove the website data for all sites.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_website_data_manager_remove_finish() to get the result of the operation.
	 *
	 * Params:
	 *     types = #WebKitWebsiteDataTypes
	 *     websiteData = a #GList of #WebKitWebsiteData
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.16
	 */
	public void remove(WebKitWebsiteDataTypes types, ListG websiteData, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_website_data_manager_remove(webKitWebsiteDataManager, types, (websiteData is null) ? null : websiteData.getListGStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_website_data_manager_remove().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if website data resources were successfully removed, or %FALSE otherwise.
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public bool removeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_website_data_manager_remove_finish(webKitWebsiteDataManager, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Enable or disable Intelligent Tracking Prevention (ITP). When ITP is enabled resource load statistics
	 * are collected and used to decide whether to allow or block third-party cookies and prevent user tracking.
	 * Note that while ITP is enabled the accept policy %WEBKIT_COOKIE_POLICY_ACCEPT_NO_THIRD_PARTY is ignored and
	 * %WEBKIT_COOKIE_POLICY_ACCEPT_ALWAYS is used instead. See also webkit_cookie_manager_set_accept_policy().
	 *
	 * Params:
	 *     enabled = value to set
	 *
	 * Since: 2.30
	 */
	public void setItpEnabled(bool enabled)
	{
		webkit_website_data_manager_set_itp_enabled(webKitWebsiteDataManager, enabled);
	}

	/**
	 * Enable or disable persistent credential storage. When enabled, which is the default for
	 * non-ephemeral sessions, the network process will try to read and write HTTP authentiacation
	 * credentials from persistent storage.
	 *
	 * Params:
	 *     enabled = value to set
	 *
	 * Since: 2.30
	 */
	public void setPersistentCredentialStorageEnabled(bool enabled)
	{
		webkit_website_data_manager_set_persistent_credential_storage_enabled(webKitWebsiteDataManager, enabled);
	}
}
