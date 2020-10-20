module webkit2webextension.DOMDOMTokenList;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMDOMTokenList : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMDOMTokenList* webKitDOMDOMTokenList;

	/** Get the main Gtk struct */
	public WebKitDOMDOMTokenList* getDOMDOMTokenListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMDOMTokenList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMDOMTokenList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMDOMTokenList* webKitDOMDOMTokenList, bool ownedRef = false)
	{
		this.webKitDOMDOMTokenList = webKitDOMDOMTokenList;
		super(cast(WebKitDOMObject*)webKitDOMDOMTokenList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_dom_token_list_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     token = A #gchar
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool contains(string token)
	{
		return webkit_dom_dom_token_list_contains(webKitDOMDOMTokenList, Str.toStringz(token)) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 *
	 * Since: 2.16
	 */
	public gulong getLength()
	{
		return webkit_dom_dom_token_list_get_length(webKitDOMDOMTokenList);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.16
	 */
	public string getValue()
	{
		auto retStr = webkit_dom_dom_token_list_get_value(webKitDOMDOMTokenList);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.16
	 */
	public string item(gulong index)
	{
		auto retStr = webkit_dom_dom_token_list_item(webKitDOMDOMTokenList, index);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     token = A #gchar
	 *     newToken = A #gchar
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void replace(string token, string newToken)
	{
		GError* err = null;

		webkit_dom_dom_token_list_replace(webKitDOMDOMTokenList, Str.toStringz(token), Str.toStringz(newToken), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Since: 2.16
	 */
	public void setValue(string value)
	{
		webkit_dom_dom_token_list_set_value(webKitDOMDOMTokenList, Str.toStringz(value));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     token = A #gchar
	 *     force = A #gboolean
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public bool toggle(string token, bool force)
	{
		GError* err = null;

		auto __p = webkit_dom_dom_token_list_toggle(webKitDOMDOMTokenList, Str.toStringz(token), force, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}
}
