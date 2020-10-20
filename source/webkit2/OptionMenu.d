module webkit2.OptionMenu;

private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.OptionMenuItem;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitOptionMenu represents the dropdown menu of a select element in a #WebKitWebView.
 * 
 * When a select element in a #WebKitWebView needs to display a dropdown menu, the signal
 * #WebKitWebView::show-option-menu is emitted, providing a WebKitOptionMenu with the
 * #WebKitOptionMenuItem<!-- -->s that should be displayed.
 *
 * Since: 2.18
 */
public class OptionMenu : ObjectG
{
	/** the main Gtk struct */
	protected WebKitOptionMenu* webKitOptionMenu;

	/** Get the main Gtk struct */
	public WebKitOptionMenu* getOptionMenuStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitOptionMenu;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitOptionMenu;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitOptionMenu* webKitOptionMenu, bool ownedRef = false)
	{
		this.webKitOptionMenu = webKitOptionMenu;
		super(cast(GObject*)webKitOptionMenu, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_option_menu_get_type();
	}

	/**
	 * Activates the #WebKitOptionMenuItem at @index in @menu. Activating an item changes the value
	 * of the element making the item the active one. You are expected to close the menu with
	 * webkit_option_menu_close() after activating an item, calling this function again will have no
	 * effect.
	 *
	 * Params:
	 *     index = the index of the item
	 *
	 * Since: 2.18
	 */
	public void activateItem(uint index)
	{
		webkit_option_menu_activate_item(webKitOptionMenu, index);
	}

	/**
	 * Request to close a #WebKitOptionMenu. This emits WebKitOptionMenu::close signal.
	 * This function should always be called to notify WebKit that the associated
	 * menu has been closed. If the menu is closed and neither webkit_option_menu_select_item()
	 * nor webkit_option_menu_activate_item() have been called, the element value remains
	 * unchanged.
	 *
	 * Since: 2.18
	 */
	public void close()
	{
		webkit_option_menu_close(webKitOptionMenu);
	}

	/**
	 * Returns the #WebKitOptionMenuItem at @index in @menu.
	 *
	 * Params:
	 *     index = the index of the item
	 *
	 * Returns: a #WebKitOptionMenuItem of @menu.
	 *
	 * Since: 2.18
	 */
	public OptionMenuItem getItem(uint index)
	{
		auto __p = webkit_option_menu_get_item(webKitOptionMenu, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(OptionMenuItem)(cast(WebKitOptionMenuItem*) __p);
	}

	/**
	 * Gets the length of the @menu.
	 *
	 * Returns: the number of #WebKitOptionMenuItem<!-- -->s in @menu
	 *
	 * Since: 2.18
	 */
	public uint getNItems()
	{
		return webkit_option_menu_get_n_items(webKitOptionMenu);
	}

	/**
	 * Selects the #WebKitOptionMenuItem at @index in @menu. Selecting an item changes the
	 * text shown by the combo button, but it doesn't change the value of the element. You need to
	 * explicitly activate the item with webkit_option_menu_select_item() or close the menu with
	 * webkit_option_menu_close() in which case the currently selected item will be activated.
	 *
	 * Params:
	 *     index = the index of the item
	 *
	 * Since: 2.18
	 */
	public void selectItem(uint index)
	{
		webkit_option_menu_select_item(webKitOptionMenu, index);
	}

	/**
	 * Emitted when closing a #WebKitOptionMenu is requested. This can happen
	 * when the user explicitly calls webkit_option_menu_close() or when the
	 * element is detached from the current page.
	 *
	 * Since: 2.18
	 */
	gulong addOnClose(void delegate(OptionMenu) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "close", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
