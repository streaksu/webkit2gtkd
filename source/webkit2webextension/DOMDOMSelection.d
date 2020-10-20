module webkit2webextension.DOMDOMSelection;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.DOMRange;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMDOMSelection : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMDOMSelection* webKitDOMDOMSelection;

	/** Get the main Gtk struct */
	public WebKitDOMDOMSelection* getDOMDOMSelectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMDOMSelection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMDOMSelection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMDOMSelection* webKitDOMDOMSelection, bool ownedRef = false)
	{
		this.webKitDOMDOMSelection = webKitDOMDOMSelection;
		super(cast(WebKitDOMObject*)webKitDOMDOMSelection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_dom_selection_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     range = A #WebKitDOMRange
	 *
	 * Since: 2.16
	 */
	public void addRange(DOMRange range)
	{
		webkit_dom_dom_selection_add_range(webKitDOMDOMSelection, (range is null) ? null : range.getDOMRangeStruct());
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     node = A #WebKitDOMNode
	 *     offset = A #gulong
	 *
	 * Since: 2.16
	 */
	public void collapse(DOMNode node, gulong offset)
	{
		webkit_dom_dom_selection_collapse(webKitDOMDOMSelection, (node is null) ? null : node.getDOMNodeStruct(), offset);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void collapseToEnd()
	{
		GError* err = null;

		webkit_dom_dom_selection_collapse_to_end(webKitDOMDOMSelection, &err);

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
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void collapseToStart()
	{
		GError* err = null;

		webkit_dom_dom_selection_collapse_to_start(webKitDOMDOMSelection, &err);

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
	 *     node = A #WebKitDOMNode
	 *     allowPartial = A #gboolean
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool containsNode(DOMNode node, bool allowPartial)
	{
		return webkit_dom_dom_selection_contains_node(webKitDOMDOMSelection, (node is null) ? null : node.getDOMNodeStruct(), allowPartial) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void deleteFromDocument()
	{
		webkit_dom_dom_selection_delete_from_document(webKitDOMDOMSelection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void empty()
	{
		webkit_dom_dom_selection_empty(webKitDOMDOMSelection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     node = A #WebKitDOMNode
	 *     offset = A #gulong
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public void extend(DOMNode node, gulong offset)
	{
		GError* err = null;

		webkit_dom_dom_selection_extend(webKitDOMDOMSelection, (node is null) ? null : node.getDOMNodeStruct(), offset, &err);

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
	 * Returns: A #WebKitDOMNode
	 *
	 * Since: 2.16
	 */
	public DOMNode getAnchorNode()
	{
		auto __p = webkit_dom_dom_selection_get_anchor_node(webKitDOMDOMSelection);

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
	 * Since: 2.16
	 */
	public gulong getAnchorOffset()
	{
		return webkit_dom_dom_selection_get_anchor_offset(webKitDOMDOMSelection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Since: 2.16
	 */
	public DOMNode getBaseNode()
	{
		auto __p = webkit_dom_dom_selection_get_base_node(webKitDOMDOMSelection);

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
	 * Since: 2.16
	 */
	public gulong getBaseOffset()
	{
		return webkit_dom_dom_selection_get_base_offset(webKitDOMDOMSelection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Since: 2.16
	 */
	public DOMNode getExtentNode()
	{
		auto __p = webkit_dom_dom_selection_get_extent_node(webKitDOMDOMSelection);

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
	 * Since: 2.16
	 */
	public gulong getExtentOffset()
	{
		return webkit_dom_dom_selection_get_extent_offset(webKitDOMDOMSelection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 *
	 * Since: 2.16
	 */
	public DOMNode getFocusNode()
	{
		auto __p = webkit_dom_dom_selection_get_focus_node(webKitDOMDOMSelection);

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
	 * Since: 2.16
	 */
	public gulong getFocusOffset()
	{
		return webkit_dom_dom_selection_get_focus_offset(webKitDOMDOMSelection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 *
	 * Since: 2.16
	 */
	public bool getIsCollapsed()
	{
		return webkit_dom_dom_selection_get_is_collapsed(webKitDOMDOMSelection) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMRange
	 *
	 * Since: 2.16
	 *
	 * Throws: GException on failure.
	 */
	public DOMRange getRangeAt(gulong index)
	{
		GError* err = null;

		auto __p = webkit_dom_dom_selection_get_range_at(webKitDOMDOMSelection, index, &err);

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
	 * Returns: A #gulong
	 *
	 * Since: 2.16
	 */
	public gulong getRangeCount()
	{
		return webkit_dom_dom_selection_get_range_count(webKitDOMDOMSelection);
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
	public string getSelectionType()
	{
		auto retStr = webkit_dom_dom_selection_get_selection_type(webKitDOMDOMSelection);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     alter = A #gchar
	 *     direction = A #gchar
	 *     granularity = A #gchar
	 *
	 * Since: 2.16
	 */
	public void modify(string alter, string direction, string granularity)
	{
		webkit_dom_dom_selection_modify(webKitDOMDOMSelection, Str.toStringz(alter), Str.toStringz(direction), Str.toStringz(granularity));
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Since: 2.16
	 */
	public void removeAllRanges()
	{
		webkit_dom_dom_selection_remove_all_ranges(webKitDOMDOMSelection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     node = A #WebKitDOMNode
	 *
	 * Since: 2.16
	 */
	public void selectAllChildren(DOMNode node)
	{
		webkit_dom_dom_selection_select_all_children(webKitDOMDOMSelection, (node is null) ? null : node.getDOMNodeStruct());
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     baseNode = A #WebKitDOMNode
	 *     baseOffset = A #gulong
	 *     extentNode = A #WebKitDOMNode
	 *     extentOffset = A #gulong
	 *
	 * Since: 2.16
	 */
	public void setBaseAndExtent(DOMNode baseNode, gulong baseOffset, DOMNode extentNode, gulong extentOffset)
	{
		webkit_dom_dom_selection_set_base_and_extent(webKitDOMDOMSelection, (baseNode is null) ? null : baseNode.getDOMNodeStruct(), baseOffset, (extentNode is null) ? null : extentNode.getDOMNodeStruct(), extentOffset);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     node = A #WebKitDOMNode
	 *     offset = A #gulong
	 *
	 * Since: 2.16
	 */
	public void setPosition(DOMNode node, gulong offset)
	{
		webkit_dom_dom_selection_set_position(webKitDOMDOMSelection, (node is null) ? null : node.getDOMNodeStruct(), offset);
	}
}
