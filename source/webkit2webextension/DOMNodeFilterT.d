module webkit2webextension.DOMNodeFilterT;

public  import webkit2webextension.DOMNode;
public  import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public template DOMNodeFilterT(TStruct)
{
	/** Get the main Gtk struct */
	public WebKitDOMNodeFilter* getDOMNodeFilterStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(WebKitDOMNodeFilter*)getStruct();
	}


	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     node = A #WebKitDOMNode
	 *
	 * Returns: a #gshort
	 */
	public short acceptNode(DOMNode node)
	{
		return webkit_dom_node_filter_accept_node(getDOMNodeFilterStruct(), (node is null) ? null : node.getDOMNodeStruct());
	}
}
