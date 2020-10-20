module webkit2.OptionMenuItem;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * The #WebKitOptionMenu is composed of WebKitOptionMenuItem<!-- -->s.
 * A WebKitOptionMenuItem always has a label and can contain a tooltip text.
 * You can use the WebKitOptionMenuItem of a #WebKitOptionMenu to build your
 * own menus.
 *
 * Since: 2.18
 */
public class OptionMenuItem
{
	/** the main Gtk struct */
	protected WebKitOptionMenuItem* webKitOptionMenuItem;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitOptionMenuItem* getOptionMenuItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitOptionMenuItem;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitOptionMenuItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitOptionMenuItem* webKitOptionMenuItem, bool ownedRef = false)
	{
		this.webKitOptionMenuItem = webKitOptionMenuItem;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_option_menu_item_free(webKitOptionMenuItem);
	}


	/** */
	public static GType getType()
	{
		return webkit_option_menu_item_get_type();
	}

	/**
	 * Make a copy of the #WebKitOptionMenuItem.
	 *
	 * Returns: A copy of passed in #WebKitOptionMenuItem
	 *
	 * Since: 2.18
	 */
	public OptionMenuItem copy()
	{
		auto __p = webkit_option_menu_item_copy(webKitOptionMenuItem);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OptionMenuItem)(cast(WebKitOptionMenuItem*) __p, true);
	}

	/**
	 * Free the #WebKitOptionMenuItem.
	 *
	 * Since: 2.18
	 */
	public void free()
	{
		webkit_option_menu_item_free(webKitOptionMenuItem);
		ownedRef = false;
	}

	/**
	 * Get the label of a #WebKitOptionMenuItem.
	 *
	 * Returns: The label of @item.
	 *
	 * Since: 2.18
	 */
	public string getLabel()
	{
		return Str.toString(webkit_option_menu_item_get_label(webKitOptionMenuItem));
	}

	/**
	 * Get the tooltip of a #WebKitOptionMenuItem.
	 *
	 * Returns: The tooltip of @item, or %NULL.
	 *
	 * Since: 2.18
	 */
	public string getTooltip()
	{
		return Str.toString(webkit_option_menu_item_get_tooltip(webKitOptionMenuItem));
	}

	/**
	 * Whether a #WebKitOptionMenuItem is enabled.
	 *
	 * Returns: %TRUE if the @item is enabled or %FALSE otherwise.
	 *
	 * Since: 2.18
	 */
	public bool isEnabled()
	{
		return webkit_option_menu_item_is_enabled(webKitOptionMenuItem) != 0;
	}

	/**
	 * Whether a #WebKitOptionMenuItem is a group child.
	 *
	 * Returns: %TRUE if the @item is a group child or %FALSE otherwise.
	 *
	 * Since: 2.18
	 */
	public bool isGroupChild()
	{
		return webkit_option_menu_item_is_group_child(webKitOptionMenuItem) != 0;
	}

	/**
	 * Whether a #WebKitOptionMenuItem is a group label.
	 *
	 * Returns: %TRUE if the @item is a group label or %FALSE otherwise.
	 *
	 * Since: 2.18
	 */
	public bool isGroupLabel()
	{
		return webkit_option_menu_item_is_group_label(webKitOptionMenuItem) != 0;
	}

	/**
	 * Whether a #WebKitOptionMenuItem is the currently selected one.
	 *
	 * Returns: %TRUE if the @item is selected or %FALSE otherwise.
	 *
	 * Since: 2.18
	 */
	public bool isSelected()
	{
		return webkit_option_menu_item_is_selected(webKitOptionMenuItem) != 0;
	}
}
