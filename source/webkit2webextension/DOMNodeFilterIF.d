module webkit2webextension.DOMNodeFilterIF;

private import webkit2webextension.DOMNode;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public interface DOMNodeFilterIF{
	/** Get the main Gtk struct */
	public WebKitDOMNodeFilter* getDOMNodeFilterStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return webkit_dom_node_filter_get_type();
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
	public short acceptNode(DOMNode node);
}
