module webkit2.FaviconDatabase;

private import cairo.Surface;
private import gio.AsyncResultIF;
private import gio.Cancellable;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * #WebKitFaviconDatabase provides access to the icons associated with
 * web sites.
 * 
 * WebKit will automatically look for available icons in &lt;link&gt;
 * elements on opened pages as well as an existing favicon.ico and
 * load the images found into a memory cache if possible. That cache
 * is frozen to an on-disk database for persistence.
 * 
 * If #WebKitSettings:enable-private-browsing is %TRUE, new icons
 * won't be added to the on-disk database and no existing icons will
 * be deleted from it. Nevertheless, WebKit will still store them in
 * the in-memory cache during the current execution.
 */
public class FaviconDatabase : ObjectG
{
	/** the main Gtk struct */
	protected WebKitFaviconDatabase* webKitFaviconDatabase;

	/** Get the main Gtk struct */
	public WebKitFaviconDatabase* getFaviconDatabaseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitFaviconDatabase;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitFaviconDatabase;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitFaviconDatabase* webKitFaviconDatabase, bool ownedRef = false)
	{
		this.webKitFaviconDatabase = webKitFaviconDatabase;
		super(cast(GObject*)webKitFaviconDatabase, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_favicon_database_get_type();
	}

	/**
	 * Clears all icons from the database.
	 */
	public void clear()
	{
		webkit_favicon_database_clear(webKitFaviconDatabase);
	}

	/**
	 * Asynchronously obtains a #cairo_surface_t of the favicon for the
	 * given page URI. It returns the cached icon if it's in the database
	 * asynchronously waiting for the icon to be read from the database.
	 *
	 * This is an asynchronous method. When the operation is finished, callback will
	 * be invoked. You can then call webkit_favicon_database_get_favicon_finish()
	 * to get the result of the operation.
	 *
	 * You must call webkit_web_context_set_favicon_database_directory() for
	 * the #WebKitWebContext associated with this #WebKitFaviconDatabase
	 * before attempting to use this function; otherwise,
	 * webkit_favicon_database_get_favicon_finish() will return
	 * %WEBKIT_FAVICON_DATABASE_ERROR_NOT_INITIALIZED.
	 *
	 * Params:
	 *     pageUri = URI of the page for which we want to retrieve the favicon
	 *     cancellable = A #GCancellable or %NULL.
	 *     callback = A #GAsyncReadyCallback to call when the request is
	 *         satisfied or %NULL if you don't care about the result.
	 *     userData = The data to pass to @callback.
	 */
	public void getFavicon(string pageUri, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_favicon_database_get_favicon(webKitFaviconDatabase, Str.toStringz(pageUri), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an operation started with webkit_favicon_database_get_favicon().
	 *
	 * Params:
	 *     result = A #GAsyncResult obtained from the #GAsyncReadyCallback passed to webkit_favicon_database_get_favicon()
	 *
	 * Returns: a new reference to a #cairo_surface_t, or
	 *     %NULL in case of error.
	 *
	 * Throws: GException on failure.
	 */
	public Surface getFaviconFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_favicon_database_get_favicon_finish(webKitFaviconDatabase, (result is null) ? null : result.getAsyncResultStruct(), &err);

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
	 * Obtains the URI of the favicon for the given @page_uri.
	 *
	 * Params:
	 *     pageUri = URI of the page containing the icon
	 *
	 * Returns: a newly allocated URI for the favicon, or %NULL if the
	 *     database doesn't have a favicon for @page_uri.
	 */
	public string getFaviconUri(string pageUri)
	{
		auto retStr = webkit_favicon_database_get_favicon_uri(webKitFaviconDatabase, Str.toStringz(pageUri));

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This signal is emitted when the favicon URI of @page_uri has
	 * been changed to @favicon_uri in the database. You can connect
	 * to this signal and call webkit_favicon_database_get_favicon()
	 * to get the favicon. If you are interested in the favicon of a
	 * #WebKitWebView it's easier to use the #WebKitWebView:favicon
	 * property. See webkit_web_view_get_favicon() for more details.
	 *
	 * Params:
	 *     pageUri = the URI of the Web page containing the icon
	 *     faviconUri = the URI of the favicon
	 */
	gulong addOnFaviconChanged(void delegate(string, string, FaviconDatabase) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "favicon-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
