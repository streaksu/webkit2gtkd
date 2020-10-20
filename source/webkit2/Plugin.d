module webkit2.Plugin;

private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * This object represents a single plugin, found while scanning the
 * various platform plugin directories. This object can be used to get
 * more information about a plugin, and enable/disable it, allowing
 * fine-grained control of plugins. The list of available plugins can
 * be obtained from the #WebKitWebContext, with
 * webkit_web_context_get_plugins().
 */
public class Plugin : ObjectG
{
	/** the main Gtk struct */
	protected WebKitPlugin* webKitPlugin;

	/** Get the main Gtk struct */
	public WebKitPlugin* getPluginStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitPlugin;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitPlugin;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitPlugin* webKitPlugin, bool ownedRef = false)
	{
		this.webKitPlugin = webKitPlugin;
		super(cast(GObject*)webKitPlugin, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_plugin_get_type();
	}

	/**
	 * Returns: the description of the plugin.
	 */
	public string getDescription()
	{
		return Str.toString(webkit_plugin_get_description(webKitPlugin));
	}

	/**
	 * Get information about MIME types handled by the plugin,
	 * as a list of #WebKitMimeInfo.
	 *
	 * Returns: a #GList of #WebKitMimeInfo.
	 */
	public ListG getMimeInfoList()
	{
		auto __p = webkit_plugin_get_mime_info_list(webKitPlugin);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns: the name of the plugin.
	 */
	public string getName()
	{
		return Str.toString(webkit_plugin_get_name(webKitPlugin));
	}

	/**
	 * Returns: the absolute path where the plugin is installed.
	 */
	public string getPath()
	{
		return Str.toString(webkit_plugin_get_path(webKitPlugin));
	}
}
