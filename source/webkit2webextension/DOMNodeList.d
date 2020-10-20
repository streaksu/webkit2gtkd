module webkit2webextension.DOMNodeList;

private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMNodeList : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMNodeList* webKitDOMNodeList;

	/** Get the main Gtk struct */
	public WebKitDOMNodeList* getDOMNodeListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMNodeList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMNodeList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMNodeList* webKitDOMNodeList, bool ownedRef = false)
	{
		this.webKitDOMNodeList = webKitDOMNodeList;
		super(cast(WebKitDOMObject*)webKitDOMNodeList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_node_list_get_type();
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
		return webkit_dom_node_list_get_length(webKitDOMNodeList);
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
		auto __p = webkit_dom_node_list_item(webKitDOMNodeList, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}
}
