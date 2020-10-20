module webkit2.UserStyleSheet;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class UserStyleSheet
{
	/** the main Gtk struct */
	protected WebKitUserStyleSheet* webKitUserStyleSheet;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitUserStyleSheet* getUserStyleSheetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitUserStyleSheet;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitUserStyleSheet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitUserStyleSheet* webKitUserStyleSheet, bool ownedRef = false)
	{
		this.webKitUserStyleSheet = webKitUserStyleSheet;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_user_style_sheet_unref(webKitUserStyleSheet);
	}


	/** */
	public static GType getType()
	{
		return webkit_user_style_sheet_get_type();
	}

	/**
	 * Creates a new user style sheet. Style sheets can be applied to some URIs
	 * only by passing non-null values for @allow_list or @block_list. Passing a
	 * %NULL allow_list implies that all URIs are on the allow_list. The style
	 * sheet is applied if an URI matches the allow_list and not the block_list.
	 * URI patterns must be of the form `[protocol]://[host]/[path]`, where the
	 * *host* and *path* components can contain the wildcard character (`*`) to
	 * represent zero or more other characters.
	 *
	 * Params:
	 *     source = Source code of the user style sheet.
	 *     injectedFrames = A #WebKitUserContentInjectedFrames value
	 *     level = A #WebKitUserStyleLevel
	 *     allowList = An allow_list of URI patterns or %NULL
	 *     blockList = A block_list of URI patterns or %NULL
	 *
	 * Returns: A new #WebKitUserStyleSheet
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserStyleLevel level, string[] allowList, string[] blockList)
	{
		auto __p = webkit_user_style_sheet_new(Str.toStringz(source), injectedFrames, level, Str.toStringzArray(allowList), Str.toStringzArray(blockList));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitUserStyleSheet*) __p);
	}

	/**
	 * Creates a new user style sheet for script world with name @world_name.
	 * See webkit_user_style_sheet_new() for a full description.
	 *
	 * Params:
	 *     source = Source code of the user style sheet.
	 *     injectedFrames = A #WebKitUserContentInjectedFrames value
	 *     level = A #WebKitUserStyleLevel
	 *     worldName = the name of a #WebKitScriptWorld
	 *     allowList = An allow_list of URI patterns or %NULL
	 *     blockList = A block_list of URI patterns or %NULL
	 *
	 * Returns: A new #WebKitUserStyleSheet
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserStyleLevel level, string worldName, string[] allowList, string[] blockList)
	{
		auto __p = webkit_user_style_sheet_new_for_world(Str.toStringz(source), injectedFrames, level, Str.toStringz(worldName), Str.toStringzArray(allowList), Str.toStringzArray(blockList));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_world");
		}

		this(cast(WebKitUserStyleSheet*) __p);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @user_style_sheet by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed #WebKitUserStyleSheet
	 *
	 * Since: 2.6
	 */
	public UserStyleSheet ref_()
	{
		auto __p = webkit_user_style_sheet_ref(webKitUserStyleSheet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserStyleSheet)(cast(WebKitUserStyleSheet*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @user_style_sheet by one.
	 * If the reference count drops to 0, all memory allocated by
	 * #WebKitUserStyleSheet is released. This function is MT-safe and may be
	 * called from any thread.
	 *
	 * Since: 2.6
	 */
	public void unref()
	{
		webkit_user_style_sheet_unref(webKitUserStyleSheet);
	}
}
