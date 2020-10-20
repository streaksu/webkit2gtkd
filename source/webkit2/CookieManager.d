module webkit2.CookieManager;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ErrorG;
private import glib.GException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.Cookie;
private import std.algorithm;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The WebKitCookieManager defines how to set up and handle cookies.
 * You can get it from a #WebKitWebsiteDataManager with
 * webkit_website_data_manager_get_cookie_manager(), and use it to set where to
 * store cookies with webkit_cookie_manager_set_persistent_storage(),
 * or to set the acceptance policy, with webkit_cookie_manager_get_accept_policy().
 */
public class CookieManager : ObjectG
{
	/** the main Gtk struct */
	protected WebKitCookieManager* webKitCookieManager;

	/** Get the main Gtk struct */
	public WebKitCookieManager* getCookieManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitCookieManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitCookieManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitCookieManager* webKitCookieManager, bool ownedRef = false)
	{
		this.webKitCookieManager = webKitCookieManager;
		super(cast(GObject*)webKitCookieManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_cookie_manager_get_type();
	}

	/**
	 * Asynchronously add a #SoupCookie to the underlying storage.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_cookie_manager_add_cookie_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cookie = the #SoupCookie to be added
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.20
	 */
	public void addCookie(Cookie cookie, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_cookie_manager_add_cookie(webKitCookieManager, (cookie is null) ? null : cookie.getCookieStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_cookie_manager_add_cookie().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if the cookie was added or %FALSE in case of error.
	 *
	 * Since: 2.20
	 *
	 * Throws: GException on failure.
	 */
	public bool addCookieFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_cookie_manager_add_cookie_finish(webKitCookieManager, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Delete all cookies of @cookie_manager
	 *
	 * Deprecated: Use webkit_website_data_manager_clear() instead.
	 */
	public void deleteAllCookies()
	{
		webkit_cookie_manager_delete_all_cookies(webKitCookieManager);
	}

	/**
	 * Asynchronously delete a #SoupCookie from the current session.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_cookie_manager_delete_cookie_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cookie = the #SoupCookie to be deleted
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.20
	 */
	public void deleteCookie(Cookie cookie, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_cookie_manager_delete_cookie(webKitCookieManager, (cookie is null) ? null : cookie.getCookieStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_cookie_manager_delete_cookie().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: %TRUE if the cookie was deleted or %FALSE in case of error.
	 *
	 * Since: 2.20
	 *
	 * Throws: GException on failure.
	 */
	public bool deleteCookieFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_cookie_manager_delete_cookie_finish(webKitCookieManager, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Remove all cookies of @cookie_manager for the given @domain.
	 *
	 * Deprecated: Use webkit_website_data_manager_remove() instead.
	 *
	 * Params:
	 *     domain = a domain name
	 */
	public void deleteCookiesForDomain(string domain)
	{
		webkit_cookie_manager_delete_cookies_for_domain(webKitCookieManager, Str.toStringz(domain));
	}

	/**
	 * Asynchronously get the cookie acceptance policy of @cookie_manager.
	 * Note that when policy was set to %WEBKIT_COOKIE_POLICY_ACCEPT_NO_THIRD_PARTY and
	 * ITP is enabled, this will return %WEBKIT_COOKIE_POLICY_ACCEPT_ALWAYS.
	 * See also webkit_website_data_manager_set_itp_enabled().
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_cookie_manager_get_accept_policy_finish() to get the result of the operation.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void getAcceptPolicy(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_cookie_manager_get_accept_policy(webKitCookieManager, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_cookie_manager_get_accept_policy().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: the cookie acceptance policy of @cookie_manager as a #WebKitCookieAcceptPolicy.
	 *
	 * Throws: GException on failure.
	 */
	public WebKitCookieAcceptPolicy getAcceptPolicyFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_cookie_manager_get_accept_policy_finish(webKitCookieManager, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously get a list of #SoupCookie from @cookie_manager associated with @uri, which
	 * must be either an HTTP or an HTTPS URL.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_cookie_manager_get_cookies_finish() to get the result of the operation.
	 *
	 * Params:
	 *     uri = the URI associated to the cookies to be retrieved
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 *
	 * Since: 2.20
	 */
	public void getCookies(string uri, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_cookie_manager_get_cookies(webKitCookieManager, Str.toStringz(uri), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_cookie_manager_get_cookies().
	 * The return value is a #GSList of #SoupCookie instances which should be released
	 * with g_list_free_full() and soup_cookie_free().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: A #GList of #SoupCookie instances.
	 *
	 * Since: 2.20
	 *
	 * Throws: GException on failure.
	 */
	public ListG getCookiesFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_cookie_manager_get_cookies_finish(webKitCookieManager, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * Asynchronously get the list of domains for which @cookie_manager contains cookies.
	 *
	 * When the operation is finished, @callback will be called. You can then call
	 * webkit_cookie_manager_get_domains_with_cookies_finish() to get the result of the operation.
	 *
	 * Deprecated: Use webkit_website_data_manager_fetch() instead.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the request is satisfied
	 *     userData = the data to pass to callback function
	 */
	public void getDomainsWithCookies(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_cookie_manager_get_domains_with_cookies(webKitCookieManager, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finish an asynchronous operation started with webkit_cookie_manager_get_domains_with_cookies().
	 * The return value is a %NULL terminated list of strings which should
	 * be released with g_strfreev().
	 *
	 * Deprecated: Use webkit_website_data_manager_fetch_finish() instead.
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: A %NULL terminated array of domain names
	 *     or %NULL in case of error.
	 *
	 * Throws: GException on failure.
	 */
	public string[] getDomainsWithCookiesFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto retStr = webkit_cookie_manager_get_domains_with_cookies_finish(webKitCookieManager, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Set the cookie acceptance policy of @cookie_manager as @policy.
	 * Note that ITP has its own way to handle third-party cookies, so when it's enabled,
	 * and @policy is set to %WEBKIT_COOKIE_POLICY_ACCEPT_NO_THIRD_PARTY, %WEBKIT_COOKIE_POLICY_ACCEPT_ALWAYS
	 * will be used instead. Once disabled, the policy will be set back to %WEBKIT_COOKIE_POLICY_ACCEPT_NO_THIRD_PARTY.
	 * See also webkit_website_data_manager_set_itp_enabled().
	 *
	 * Params:
	 *     policy = a #WebKitCookieAcceptPolicy
	 */
	public void setAcceptPolicy(WebKitCookieAcceptPolicy policy)
	{
		webkit_cookie_manager_set_accept_policy(webKitCookieManager, policy);
	}

	/**
	 * Set the @filename where non-session cookies are stored persistently using
	 * @storage as the format to read/write the cookies.
	 * Cookies are initially read from @filename to create an initial set of cookies.
	 * Then, non-session cookies will be written to @filename when the WebKitCookieManager::changed
	 * signal is emitted.
	 * By default, @cookie_manager doesn't store the cookies persistently, so you need to call this
	 * method to keep cookies saved across sessions.
	 *
	 * This method should never be called on a #WebKitCookieManager associated to an ephemeral #WebKitWebsiteDataManager.
	 *
	 * Params:
	 *     filename = the filename to read to/write from
	 *     storage = a #WebKitCookiePersistentStorage
	 */
	public void setPersistentStorage(string filename, WebKitCookiePersistentStorage storage)
	{
		webkit_cookie_manager_set_persistent_storage(webKitCookieManager, Str.toStringz(filename), storage);
	}

	/**
	 * This signal is emitted when cookies are added, removed or modified.
	 */
	gulong addOnChanged(void delegate(CookieManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
