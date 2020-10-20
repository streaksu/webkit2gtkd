module webkit2webextension.DOMXPathResult;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMXPathResult : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMXPathResult* webKitDOMXPathResult;

	/** Get the main Gtk struct */
	public WebKitDOMXPathResult* getDOMXPathResultStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMXPathResult;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMXPathResult;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMXPathResult* webKitDOMXPathResult, bool ownedRef = false)
	{
		this.webKitDOMXPathResult = webKitDOMXPathResult;
		super(cast(WebKitDOMObject*)webKitDOMXPathResult, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_xpath_result_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 *
	 * Throws: GException on failure.
	 */
	public bool getBooleanValue()
	{
		GError* err = null;

		auto __p = webkit_dom_xpath_result_get_boolean_value(webKitDOMXPathResult, &err) != 0;

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getInvalidIteratorState()
	{
		return webkit_dom_xpath_result_get_invalid_iterator_state(webKitDOMXPathResult) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gdouble
	 *
	 * Throws: GException on failure.
	 */
	public double getNumberValue()
	{
		GError* err = null;

		auto __p = webkit_dom_xpath_result_get_number_value(webKitDOMXPathResult, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gushort
	 */
	public ushort getResultType()
	{
		return webkit_dom_xpath_result_get_result_type(webKitDOMXPathResult);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode getSingleNodeValue()
	{
		GError* err = null;

		auto __p = webkit_dom_xpath_result_get_single_node_value(webKitDOMXPathResult, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 *
	 * Throws: GException on failure.
	 */
	public gulong getSnapshotLength()
	{
		GError* err = null;

		auto __p = webkit_dom_xpath_result_get_snapshot_length(webKitDOMXPathResult, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		return __p;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public string getStringValue()
	{
		GError* err = null;

		auto retStr = webkit_dom_xpath_result_get_string_value(webKitDOMXPathResult, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode iterateNext()
	{
		GError* err = null;

		auto __p = webkit_dom_xpath_result_iterate_next(webKitDOMXPathResult, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode snapshotItem(gulong index)
	{
		GError* err = null;

		auto __p = webkit_dom_xpath_result_snapshot_item(webKitDOMXPathResult, index, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}
}
