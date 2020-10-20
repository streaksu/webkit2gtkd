module webkit2.ContextMenuItem;

private import gio.ActionIF;
private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import gtk.Action;
private import webkit2.ContextMenu;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The #WebKitContextMenu is composed of #WebKitContextMenuItem<!--
 * -->s. These items can be created from a #GtkAction, from a
 * #WebKitContextMenuAction or from a #WebKitContextMenuAction and a
 * label. These #WebKitContextMenuAction<!-- -->s denote stock actions
 * for the items. You can also create separators and submenus.
 */
public class ContextMenuItem : ObjectG
{
	/** the main Gtk struct */
	protected WebKitContextMenuItem* webKitContextMenuItem;

	/** Get the main Gtk struct */
	public WebKitContextMenuItem* getContextMenuItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitContextMenuItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitContextMenuItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitContextMenuItem* webKitContextMenuItem, bool ownedRef = false)
	{
		this.webKitContextMenuItem = webKitContextMenuItem;
		super(cast(GObject*)webKitContextMenuItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_context_menu_item_get_type();
	}

	/**
	 * Creates a new #WebKitContextMenuItem for the given @action.
	 *
	 * Deprecated: Use webkit_context_menu_item_new_from_gaction() instead.
	 *
	 * Params:
	 *     action = a #GtkAction
	 *
	 * Returns: the newly created #WebKitContextMenuItem object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Action action)
	{
		auto __p = webkit_context_menu_item_new((action is null) ? null : action.getActionStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Creates a new #WebKitContextMenuItem for the given @action and @label. On activation
	 * @target will be passed as parameter to the callback.
	 *
	 * Params:
	 *     action = a #GAction
	 *     label = the menu item label text
	 *     target = a #GVariant to use as the action target
	 *
	 * Returns: the newly created #WebKitContextMenuItem object.
	 *
	 * Since: 2.18
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(ActionIF action, string label, Variant target)
	{
		auto __p = webkit_context_menu_item_new_from_gaction((action is null) ? null : action.getActionStruct(), Str.toStringz(label), (target is null) ? null : target.getVariantStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_gaction");
		}

		this(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Creates a new #WebKitContextMenuItem for the given stock action.
	 * Stock actions are handled automatically by WebKit so that, for example,
	 * when a menu item created with a %WEBKIT_CONTEXT_MENU_ACTION_STOP is
	 * activated the action associated will be handled by WebKit and the current
	 * load operation will be stopped. You can get the #GAction of a
	 * #WebKitContextMenuItem created with a #WebKitContextMenuAction with
	 * webkit_context_menu_item_get_gaction() and connect to the #GSimpleAction::activate signal
	 * to be notified when the item is activated, but you can't prevent the associated
	 * action from being performed.
	 *
	 * Params:
	 *     action = a #WebKitContextMenuAction stock action
	 *
	 * Returns: the newly created #WebKitContextMenuItem object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(WebKitContextMenuAction action)
	{
		auto __p = webkit_context_menu_item_new_from_stock_action(action);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stock_action");
		}

		this(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Creates a new #WebKitContextMenuItem for the given stock action using the given @label.
	 * Stock actions have a predefined label, this method can be used to create a
	 * #WebKitContextMenuItem for a #WebKitContextMenuAction but using a custom label.
	 *
	 * Params:
	 *     action = a #WebKitContextMenuAction stock action
	 *     label = a custom label text to use instead of the predefined one
	 *
	 * Returns: the newly created #WebKitContextMenuItem object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(WebKitContextMenuAction action, string label)
	{
		auto __p = webkit_context_menu_item_new_from_stock_action_with_label(action, Str.toStringz(label));

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_stock_action_with_label");
		}

		this(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Creates a new #WebKitContextMenuItem representing a separator.
	 *
	 * Returns: the newly created #WebKitContextMenuItem object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = webkit_context_menu_item_new_separator();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_separator");
		}

		this(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Creates a new #WebKitContextMenuItem using the given @label with a submenu.
	 *
	 * Params:
	 *     label = the menu item label text
	 *     submenu = a #WebKitContextMenu to set
	 *
	 * Returns: the newly created #WebKitContextMenuItem object.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string label, ContextMenu submenu)
	{
		auto __p = webkit_context_menu_item_new_with_submenu(Str.toStringz(label), (submenu is null) ? null : submenu.getContextMenuStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_submenu");
		}

		this(cast(WebKitContextMenuItem*) __p);
	}

	/**
	 * Gets the action associated to @item as a #GtkAction.
	 *
	 * Deprecated: Use webkit_context_menu_item_get_gaction() instead.
	 *
	 * Returns: the #GtkAction associated to the #WebKitContextMenuItem,
	 *     or %NULL if @item is a separator.
	 */
	public Action getAction()
	{
		auto __p = webkit_context_menu_item_get_action(webKitContextMenuItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Action)(cast(GtkAction*) __p);
	}

	/**
	 * Gets the action associated to @item as a #GAction.
	 *
	 * Returns: the #GAction associated to the #WebKitContextMenuItem,
	 *     or %NULL if @item is a separator.
	 *
	 * Since: 2.18
	 */
	public ActionIF getGaction()
	{
		auto __p = webkit_context_menu_item_get_gaction(webKitContextMenuItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ActionIF)(cast(GAction*) __p);
	}

	/**
	 * Gets the #WebKitContextMenuAction of @item. If the #WebKitContextMenuItem was not
	 * created for a stock action %WEBKIT_CONTEXT_MENU_ACTION_CUSTOM will be
	 * returned. If the #WebKitContextMenuItem is a separator %WEBKIT_CONTEXT_MENU_ACTION_NO_ACTION
	 * will be returned.
	 *
	 * Returns: the #WebKitContextMenuAction of @item
	 */
	public WebKitContextMenuAction getStockAction()
	{
		return webkit_context_menu_item_get_stock_action(webKitContextMenuItem);
	}

	/**
	 * Gets the submenu of @item.
	 *
	 * Returns: the #WebKitContextMenu representing the submenu of
	 *     @item or %NULL if @item doesn't have a submenu.
	 */
	public ContextMenu getSubmenu()
	{
		auto __p = webkit_context_menu_item_get_submenu(webKitContextMenuItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ContextMenu)(cast(WebKitContextMenu*) __p);
	}

	/**
	 * Checks whether @item is a separator.
	 *
	 * Returns: %TRUE is @item is a separator or %FALSE otherwise
	 */
	public bool isSeparator()
	{
		return webkit_context_menu_item_is_separator(webKitContextMenuItem) != 0;
	}

	/**
	 * Sets or replaces the @item submenu. If @submenu is %NULL the current
	 * submenu of @item is removed.
	 *
	 * Params:
	 *     submenu = a #WebKitContextMenu
	 */
	public void setSubmenu(ContextMenu submenu)
	{
		webkit_context_menu_item_set_submenu(webKitContextMenuItem, (submenu is null) ? null : submenu.getContextMenuStruct());
	}
}
