module webkit2webextension.DOMNamedNodeMap;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMNamedNodeMap : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMNamedNodeMap* webKitDOMNamedNodeMap;

	/** Get the main Gtk struct */
	public WebKitDOMNamedNodeMap* getDOMNamedNodeMapStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMNamedNodeMap;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMNamedNodeMap;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMNamedNodeMap* webKitDOMNamedNodeMap, bool ownedRef = false)
	{
		this.webKitDOMNamedNodeMap = webKitDOMNamedNodeMap;
		super(cast(WebKitDOMObject*)webKitDOMNamedNodeMap, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_named_node_map_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getLength()
	{
		return webkit_dom_named_node_map_get_length(webKitDOMNamedNodeMap);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getNamedItem(string name)
	{
		auto __p = webkit_dom_named_node_map_get_named_item(webKitDOMNamedNodeMap, Str.toStringz(name));

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
	 *     namespaceURI = A #gchar
	 *     localName = A #gchar
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getNamedItemNs(string namespaceURI, string localName)
	{
		auto __p = webkit_dom_named_node_map_get_named_item_ns(webKitDOMNamedNodeMap, Str.toStringz(namespaceURI), Str.toStringz(localName));

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
	 */
	public DOMNode item(gulong index)
	{
		auto __p = webkit_dom_named_node_map_item(webKitDOMNamedNodeMap, index);

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
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode removeNamedItem(string name)
	{
		GError* err = null;

		auto __p = webkit_dom_named_node_map_remove_named_item(webKitDOMNamedNodeMap, Str.toStringz(name), &err);

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
	 *     namespaceURI = A #gchar
	 *     localName = A #gchar
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode removeNamedItemNs(string namespaceURI, string localName)
	{
		GError* err = null;

		auto __p = webkit_dom_named_node_map_remove_named_item_ns(webKitDOMNamedNodeMap, Str.toStringz(namespaceURI), Str.toStringz(localName), &err);

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
	 *     node = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode setNamedItem(DOMNode node)
	{
		GError* err = null;

		auto __p = webkit_dom_named_node_map_set_named_item(webKitDOMNamedNodeMap, (node is null) ? null : node.getDOMNodeStruct(), &err);

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
	 *     node = A #WebKitDOMNode
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode setNamedItemNs(DOMNode node)
	{
		GError* err = null;

		auto __p = webkit_dom_named_node_map_set_named_item_ns(webKitDOMNamedNodeMap, (node is null) ? null : node.getDOMNodeStruct(), &err);

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
