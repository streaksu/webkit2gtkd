module webkit2webextension.DOMNodeIterator;

private import glib.ErrorG;
private import glib.GException;
private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMNodeFilterIF;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMNodeIterator : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMNodeIterator* webKitDOMNodeIterator;

	/** Get the main Gtk struct */
	public WebKitDOMNodeIterator* getDOMNodeIteratorStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMNodeIterator;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMNodeIterator;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMNodeIterator* webKitDOMNodeIterator, bool ownedRef = false)
	{
		this.webKitDOMNodeIterator = webKitDOMNodeIterator;
		super(cast(WebKitDOMObject*)webKitDOMNodeIterator, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_node_iterator_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void detach()
	{
		webkit_dom_node_iterator_detach(webKitDOMNodeIterator);
	}

	/**
	 * This function has been removed from the DOM spec and it just returns %FALSE.
	 *
	 * Returns: A #gboolean                                                                                                                                                                       *
	 */
	public bool getExpandEntityReferences()
	{
		return webkit_dom_node_iterator_get_expand_entity_references(webKitDOMNodeIterator) != 0;
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
		auto __p = webkit_dom_node_iterator_get_filter(webKitDOMNodeIterator);

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
	 * Returns: A #gboolean
	 */
	public bool getPointerBeforeReferenceNode()
	{
		return webkit_dom_node_iterator_get_pointer_before_reference_node(webKitDOMNodeIterator) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getReferenceNode()
	{
		auto __p = webkit_dom_node_iterator_get_reference_node(webKitDOMNodeIterator);

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
	public DOMNode getRoot()
	{
		auto __p = webkit_dom_node_iterator_get_root(webKitDOMNodeIterator);

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
		return webkit_dom_node_iterator_get_what_to_show(webKitDOMNodeIterator);
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
	public DOMNode nextNode()
	{
		GError* err = null;

		auto __p = webkit_dom_node_iterator_next_node(webKitDOMNodeIterator, &err);

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
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode previousNode()
	{
		GError* err = null;

		auto __p = webkit_dom_node_iterator_previous_node(webKitDOMNodeIterator, &err);

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
