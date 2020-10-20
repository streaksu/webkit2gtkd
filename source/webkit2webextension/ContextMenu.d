module webkit2webextension.ContextMenu;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Variant;
private import gobject.ObjectG;
private import webkit2webextension.ContextMenuItem;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * #WebKitContextMenu represents a context menu containing
 * #WebKitContextMenuItem<!-- -->s in a #WebKitWebView.
 * 
 * When a #WebKitWebView is about to display the context menu, it
 * emits the #WebKitWebView::context-menu signal, which has the
 * #WebKitContextMenu as an argument. You can modify it, adding new
 * submenus that you can create with webkit_context_menu_new(), adding
 * new #WebKitContextMenuItem<!-- -->s with
 * webkit_context_menu_prepend(), webkit_context_menu_append() or
 * webkit_context_menu_insert(), maybe after having removed the
 * existing ones with webkit_context_menu_remove_all().
 */
public class ContextMenu : ObjectG
{
	/** the main Gtk struct */
	protected WebKitContextMenu* webKitContextMenu;

	/** Get the main Gtk struct */
	public WebKitContextMenu* getContextMenuStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitContextMenu;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitContextMenu;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitContextMenu* webKitContextMenu, bool ownedRef = false)
	{
		this.webKitContextMenu = webKitContextMenu;
		super(cast(GObject*)webKitContextMenu, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_context_menu_get_type();
	}

	/**
	 * Creates a new #WebKitContextMenu object to be used as a submenu of an existing
	 * #WebKitContextMenu. The context menu of a #WebKitWebView is created by the view
	 * and passed as an argument of #WebKitWebView::context-menu signal.
	 * To add items to the menu use webkit_context_menu_prepend(),
	 * webkit_context_menu_append() or webkit_context_menu_insert().
	 * See also webkit_context_menu_new_with_items() to create a #WebKitContextMenu with
	 * a list of initial items.
	 *
	 * Returns: The newly created #WebKitContextMenu object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_context_menu_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitContextMenu*) __p, true);
	}

	/**
	 * Creates a new #WebKitContextMenu object to be used as a submenu of an existing
	 * #WebKitContextMenu with the given initial items.
	 * See also webkit_context_menu_new()
	 *
	 * Params:
	 *     items = a #GList of #WebKitContextMenuItem
	 *
	 * Returns: The newly created #WebKitContextMenu object
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ListG items)
	{
		auto __p = webkit_context_menu_new_with_items((items is null) ? null : items.getListGStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_items");
		}

		this(cast(WebKitContextMenu*) __p, true);
	}

	/**
	 * Adds @item at the end of the @menu.
	 *
	 * Params:
	 *     item = the #WebKitContextMenuItem to add
	 */
	public void append(ContextMenuItem item)
	{
		webkit_context_menu_append(webKitContextMenu, (item is null) ? null : item.getContextMenuItemStruct());
	}

	/**
	 * Gets the first item in the @menu.
	 *
	 * Returns: the first #WebKitContextMenuItem of @menu,
	 *     or %NULL if the #WebKitContextMenu is empty.
	 */
	public ContextMenuItem first()
	{
		auto __p = webkit_context_menu_first(webKitContextMenu);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContextMenuItem)(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Gets the item at the given position in the @menu.
	 *
	 * Params:
	 *     position = the position of the item, counting from 0
	 *
	 * Returns: the #WebKitContextMenuItem at position @position in @menu,
	 *     or %NULL if the position is off the end of the @menu.
	 */
	public ContextMenuItem getItemAtPosition(uint position)
	{
		auto __p = webkit_context_menu_get_item_at_position(webKitContextMenu, position);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContextMenuItem)(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Returns the item list of @menu.
	 *
	 * Returns: a #GList of
	 *     #WebKitContextMenuItem<!-- -->s
	 */
	public ListG getItems()
	{
		auto __p = webkit_context_menu_get_items(webKitContextMenu);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p);
	}

	/**
	 * Gets the length of the @menu.
	 *
	 * Returns: the number of #WebKitContextMenuItem<!-- -->s in @menu
	 */
	public uint getNItems()
	{
		return webkit_context_menu_get_n_items(webKitContextMenu);
	}

	/**
	 * Gets the user data of @menu.
	 * This function can be used from the UI Process to get user data previously set
	 * from the Web Process with webkit_context_menu_set_user_data().
	 *
	 * Returns: the user data of @menu, or %NULL if @menu doesn't have user data
	 *
	 * Since: 2.8
	 */
	public Variant getUserData()
	{
		auto __p = webkit_context_menu_get_user_data(webKitContextMenu);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Inserts @item into the @menu at the given position.
	 * If @position is negative, or is larger than the number of items
	 * in the #WebKitContextMenu, the item is added on to the end of
	 * the @menu. The first position is 0.
	 *
	 * Params:
	 *     item = the #WebKitContextMenuItem to add
	 *     position = the position to insert the item
	 */
	public void insert(ContextMenuItem item, int position)
	{
		webkit_context_menu_insert(webKitContextMenu, (item is null) ? null : item.getContextMenuItemStruct(), position);
	}

	/**
	 * Gets the last item in the @menu.
	 *
	 * Returns: the last #WebKitContextMenuItem of @menu,
	 *     or %NULL if the #WebKitContextMenu is empty.
	 */
	public ContextMenuItem last()
	{
		auto __p = webkit_context_menu_last(webKitContextMenu);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContextMenuItem)(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Moves @item to the given position in the @menu.
	 * If @position is negative, or is larger than the number of items
	 * in the #WebKitContextMenu, the item is added on to the end of
	 * the @menu.
	 * The first position is 0.
	 *
	 * Params:
	 *     item = the #WebKitContextMenuItem to add
	 *     position = the new position to move the item
	 */
	public void moveItem(ContextMenuItem item, int position)
	{
		webkit_context_menu_move_item(webKitContextMenu, (item is null) ? null : item.getContextMenuItemStruct(), position);
	}

	/**
	 * Adds @item at the beginning of the @menu.
	 *
	 * Params:
	 *     item = the #WebKitContextMenuItem to add
	 */
	public void prepend(ContextMenuItem item)
	{
		webkit_context_menu_prepend(webKitContextMenu, (item is null) ? null : item.getContextMenuItemStruct());
	}

	/**
	 * Removes @item from the @menu.
	 * See also webkit_context_menu_remove_all() to remove all items.
	 *
	 * Params:
	 *     item = the #WebKitContextMenuItem to remove
	 */
	public void remove(ContextMenuItem item)
	{
		webkit_context_menu_remove(webKitContextMenu, (item is null) ? null : item.getContextMenuItemStruct());
	}

	/**
	 * Removes all items of the @menu.
	 */
	public void removeAll()
	{
		webkit_context_menu_remove_all(webKitContextMenu);
	}

	/**
	 * Sets user data to @menu.
	 * This function can be used from a Web Process extension to set user data
	 * that can be retrieved from the UI Process using webkit_context_menu_get_user_data().
	 * If the @user_data #GVariant is floating, it is consumed.
	 *
	 * Params:
	 *     userData = a #GVariant
	 *
	 * Since: 2.8
	 */
	public void setUserData(Variant userData)
	{
		webkit_context_menu_set_user_data(webKitContextMenu, (userData is null) ? null : userData.getVariantStruct());
	}
}
