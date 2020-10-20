module webkit2webextension.DOMAttr;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMElement;
private import webkit2webextension.DOMNode;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMAttr : DOMNode
{
	/** the main Gtk struct */
	protected WebKitDOMAttr* webKitDOMAttr;

	/** Get the main Gtk struct */
	public WebKitDOMAttr* getDOMAttrStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMAttr;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMAttr;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMAttr* webKitDOMAttr, bool ownedRef = false)
	{
		this.webKitDOMAttr = webKitDOMAttr;
		super(cast(WebKitDOMNode*)webKitDOMAttr, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_attr_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.14
	 */
	public override string getLocalName()
	{
		auto retStr = webkit_dom_attr_get_local_name(webKitDOMAttr);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getName()
	{
		auto retStr = webkit_dom_attr_get_name(webKitDOMAttr);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.14
	 */
	public override string getNamespaceUri()
	{
		auto retStr = webkit_dom_attr_get_namespace_uri(webKitDOMAttr);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMElement
	 */
	public DOMElement getOwnerElement()
	{
		auto __p = webkit_dom_attr_get_owner_element(webKitDOMAttr);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMElement)(cast(WebKitDOMElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 *
	 * Since: 2.14
	 */
	public override string getPrefix()
	{
		auto retStr = webkit_dom_attr_get_prefix(webKitDOMAttr);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getSpecified()
	{
		return webkit_dom_attr_get_specified(webKitDOMAttr) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getValue()
	{
		auto retStr = webkit_dom_attr_get_value(webKitDOMAttr);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setValue(string value)
	{
		GError* err = null;

		webkit_dom_attr_set_value(webKitDOMAttr, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
