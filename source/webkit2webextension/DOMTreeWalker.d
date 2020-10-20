module webkit2webextension.DOMTreeWalker;

private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMNodeFilterIF;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMTreeWalker : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMTreeWalker* webKitDOMTreeWalker;

	/** Get the main Gtk struct */
	public WebKitDOMTreeWalker* getDOMTreeWalkerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMTreeWalker;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMTreeWalker;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMTreeWalker* webKitDOMTreeWalker, bool ownedRef = false)
	{
		this.webKitDOMTreeWalker = webKitDOMTreeWalker;
		super(cast(WebKitDOMObject*)webKitDOMTreeWalker, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_tree_walker_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode firstChild()
	{
		auto __p = webkit_dom_tree_walker_first_child(webKitDOMTreeWalker);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getCurrentNode()
	{
		auto __p = webkit_dom_tree_walker_get_current_node(webKitDOMTreeWalker);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 * This function has been removed from the DOM spec and it just returns %FALSE.
	 *
	 * Returns: A #gboolean
	 */
	public bool getExpandEntityReferences()
	{
		return webkit_dom_tree_walker_get_expand_entity_references(webKitDOMTreeWalker) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNodeFilter
	 */
	public DOMNodeFilterIF getFilter()
	{
		auto __p = webkit_dom_tree_walker_get_filter(webKitDOMTreeWalker);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNodeFilterIF)(cast(WebKitDOMNodeFilter*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getRoot()
	{
		auto __p = webkit_dom_tree_walker_get_root(webKitDOMTreeWalker);

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
	 */
	public gulong getWhatToShow()
	{
		return webkit_dom_tree_walker_get_what_to_show(webKitDOMTreeWalker);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode lastChild()
	{
		auto __p = webkit_dom_tree_walker_last_child(webKitDOMTreeWalker);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode nextNode()
	{
		auto __p = webkit_dom_tree_walker_next_node(webKitDOMTreeWalker);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode nextSibling()
	{
		auto __p = webkit_dom_tree_walker_next_sibling(webKitDOMTreeWalker);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode parentNode()
	{
		auto __p = webkit_dom_tree_walker_parent_node(webKitDOMTreeWalker);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode previousNode()
	{
		auto __p = webkit_dom_tree_walker_previous_node(webKitDOMTreeWalker);

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
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode previousSibling()
	{
		auto __p = webkit_dom_tree_walker_previous_sibling(webKitDOMTreeWalker);

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
	 *     value = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void setCurrentNode(DOMNode value)
	{
		GError* err = null;

		webkit_dom_tree_walker_set_current_node(webKitDOMTreeWalker, (value is null) ? null : value.getDOMNodeStruct(), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
