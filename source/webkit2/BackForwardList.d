module webkit2.BackForwardList;

private import glib.ListG;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.BackForwardListItem;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitBackForwardList maintains a list of visited pages used to
 * navigate to recent pages. Items are inserted in the list in the
 * order they are visited.
 * 
 * WebKitBackForwardList also maintains the notion of the current item
 * (which is always at index 0), the preceding item (which is at index -1),
 * and the following item (which is at index 1).
 * Methods webkit_web_view_go_back() and webkit_web_view_go_forward() move
 * the current item backward or forward by one. Method
 * webkit_web_view_go_to_back_forward_list_item() sets the current item to the
 * specified item. All other methods returning #WebKitBackForwardListItem<!-- -->s
 * do not change the value of the current item, they just return the requested
 * item or items.
 */
public class BackForwardList : ObjectG
{
	/** the main Gtk struct */
	protected WebKitBackForwardList* webKitBackForwardList;

	/** Get the main Gtk struct */
	public WebKitBackForwardList* getBackForwardListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitBackForwardList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitBackForwardList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitBackForwardList* webKitBackForwardList, bool ownedRef = false)
	{
		this.webKitBackForwardList = webKitBackForwardList;
		super(cast(GObject*)webKitBackForwardList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_back_forward_list_get_type();
	}

	/**
	 * Returns the item that precedes the current item.
	 *
	 * Returns: the #WebKitBackForwardListItem
	 *     preceding the current item or %NULL.
	 */
	public BackForwardListItem getBackItem()
	{
		auto __p = webkit_back_forward_list_get_back_item(webKitBackForwardList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BackForwardListItem)(cast(WebKitBackForwardListItem*) __p);
	}

	/**
	 * Returns: a #GList of
	 *     items preceding the current item.
	 */
	public ListG getBackList()
	{
		auto __p = webkit_back_forward_list_get_back_list(webKitBackForwardList);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 *
	 * Params:
	 *     limit = the number of items to retrieve
	 * Returns: a #GList of
	 *     items preceding the current item limited by @limit.
	 */
	public ListG getBackListWithLimit(uint limit)
	{
		auto __p = webkit_back_forward_list_get_back_list_with_limit(webKitBackForwardList, limit);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns the current item in @back_forward_list.
	 *
	 * Returns: a #WebKitBackForwardListItem
	 *     or %NULL if @back_forward_list is empty.
	 */
	public BackForwardListItem getCurrentItem()
	{
		auto __p = webkit_back_forward_list_get_current_item(webKitBackForwardList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BackForwardListItem)(cast(WebKitBackForwardListItem*) __p);
	}

	/**
	 * Returns the item that follows the current item.
	 *
	 * Returns: the #WebKitBackForwardListItem
	 *     following the current item or %NULL.
	 */
	public BackForwardListItem getForwardItem()
	{
		auto __p = webkit_back_forward_list_get_forward_item(webKitBackForwardList);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BackForwardListItem)(cast(WebKitBackForwardListItem*) __p);
	}

	/**
	 * Returns: a #GList of
	 *     items following the current item.
	 */
	public ListG getForwardList()
	{
		auto __p = webkit_back_forward_list_get_forward_list(webKitBackForwardList);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 *
	 * Params:
	 *     limit = the number of items to retrieve
	 * Returns: a #GList of
	 *     items following the current item limited by @limit.
	 */
	public ListG getForwardListWithLimit(uint limit)
	{
		auto __p = webkit_back_forward_list_get_forward_list_with_limit(webKitBackForwardList, limit);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Returns: the length of @back_forward_list.
	 */
	public uint getLength()
	{
		return webkit_back_forward_list_get_length(webKitBackForwardList);
	}

	/**
	 * Returns the item at a given index relative to the current item.
	 *
	 * Params:
	 *     index = the index of the item
	 *
	 * Returns: the #WebKitBackForwardListItem
	 *     located at the specified index relative to the current item or %NULL.
	 */
	public BackForwardListItem getNthItem(int index)
	{
		auto __p = webkit_back_forward_list_get_nth_item(webKitBackForwardList, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(BackForwardListItem)(cast(WebKitBackForwardListItem*) __p);
	}

	/**
	 * This signal is emitted when @back_forward_list changes. This happens
	 * when the current item is updated, a new item is added or one or more
	 * items are removed. Note that both @item_added and @items_removed can
	 * %NULL when only the current item is updated. Items are only removed
	 * when the list is cleared or the maximum items limit is reached.
	 *
	 * Params:
	 *     itemAdded = the #WebKitBackForwardListItem added or %NULL
	 *     itemsRemoved = a #GList of #WebKitBackForwardListItem<!-- -->s
	 */
	gulong addOnChanged(void delegate(BackForwardListItem, void*, BackForwardList) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
