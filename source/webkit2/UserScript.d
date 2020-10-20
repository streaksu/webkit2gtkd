module webkit2.UserScript;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class UserScript
{
	/** the main Gtk struct */
	protected WebKitUserScript* webKitUserScript;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitUserScript* getUserScriptStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitUserScript;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitUserScript;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitUserScript* webKitUserScript, bool ownedRef = false)
	{
		this.webKitUserScript = webKitUserScript;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_user_script_unref(webKitUserScript);
	}


	/** */
	public static GType getType()
	{
		return webkit_user_script_get_type();
	}

	/**
	 * Creates a new user script. Scripts can be applied to some URIs
	 * only by passing non-null values for @allow_list or @block_list. Passing a
	 * %NULL allow_list implies that all URIs are on the allow_list. The script
	 * is applied if an URI matches the allow_list and not the block_list.
	 * URI patterns must be of the form `[protocol]://[host]/[path]`, where the
	 * *host* and *path* components can contain the wildcard character (`*`) to
	 * represent zero or more other characters.
	 *
	 * Params:
	 *     source = Source code of the user script.
	 *     injectedFrames = A #WebKitUserContentInjectedFrames value
	 *     injectionTime = A #WebKitUserScriptInjectionTime value
	 *     allowList = An allow_list of URI patterns or %NULL
	 *     blockList = A block_list of URI patterns or %NULL
	 *
	 * Returns: A new #WebKitUserScript
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserScriptInjectionTime injectionTime, string[] allowList, string[] blockList)
	{
		auto __p = webkit_user_script_new(Str.toStringz(source), injectedFrames, injectionTime, Str.toStringzArray(allowList), Str.toStringzArray(blockList));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitUserScript*) __p);
	}

	/**
	 * Creates a new user script for script world with name @world_name.
	 * See webkit_user_script_new() for a full description.
	 *
	 * Params:
	 *     source = Source code of the user script.
	 *     injectedFrames = A #WebKitUserContentInjectedFrames value
	 *     injectionTime = A #WebKitUserScriptInjectionTime value
	 *     worldName = the name of a #WebKitScriptWorld
	 *     allowList = An allow_list of URI patterns or %NULL
	 *     blockList = A block_list of URI patterns or %NULL
	 *
	 * Returns: A new #WebKitUserScript
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string source, WebKitUserContentInjectedFrames injectedFrames, WebKitUserScriptInjectionTime injectionTime, string worldName, string[] allowList, string[] blockList)
	{
		auto __p = webkit_user_script_new_for_world(Str.toStringz(source), injectedFrames, injectionTime, Str.toStringz(worldName), Str.toStringzArray(allowList), Str.toStringzArray(blockList));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_for_world");
		}

		this(cast(WebKitUserScript*) __p);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @user_script by one.
	 * This function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed #WebKitUserScript
	 *
	 * Since: 2.6
	 */
	public UserScript ref_()
	{
		auto __p = webkit_user_script_ref(webKitUserScript);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UserScript)(cast(WebKitUserScript*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @user_script by one.
	 * If the reference count drops to 0, all memory allocated by
	 * #WebKitUserScript is released. This function is MT-safe and may be called
	 * from any thread.
	 *
	 * Since: 2.6
	 */
	public void unref()
	{
		webkit_user_script_unref(webKitUserScript);
	}
}
