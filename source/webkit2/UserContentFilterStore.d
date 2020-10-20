module webkit2.UserContentFilterStore;

private import gio.AsyncResultIF;
private import gio.Cancellable;
private import gio.FileIF;
private import glib.Bytes;
private import glib.ConstructionException;
private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.UserContentFilter;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The WebKitUserContentFilterStore provides the means to import and save
 * [JSON rule sets](https://webkit.org/blog/3476/content-blockers-first-look/),
 * which can be loaded later in an efficient manner. Once filters are stored,
 * the #WebKitUserContentFilter objects which represent them can be added to
 * a #WebKitUserContentManager with webkit_user_content_manager_add_filter().
 * 
 * JSON rule sets are imported using webkit_user_content_filter_store_save() and stored
 * on disk in an implementation defined format. The contents of a filter store must be
 * managed using the #WebKitUserContentFilterStore: a list of all the stored filters
 * can be obtained with webkit_user_content_filter_store_fetch_identifiers(),
 * webkit_user_content_filter_store_load() can be used to retrieve a previously saved
 * filter, and removed from the store with webkit_user_content_filter_store_remove().
 *
 * Since: 2.24
 */
public class UserContentFilterStore : ObjectG
{
	/** the main Gtk struct */
	protected WebKitUserContentFilterStore* webKitUserContentFilterStore;

	/** Get the main Gtk struct */
	public WebKitUserContentFilterStore* getUserContentFilterStoreStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitUserContentFilterStore;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitUserContentFilterStore;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitUserContentFilterStore* webKitUserContentFilterStore, bool ownedRef = false)
	{
		this.webKitUserContentFilterStore = webKitUserContentFilterStore;
		super(cast(GObject*)webKitUserContentFilterStore, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_user_content_filter_store_get_type();
	}

	/**
	 * Create a new #WebKitUserContentFilterStore to manipulate filters stored at @storage_path.
	 * The path must point to a local filesystem, and will be created if needed.
	 *
	 * Params:
	 *     storagePath = path where data for filters will be stored on disk
	 *
	 * Returns: a newly created #WebKitUserContentFilterStore
	 *
	 * Since: 2.24
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string storagePath)
	{
		auto __p = webkit_user_content_filter_store_new(Str.toStringz(storagePath));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitUserContentFilterStore*) __p, true);
	}

	/**
	 * Asynchronously retrieve a list of the identifiers for all the stored filters.
	 *
	 * When the operation is finished, @callback will be invoked, which then can use
	 * webkit_user_content_filter_store_fetch_identifiers_finish() to obtain the list of
	 * filter identifiers.
	 *
	 * Params:
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the removal is completed
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.24
	 */
	public void fetchIdentifiers(Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_user_content_filter_store_fetch_identifiers(webKitUserContentFilterStore, (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous fetch of the list of identifiers for the stored filters previously
	 * started with webkit_user_content_filter_store_fetch_identifiers().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a %NULL-terminated list of filter identifiers.
	 *
	 * Since: 2.24
	 */
	public string[] fetchIdentifiersFinish(AsyncResultIF result)
	{
		auto retStr = webkit_user_content_filter_store_fetch_identifiers_finish(webKitUserContentFilterStore, (result is null) ? null : result.getAsyncResultStruct());

		scope(exit) Str.freeStringArray(retStr);
		return Str.toStringArray(retStr);
	}

	/**
	 * Returns: The storage path for user content filters.
	 *
	 * Since: 2.24
	 */
	public string getPath()
	{
		return Str.toString(webkit_user_content_filter_store_get_path(webKitUserContentFilterStore));
	}

	/**
	 * Asynchronously load a content filter given its @identifier. The filter must have been
	 * previously stored using webkit_user_content_filter_store_save().
	 *
	 * When the operation is finished, @callback will be invoked, which then can use
	 * webkit_user_content_filter_store_load_finish() to obtain the resulting filter.
	 *
	 * Params:
	 *     identifier = a filter identifier
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the load is completed
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.24
	 */
	public void load(string identifier, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_user_content_filter_store_load(webKitUserContentFilterStore, Str.toStringz(identifier), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous filter load previously started with
	 * webkit_user_content_filter_store_load().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitUserContentFilter, or %NULL if the load failed
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public UserContentFilter loadFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_user_content_filter_store_load_finish(webKitUserContentFilterStore, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserContentFilter)(cast(WebKitUserContentFilter*) __p, true);
	}

	/**
	 * Asynchronously remove a content filter given its @identifier.
	 *
	 * When the operation is finished, @callback will be invoked, which then can use
	 * webkit_user_content_filter_store_remove_finish() to check whether the removal was
	 * successful.
	 *
	 * Params:
	 *     identifier = a filter identifier
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when the removal is completed
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.24
	 */
	public void remove(string identifier, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_user_content_filter_store_remove(webKitUserContentFilterStore, Str.toStringz(identifier), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous filter removal previously started with
	 * webkit_user_content_filter_store_remove().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: whether the removal was successful
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public bool removeFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_user_content_filter_store_remove_finish(webKitUserContentFilterStore, (result is null) ? null : result.getAsyncResultStruct(), &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 * Asynchronously save a content filter from a source rule set in the
	 * [WebKit content extesions JSON format](https://webkit.org/blog/3476/content-blockers-first-look/).
	 *
	 * The @identifier can be used afterwards to refer to the filter when using
	 * webkit_user_content_filter_store_remove() and webkit_user_content_filter_store_load().
	 * When the @identifier has been used in the past, the new filter source will replace
	 * the one saved beforehand for the same identifier.
	 *
	 * When the operation is finished, @callback will be invoked, which then can use
	 * webkit_user_content_filter_store_save_finish() to obtain the resulting filter.
	 *
	 * Params:
	 *     identifier = a string used to identify the saved filter
	 *     source = #GBytes containing the rule set in JSON format
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when saving is completed
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.24
	 */
	public void save(string identifier, Bytes source, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_user_content_filter_store_save(webKitUserContentFilterStore, Str.toStringz(identifier), (source is null) ? null : source.getBytesStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes an asynchronous filter save previously started with
	 * webkit_user_content_filter_store_save().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitUserContentFilter, or %NULL if saving failed
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public UserContentFilter saveFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_user_content_filter_store_save_finish(webKitUserContentFilterStore, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserContentFilter)(cast(WebKitUserContentFilter*) __p, true);
	}

	/**
	 * Asynchronously save a content filter from the contents of a file, which must be
	 * native to the platform, as checked by g_file_is_native(). See
	 * webkit_user_content_filter_store_save() for more details.
	 *
	 * When the operation is finished, @callback will be invoked, which then can use
	 * webkit_user_content_filter_store_save_finish() to obtain the resulting filter.
	 *
	 * Params:
	 *     identifier = a string used to identify the saved filter
	 *     file = a #GFile containing the rule set in JSON format
	 *     cancellable = a #GCancellable or %NULL to ignore
	 *     callback = a #GAsyncReadyCallback to call when saving is completed
	 *     userData = the data to pass to the callback function
	 *
	 * Since: 2.24
	 */
	public void saveFromFile(string identifier, FileIF file, Cancellable cancellable, GAsyncReadyCallback callback, void* userData)
	{
		webkit_user_content_filter_store_save_from_file(webKitUserContentFilterStore, Str.toStringz(identifier), (file is null) ? null : file.getFileStruct(), (cancellable is null) ? null : cancellable.getCancellableStruct(), callback, userData);
	}

	/**
	 * Finishes and asynchronous filter save previously started with
	 * webkit_user_content_filter_store_save_from_file().
	 *
	 * Params:
	 *     result = a #GAsyncResult
	 *
	 * Returns: a #WebKitUserContentFilter, or %NULL if saving failed.
	 *
	 * Since: 2.24
	 *
	 * Throws: GException on failure.
	 */
	public UserContentFilter saveFromFileFinish(AsyncResultIF result)
	{
		GError* err = null;

		auto __p = webkit_user_content_filter_store_save_from_file_finish(webKitUserContentFilterStore, (result is null) ? null : result.getAsyncResultStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserContentFilter)(cast(WebKitUserContentFilter*) __p, true);
	}
}
