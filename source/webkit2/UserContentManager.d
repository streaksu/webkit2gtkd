module webkit2.UserContentManager;

private import glib.ConstructionException;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.JavascriptResult;
private import webkit2.UserContentFilter;
private import webkit2.UserScript;
private import webkit2.UserStyleSheet;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * Using a #WebKitUserContentManager user CSS style sheets can be set to
 * be injected in the web pages loaded by a #WebKitWebView, by
 * webkit_user_content_manager_add_style_sheet().
 * 
 * To use a #WebKitUserContentManager, it must be created using
 * webkit_user_content_manager_new(), and then passed to
 * webkit_web_view_new_with_user_content_manager(). User style
 * sheets can be created with webkit_user_style_sheet_new().
 * 
 * User style sheets can be added and removed at any time, but
 * they will affect the web pages loaded afterwards.
 *
 * Since: 2.6
 */
public class UserContentManager : ObjectG
{
	/** the main Gtk struct */
	protected WebKitUserContentManager* webKitUserContentManager;

	/** Get the main Gtk struct */
	public WebKitUserContentManager* getUserContentManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitUserContentManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitUserContentManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitUserContentManager* webKitUserContentManager, bool ownedRef = false)
	{
		this.webKitUserContentManager = webKitUserContentManager;
		super(cast(GObject*)webKitUserContentManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_user_content_manager_get_type();
	}

	/**
	 * Creates a new user content manager.
	 *
	 * Returns: A #WebKitUserContentManager
	 *
	 * Since: 2.6
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_user_content_manager_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitUserContentManager*) __p, true);
	}

	/**
	 * Adds a #WebKitUserContentFilter to the given #WebKitUserContentManager.
	 * The same #WebKitUserContentFilter can be reused with multiple
	 * #WebKitUserContentManager instances.
	 *
	 * Filters need to be saved and loaded from #WebKitUserContentFilterStore.
	 *
	 * Params:
	 *     filter = A #WebKitUserContentFilter
	 *
	 * Since: 2.24
	 */
	public void addFilter(UserContentFilter filter)
	{
		webkit_user_content_manager_add_filter(webKitUserContentManager, (filter is null) ? null : filter.getUserContentFilterStruct());
	}

	/**
	 * Adds a #WebKitUserScript to the given #WebKitUserContentManager.
	 * The same #WebKitUserScript can be reused with multiple
	 * #WebKitUserContentManager instances.
	 *
	 * Params:
	 *     script = A #WebKitUserScript
	 *
	 * Since: 2.6
	 */
	public void addScript(UserScript script)
	{
		webkit_user_content_manager_add_script(webKitUserContentManager, (script is null) ? null : script.getUserScriptStruct());
	}

	/**
	 * Adds a #WebKitUserStyleSheet to the given #WebKitUserContentManager.
	 * The same #WebKitUserStyleSheet can be reused with multiple
	 * #WebKitUserContentManager instances.
	 *
	 * Params:
	 *     stylesheet = A #WebKitUserStyleSheet
	 *
	 * Since: 2.6
	 */
	public void addStyleSheet(UserStyleSheet stylesheet)
	{
		webkit_user_content_manager_add_style_sheet(webKitUserContentManager, (stylesheet is null) ? null : stylesheet.getUserStyleSheetStruct());
	}

	/**
	 * Registers a new user script message handler. After it is registered,
	 * scripts can use `window.webkit.messageHandlers.&lt;name&gt;.postMessage(value)`
	 * to send messages. Those messages are received by connecting handlers
	 * to the #WebKitUserContentManager::script-message-received signal. The
	 * handler name is used as the detail of the signal. To avoid race
	 * conditions between registering the handler name, and starting to
	 * receive the signals, it is recommended to connect to the signal
	 * *before* registering the handler name:
	 *
	 * <informalexample><programlisting>
	 * WebKitWebView *view = webkit_web_view_new ();
	 * WebKitUserContentManager *manager = webkit_web_view_get_user_content_manager ();
	 * g_signal_connect (manager, "script-message-received::foobar",
	 * G_CALLBACK (handle_script_message), NULL);
	 * webkit_user_content_manager_register_script_message_handler (manager, "foobar");
	 * </programlisting></informalexample>
	 *
	 * Registering a script message handler will fail if the requested
	 * name has been already registered before.
	 *
	 * Params:
	 *     name = Name of the script message channel
	 *
	 * Returns: %TRUE if message handler was registered successfully, or %FALSE otherwise.
	 *
	 * Since: 2.8
	 */
	public bool registerScriptMessageHandler(string name)
	{
		return webkit_user_content_manager_register_script_message_handler(webKitUserContentManager, Str.toStringz(name)) != 0;
	}

	/**
	 * Registers a new user script message handler in script world with name @world_name.
	 * See webkit_user_content_manager_register_script_message_handler() for full description.
	 *
	 * Registering a script message handler will fail if the requested
	 * name has been already registered before.
	 *
	 * Params:
	 *     name = Name of the script message channel
	 *     worldName = the name of a #WebKitScriptWorld
	 *
	 * Returns: %TRUE if message handler was registered successfully, or %FALSE otherwise.
	 *
	 * Since: 2.22
	 */
	public bool registerScriptMessageHandlerInWorld(string name, string worldName)
	{
		return webkit_user_content_manager_register_script_message_handler_in_world(webKitUserContentManager, Str.toStringz(name), Str.toStringz(worldName)) != 0;
	}

	/**
	 * Removes all content filters from the given #WebKitUserContentManager.
	 *
	 * Since: 2.24
	 */
	public void removeAllFilters()
	{
		webkit_user_content_manager_remove_all_filters(webKitUserContentManager);
	}

	/**
	 * Removes all user scripts from the given #WebKitUserContentManager
	 *
	 * Since: 2.6
	 */
	public void removeAllScripts()
	{
		webkit_user_content_manager_remove_all_scripts(webKitUserContentManager);
	}

	/**
	 * Removes all user style sheets from the given #WebKitUserContentManager.
	 *
	 * Since: 2.6
	 */
	public void removeAllStyleSheets()
	{
		webkit_user_content_manager_remove_all_style_sheets(webKitUserContentManager);
	}

	/**
	 * Removes a filter from the given #WebKitUserContentManager.
	 *
	 * Since 2.24
	 *
	 * Params:
	 *     filter = A #WebKitUserContentFilter
	 */
	public void removeFilter(UserContentFilter filter)
	{
		webkit_user_content_manager_remove_filter(webKitUserContentManager, (filter is null) ? null : filter.getUserContentFilterStruct());
	}

	/**
	 * Removes a filter from the given #WebKitUserContentManager given the
	 * identifier of a #WebKitUserContentFilter as returned by
	 * webkit_user_content_filter_get_identifier().
	 *
	 * Params:
	 *     filterId = Filter identifier
	 *
	 * Since: 2.26
	 */
	public void removeFilterById(string filterId)
	{
		webkit_user_content_manager_remove_filter_by_id(webKitUserContentManager, Str.toStringz(filterId));
	}

	/**
	 * Unregisters a previously registered message handler.
	 *
	 * Note that this does *not* disconnect handlers for the
	 * #WebKitUserContentManager::script-message-received signal;
	 * they will be kept connected, but the signal will not be emitted
	 * unless the handler name is registered again.
	 *
	 * See also webkit_user_content_manager_register_script_message_handler().
	 *
	 * Params:
	 *     name = Name of the script message channel
	 *
	 * Since: 2.8
	 */
	public void unregisterScriptMessageHandler(string name)
	{
		webkit_user_content_manager_unregister_script_message_handler(webKitUserContentManager, Str.toStringz(name));
	}

	/**
	 * Unregisters a previously registered message handler in script world with name @world_name.
	 *
	 * Note that this does *not* disconnect handlers for the
	 * #WebKitUserContentManager::script-message-received signal;
	 * they will be kept connected, but the signal will not be emitted
	 * unless the handler name is registered again.
	 *
	 * See also webkit_user_content_manager_register_script_message_handler_in_world().
	 *
	 * Params:
	 *     name = Name of the script message channel
	 *     worldName = the name of a #WebKitScriptWorld
	 *
	 * Since: 2.22
	 */
	public void unregisterScriptMessageHandlerInWorld(string name, string worldName)
	{
		webkit_user_content_manager_unregister_script_message_handler_in_world(webKitUserContentManager, Str.toStringz(name), Str.toStringz(worldName));
	}

	/**
	 * This signal is emitted when JavaScript in a web view calls
	 * <code>window.webkit.messageHandlers.&lt;name&gt;.postMessage()</code>, after registering
	 * <code>&lt;name&gt;</code> using
	 * webkit_user_content_manager_register_script_message_handler()
	 *
	 * Params:
	 *     jsResult = the #WebKitJavascriptResult holding the value received from the JavaScript world.
	 *
	 * Since: 2.8
	 */
	gulong addOnScriptMessageReceived(void delegate(JavascriptResult, UserContentManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "script-message-received", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
