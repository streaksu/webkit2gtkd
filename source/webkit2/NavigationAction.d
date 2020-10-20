module webkit2.NavigationAction;

private import gobject.ObjectG;
private import webkit2.URIRequest;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class NavigationAction
{
	/** the main Gtk struct */
	protected WebKitNavigationAction* webKitNavigationAction;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitNavigationAction* getNavigationActionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitNavigationAction;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitNavigationAction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitNavigationAction* webKitNavigationAction, bool ownedRef = false)
	{
		this.webKitNavigationAction = webKitNavigationAction;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_navigation_action_free(webKitNavigationAction);
	}


	/** */
	public static GType getType()
	{
		return webkit_navigation_action_get_type();
	}

	/**
	 * Make a copy of @navigation.
	 *
	 * Returns: A copy of passed in #WebKitNavigationAction
	 *
	 * Since: 2.6
	 */
	public NavigationAction copy()
	{
		auto __p = webkit_navigation_action_copy(webKitNavigationAction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NavigationAction)(cast(WebKitNavigationAction*) __p, true);
	}

	/**
	 * Free the #WebKitNavigationAction
	 *
	 * Since: 2.6
	 */
	public void free()
	{
		webkit_navigation_action_free(webKitNavigationAction);
		ownedRef = false;
	}

	/**
	 * Return a bitmask of #GdkModifierType values describing the modifier keys that were in effect
	 * when the navigation was requested
	 *
	 * Returns: the modifier keys
	 *
	 * Since: 2.6
	 */
	public uint getModifiers()
	{
		return webkit_navigation_action_get_modifiers(webKitNavigationAction);
	}

	/**
	 * Return the number of the mouse button that triggered the navigation, or 0 if
	 * the navigation was not started by a mouse event.
	 *
	 * Returns: the mouse button number or 0
	 *
	 * Since: 2.6
	 */
	public uint getMouseButton()
	{
		return webkit_navigation_action_get_mouse_button(webKitNavigationAction);
	}

	/**
	 * Return the type of action that triggered the navigation.
	 *
	 * Returns: a #WebKitNavigationType
	 *
	 * Since: 2.6
	 */
	public WebKitNavigationType getNavigationType()
	{
		return webkit_navigation_action_get_navigation_type(webKitNavigationAction);
	}

	/**
	 * Return the #WebKitURIRequest associated with the navigation action.
	 * Modifications to the returned object are <emphasis>not</emphasis> taken
	 * into account when the request is sent over the network, and is intended
	 * only to aid in evaluating whether a navigation action should be taken or
	 * not. To modify requests before they are sent over the network the
	 * #WebKitPage::send-request signal can be used instead.
	 *
	 * Returns: a #WebKitURIRequest
	 *
	 * Since: 2.6
	 */
	public URIRequest getRequest()
	{
		auto __p = webkit_navigation_action_get_request(webKitNavigationAction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URIRequest)(cast(WebKitURIRequest*) __p);
	}

	/**
	 * Returns whether the @navigation was redirected.
	 *
	 * Returns: %TRUE if the original navigation was redirected, %FALSE otherwise.
	 *
	 * Since: 2.20
	 */
	public bool isRedirect()
	{
		return webkit_navigation_action_is_redirect(webKitNavigationAction) != 0;
	}

	/**
	 * Return whether the navigation was triggered by a user gesture like a mouse click.
	 *
	 * Returns: whether navigation action is a user gesture
	 *
	 * Since: 2.6
	 */
	public bool isUserGesture()
	{
		return webkit_navigation_action_is_user_gesture(webKitNavigationAction) != 0;
	}
}
