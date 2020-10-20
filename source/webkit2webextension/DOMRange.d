module webkit2webextension.DOMRange;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMDocumentFragment;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMRange : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMRange* webKitDOMRange;

	/** Get the main Gtk struct */
	public WebKitDOMRange* getDOMRangeStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMRange;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMRange;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMRange* webKitDOMRange, bool ownedRef = false)
	{
		this.webKitDOMRange = webKitDOMRange;
		super(cast(WebKitDOMObject*)webKitDOMRange, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_range_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMDocumentFragment
	 *
	 * Throws: GException on failure.
	 */
	public DOMDocumentFragment cloneContents()
	{
		GError* err = null;

		auto __p = webkit_dom_range_clone_contents(webKitDOMRange, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocumentFragment)(cast(WebKitDOMDocumentFragment*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMRange
	 *
	 * Throws: GException on failure.
	 */
	public DOMRange cloneRange()
	{
		GError* err = null;

		auto __p = webkit_dom_range_clone_range(webKitDOMRange, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMRange)(cast(WebKitDOMRange*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     toStart = A #gboolean
	 *
	 * Throws: GException on failure.
	 */
	public void collapse(bool toStart)
	{
		GError* err = null;

		webkit_dom_range_collapse(webKitDOMRange, toStart, &err);

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
	 *     how = A #gushort
	 *     sourceRange = A #WebKitDOMRange
	 *
	 * Returns: A #gshort
	 *
	 * Throws: GException on failure.
	 */
	public short compareBoundaryPoints(ushort how, DOMRange sourceRange)
	{
		GError* err = null;

		auto __p = webkit_dom_range_compare_boundary_points(webKitDOMRange, how, (sourceRange is null) ? null : sourceRange.getDOMRangeStruct(), &err);

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
	 * Params:
	 *     refNode = A #WebKitDOMNode
	 *
	 * Returns: A #gshort
	 *
	 * Throws: GException on failure.
	 */
	public short compareNode(DOMNode refNode)
	{
		GError* err = null;

		auto __p = webkit_dom_range_compare_node(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err);

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
	 * Params:
	 *     refNode = A #WebKitDOMNode
	 *     offset = A #glong
	 *
	 * Returns: A #gshort
	 *
	 * Throws: GException on failure.
	 */
	public short comparePoint(DOMNode refNode, glong offset)
	{
		GError* err = null;

		auto __p = webkit_dom_range_compare_point(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), offset, &err);

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
	 * Params:
	 *     html = A #gchar
	 *
	 * Returns: A #WebKitDOMDocumentFragment
	 *
	 * Throws: GException on failure.
	 */
	public DOMDocumentFragment createContextualFragment(string html)
	{
		GError* err = null;

		auto __p = webkit_dom_range_create_contextual_fragment(webKitDOMRange, Str.toStringz(html), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocumentFragment)(cast(WebKitDOMDocumentFragment*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Throws: GException on failure.
	 */
	public void deleteContents()
	{
		GError* err = null;

		webkit_dom_range_delete_contents(webKitDOMRange, &err);

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
	 * Throws: GException on failure.
	 */
	public void detach()
	{
		GError* err = null;

		webkit_dom_range_detach(webKitDOMRange, &err);

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
	 *     unit = A #gchar
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void expand(string unit)
	{
		GError* err = null;

		webkit_dom_range_expand(webKitDOMRange, Str.toStringz(unit), &err);

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
	 * Returns: A #WebKitDOMDocumentFragment
	 *
	 * Throws: GException on failure.
	 */
	public DOMDocumentFragment extractContents()
	{
		GError* err = null;

		auto __p = webkit_dom_range_extract_contents(webKitDOMRange, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMDocumentFragment)(cast(WebKitDOMDocumentFragment*) __p);
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
	public bool getCollapsed()
	{
		GError* err = null;

		auto __p = webkit_dom_range_get_collapsed(webKitDOMRange, &err) != 0;

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
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode getCommonAncestorContainer()
	{
		GError* err = null;

		auto __p = webkit_dom_range_get_common_ancestor_container(webKitDOMRange, &err);

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
	public DOMNode getEndContainer()
	{
		GError* err = null;

		auto __p = webkit_dom_range_get_end_container(webKitDOMRange, &err);

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
	 * Returns: A #glong
	 *
	 * Throws: GException on failure.
	 */
	public glong getEndOffset()
	{
		GError* err = null;

		auto __p = webkit_dom_range_get_end_offset(webKitDOMRange, &err);

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
	 * Returns: A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public DOMNode getStartContainer()
	{
		GError* err = null;

		auto __p = webkit_dom_range_get_start_container(webKitDOMRange, &err);

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
	 * Returns: A #glong
	 *
	 * Throws: GException on failure.
	 */
	public glong getStartOffset()
	{
		GError* err = null;

		auto __p = webkit_dom_range_get_start_offset(webKitDOMRange, &err);

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
	 */
	public string getText()
	{
		auto retStr = webkit_dom_range_get_text(webKitDOMRange);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     newNode = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void insertNode(DOMNode newNode)
	{
		GError* err = null;

		webkit_dom_range_insert_node(webKitDOMRange, (newNode is null) ? null : newNode.getDOMNodeStruct(), &err);

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
	 *     refNode = A #WebKitDOMNode
	 *
	 * Returns: A #gboolean
	 *
	 * Throws: GException on failure.
	 */
	public bool intersectsNode(DOMNode refNode)
	{
		GError* err = null;

		auto __p = webkit_dom_range_intersects_node(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err) != 0;

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
	 * Params:
	 *     refNode = A #WebKitDOMNode
	 *     offset = A #glong
	 *
	 * Returns: A #gboolean
	 *
	 * Throws: GException on failure.
	 */
	public bool isPointInRange(DOMNode refNode, glong offset)
	{
		GError* err = null;

		auto __p = webkit_dom_range_is_point_in_range(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), offset, &err) != 0;

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
	 * Params:
	 *     refNode = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void selectNode(DOMNode refNode)
	{
		GError* err = null;

		webkit_dom_range_select_node(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err);

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
	 *     refNode = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void selectNodeContents(DOMNode refNode)
	{
		GError* err = null;

		webkit_dom_range_select_node_contents(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err);

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
	 *     refNode = A #WebKitDOMNode
	 *     offset = A #glong
	 *
	 * Throws: GException on failure.
	 */
	public void setEnd(DOMNode refNode, glong offset)
	{
		GError* err = null;

		webkit_dom_range_set_end(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), offset, &err);

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
	 *     refNode = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void setEndAfter(DOMNode refNode)
	{
		GError* err = null;

		webkit_dom_range_set_end_after(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err);

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
	 *     refNode = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void setEndBefore(DOMNode refNode)
	{
		GError* err = null;

		webkit_dom_range_set_end_before(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err);

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
	 *     refNode = A #WebKitDOMNode
	 *     offset = A #glong
	 *
	 * Throws: GException on failure.
	 */
	public void setStart(DOMNode refNode, glong offset)
	{
		GError* err = null;

		webkit_dom_range_set_start(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), offset, &err);

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
	 *     refNode = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void setStartAfter(DOMNode refNode)
	{
		GError* err = null;

		webkit_dom_range_set_start_after(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err);

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
	 *     refNode = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void setStartBefore(DOMNode refNode)
	{
		GError* err = null;

		webkit_dom_range_set_start_before(webKitDOMRange, (refNode is null) ? null : refNode.getDOMNodeStruct(), &err);

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
	 *     newParent = A #WebKitDOMNode
	 *
	 * Throws: GException on failure.
	 */
	public void surroundContents(DOMNode newParent)
	{
		GError* err = null;

		webkit_dom_range_surround_contents(webKitDOMRange, (newParent is null) ? null : newParent.getDOMNodeStruct(), &err);

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
	 * Returns: A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public override string toString()
	{
		GError* err = null;

		auto retStr = webkit_dom_range_to_string(webKitDOMRange, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
