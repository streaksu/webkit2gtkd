module webkit2webextension.ScriptWorld;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2webextension.Frame;
private import webkit2webextension.WebPage;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class ScriptWorld : ObjectG
{
	/** the main Gtk struct */
	protected WebKitScriptWorld* webKitScriptWorld;

	/** Get the main Gtk struct */
	public WebKitScriptWorld* getScriptWorldStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitScriptWorld;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitScriptWorld;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitScriptWorld* webKitScriptWorld, bool ownedRef = false)
	{
		this.webKitScriptWorld = webKitScriptWorld;
		super(cast(GObject*)webKitScriptWorld, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_script_world_get_type();
	}

	/**
	 * Creates a new isolated #WebKitScriptWorld. Scripts executed in
	 * isolated worlds have access to the DOM but not to other variable
	 * or functions created by the page.
	 * The #WebKitScriptWorld is created with a generated unique name. Use
	 * webkit_script_world_new_with_name() if you want to create it with a
	 * custom name.
	 * You can get the JavaScript execution context of a #WebKitScriptWorld
	 * for a given #WebKitFrame with webkit_frame_get_javascript_context_for_script_world().
	 *
	 * Returns: a new isolated #WebKitScriptWorld
	 *
	 * Since: 2.2
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_script_world_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitScriptWorld*) __p, true);
	}

	/**
	 * Creates a new isolated #WebKitScriptWorld with a name. Scripts executed in
	 * isolated worlds have access to the DOM but not to other variable
	 * or functions created by the page.
	 * You can get the JavaScript execution context of a #WebKitScriptWorld
	 * for a given #WebKitFrame with webkit_frame_get_javascript_context_for_script_world().
	 *
	 * Params:
	 *     name = a name for the script world
	 *
	 * Returns: a new isolated #WebKitScriptWorld
	 *
	 * Since: 2.22
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name)
	{
		auto __p = webkit_script_world_new_with_name(Str.toStringz(name));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_name");
		}

		this(cast(WebKitScriptWorld*) __p, true);
	}

	/**
	 * Get the default #WebKitScriptWorld. This is the normal script world
	 * where all scripts are executed by default.
	 * You can get the JavaScript execution context of a #WebKitScriptWorld
	 * for a given #WebKitFrame with webkit_frame_get_javascript_context_for_script_world().
	 *
	 * Returns: the default #WebKitScriptWorld
	 *
	 * Since: 2.2
	 */
	public static ScriptWorld getDefault()
	{
		auto __p = webkit_script_world_get_default();

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ScriptWorld)(cast(WebKitScriptWorld*) __p);
	}

	/**
	 * Get the name of a #WebKitScriptWorld.
	 *
	 * Returns: the name of @world
	 *
	 * Since: 2.22
	 */
	public string getName()
	{
		return Str.toString(webkit_script_world_get_name(webKitScriptWorld));
	}

	/**
	 * Emitted when the JavaScript window object in a #WebKitScriptWorld has been
	 * cleared. This is the preferred place to set custom properties on the window
	 * object using the JavaScriptCore API. You can get the window object of @frame
	 * from the JavaScript execution context of @world that is returned by
	 * webkit_frame_get_js_context_for_script_world().
	 *
	 * Params:
	 *     page = a #WebKitWebPage
	 *     frame = the #WebKitFrame  to which @world belongs
	 *
	 * Since: 2.2
	 */
	gulong addOnWindowObjectCleared(void delegate(WebPage, Frame, ScriptWorld) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "window-object-cleared", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
