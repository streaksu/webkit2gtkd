module webkit2.JavascriptResult;

private import gobject.ObjectG;
private import javascriptcore.Value;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class JavascriptResult
{
	/** the main Gtk struct */
	protected WebKitJavascriptResult* webKitJavascriptResult;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitJavascriptResult* getJavascriptResultStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitJavascriptResult;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitJavascriptResult;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitJavascriptResult* webKitJavascriptResult, bool ownedRef = false)
	{
		this.webKitJavascriptResult = webKitJavascriptResult;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_javascript_result_unref(webKitJavascriptResult);
	}


	/** */
	public static GType getType()
	{
		return webkit_javascript_result_get_type();
	}

	/**
	 * Get the global Javascript context that should be used with the
	 * <function>JSValueRef</function> returned by webkit_javascript_result_get_value().
	 *
	 * Deprecated: Use jsc_value_get_context() instead.
	 *
	 * Returns: the <function>JSGlobalContextRef</function> for the #WebKitJavascriptResult
	 */
	public JSGlobalContextRef getGlobalContext()
	{
		return webkit_javascript_result_get_global_context(webKitJavascriptResult);
	}

	/**
	 * Get the #JSCValue of @js_result.
	 *
	 * Returns: the #JSCValue of the #WebKitJavascriptResult
	 *
	 * Since: 2.22
	 */
	public Value getJsValue()
	{
		auto __p = webkit_javascript_result_get_js_value(webKitJavascriptResult);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Value)(cast(JSCValue*) __p);
	}

	/**
	 * Get the value of @js_result. You should use the <function>JSGlobalContextRef</function>
	 * returned by webkit_javascript_result_get_global_context() to use the <function>JSValueRef</function>.
	 *
	 * Deprecated: Use webkit_javascript_result_get_js_value() instead.
	 *
	 * Returns: the <function>JSValueRef</function> of the #WebKitJavascriptResult
	 */
	public JSValueRef getValue()
	{
		return webkit_javascript_result_get_value(webKitJavascriptResult);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @js_result by one. This
	 * function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed in #WebKitJavascriptResult
	 */
	public JavascriptResult ref_()
	{
		auto __p = webkit_javascript_result_ref(webKitJavascriptResult);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(JavascriptResult)(cast(WebKitJavascriptResult*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @js_result by one. If the
	 * reference count drops to 0, all memory allocated by the #WebKitJavascriptResult is
	 * released. This function is MT-safe and may be called from any
	 * thread.
	 */
	public void unref()
	{
		webkit_javascript_result_unref(webKitJavascriptResult);
	}
}
