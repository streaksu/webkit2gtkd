module webkit2webextension.Frame;

private import glib.Str;
private import gobject.ObjectG;
private import javascriptcore.Context;
private import javascriptcore.Value;
private import webkit2webextension.DOMObject;
private import webkit2webextension.ScriptWorld;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class Frame : ObjectG
{
	/** the main Gtk struct */
	protected WebKitFrame* webKitFrame;

	/** Get the main Gtk struct */
	public WebKitFrame* getFrameStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitFrame;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitFrame;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitFrame* webKitFrame, bool ownedRef = false)
	{
		this.webKitFrame = webKitFrame;
		super(cast(GObject*)webKitFrame, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_frame_get_type();
	}

	/**
	 * Gets the process-unique identifier of this #WebKitFrame. No other
	 * frame in the same web process will have the same ID; however, frames
	 * in other web processes may.
	 *
	 * Returns: the identifier of @frame
	 *
	 * Since: 2.26
	 */
	public ulong getId()
	{
		return webkit_frame_get_id(webKitFrame);
	}

	/**
	 * Gets the JavaScript execution context of @frame for the given #WebKitScriptWorld.
	 *
	 * Deprecated: Use webkit_frame_get_js_context_for_script_world() instead.
	 *
	 * Params:
	 *     world = a #WebKitScriptWorld
	 *
	 * Returns: the JavaScript context of @frame for @world
	 *
	 * Since: 2.2
	 */
	public JSGlobalContextRef getJavascriptContextForScriptWorld(ScriptWorld world)
	{
		return webkit_frame_get_javascript_context_for_script_world(webKitFrame, (world is null) ? null : world.getScriptWorldStruct());
	}

	/**
	 * Gets the global JavaScript execution context. Use this function to bridge
	 * between the WebKit and JavaScriptCore APIs.
	 *
	 * Deprecated: Use webkit_frame_get_js_context() instead.
	 *
	 * Returns: the global JavaScript context of @frame
	 *
	 * Since: 2.2
	 */
	public JSGlobalContextRef getJavascriptGlobalContext()
	{
		return webkit_frame_get_javascript_global_context(webKitFrame);
	}

	/**
	 * Get the JavaScript execution context of @frame. Use this function to bridge
	 * between the WebKit and JavaScriptCore APIs.
	 *
	 * Returns: the #JSCContext for the JavaScript execution context of @frame.
	 *
	 * Since: 2.22
	 */
	public Context getJsContext()
	{
		auto __p = webkit_frame_get_js_context(webKitFrame);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Context)(cast(JSCContext*) __p, true);
	}

	/**
	 * Get the JavaScript execution context of @frame for the given #WebKitScriptWorld.
	 *
	 * Params:
	 *     world = a #WebKitScriptWorld
	 *
	 * Returns: the #JSCContext for the JavaScript execution context of @frame for @world.
	 *
	 * Since: 2.22
	 */
	public Context getJsContextForScriptWorld(ScriptWorld world)
	{
		auto __p = webkit_frame_get_js_context_for_script_world(webKitFrame, (world is null) ? null : world.getScriptWorldStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Context)(cast(JSCContext*) __p, true);
	}

	/**
	 * Get a #JSCValue referencing the given DOM object. The value is created in the JavaScript execution
	 * context of @frame.
	 *
	 * Params:
	 *     domObject = a #WebKitDOMObject
	 *
	 * Returns: the #JSCValue referencing @dom_object.
	 *
	 * Since: 2.22
	 */
	public Value getJsValueForDomObject(DOMObject domObject)
	{
		auto __p = webkit_frame_get_js_value_for_dom_object(webKitFrame, (domObject is null) ? null : domObject.getDOMObjectStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Get a #JSCValue referencing the given DOM object. The value is created in the JavaScript execution
	 * context of @frame for the given #WebKitScriptWorld.
	 *
	 * Params:
	 *     domObject = a #WebKitDOMObject
	 *     world = a #WebKitScriptWorld
	 *
	 * Returns: the #JSCValue referencing @dom_object
	 *
	 * Since: 2.22
	 */
	public Value getJsValueForDomObjectInScriptWorld(DOMObject domObject, ScriptWorld world)
	{
		auto __p = webkit_frame_get_js_value_for_dom_object_in_script_world(webKitFrame, (domObject is null) ? null : domObject.getDOMObjectStruct(), (world is null) ? null : world.getScriptWorldStruct());

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p, true);
	}

	/**
	 * Gets the current active URI of @frame.
	 *
	 * Returns: the current active URI of @frame or %NULL if nothing has been
	 *     loaded yet.
	 *
	 * Since: 2.2
	 */
	public string getUri()
	{
		return Str.toString(webkit_frame_get_uri(webKitFrame));
	}

	/**
	 * Gets whether @frame is the main frame of a #WebKitWebPage
	 *
	 * Returns: %TRUE if @frame is a main frame or %FALSE otherwise
	 *
	 * Since: 2.2
	 */
	public bool isMainFrame()
	{
		return webkit_frame_is_main_frame(webKitFrame) != 0;
	}
}
