module webkit2.NavigationPolicyDecision;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.NavigationAction;
private import webkit2.PolicyDecision;
private import webkit2.URIRequest;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitNavigationPolicyDecision represents a policy decision for events associated with
 * navigations. If the value of #WebKitNavigationPolicyDecision:mouse-button is not 0, then
 * the navigation was triggered by a mouse event.
 */
public class NavigationPolicyDecision : PolicyDecision
{
	/** the main Gtk struct */
	protected WebKitNavigationPolicyDecision* webKitNavigationPolicyDecision;

	/** Get the main Gtk struct */
	public WebKitNavigationPolicyDecision* getNavigationPolicyDecisionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitNavigationPolicyDecision;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitNavigationPolicyDecision;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitNavigationPolicyDecision* webKitNavigationPolicyDecision, bool ownedRef = false)
	{
		this.webKitNavigationPolicyDecision = webKitNavigationPolicyDecision;
		super(cast(WebKitPolicyDecision*)webKitNavigationPolicyDecision, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_navigation_policy_decision_get_type();
	}

	/**
	 * Gets the value of the #WebKitNavigationPolicyDecision:frame-name property.
	 *
	 * Returns: The name of the new frame this navigation action targets or %NULL
	 */
	public string getFrameName()
	{
		return Str.toString(webkit_navigation_policy_decision_get_frame_name(webKitNavigationPolicyDecision));
	}

	/**
	 * Gets the value of the #WebKitNavigationPolicyDecision:modifiers property.
	 *
	 * Deprecated: Use webkit_navigation_policy_decision_get_navigation_action() instead.
	 *
	 * Returns: The modifiers active if this decision was triggered by a mouse event
	 */
	public uint getModifiers()
	{
		return webkit_navigation_policy_decision_get_modifiers(webKitNavigationPolicyDecision);
	}

	/**
	 * Gets the value of the #WebKitNavigationPolicyDecision:mouse-button property.
	 *
	 * Deprecated: Use webkit_navigation_policy_decision_get_navigation_action() instead.
	 *
	 * Returns: The mouse button used if this decision was triggered by a mouse event or 0 otherwise
	 */
	public uint getMouseButton()
	{
		return webkit_navigation_policy_decision_get_mouse_button(webKitNavigationPolicyDecision);
	}

	/**
	 * Gets the value of the #WebKitNavigationPolicyDecision:navigation-action property.
	 *
	 * Returns: The #WebKitNavigationAction triggering this policy decision.
	 *
	 * Since: 2.6
	 */
	public NavigationAction getNavigationAction()
	{
		auto __p = webkit_navigation_policy_decision_get_navigation_action(webKitNavigationPolicyDecision);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(NavigationAction)(cast(WebKitNavigationAction*) __p);
	}

	/**
	 * Gets the value of the #WebKitNavigationPolicyDecision:navigation-type property.
	 *
	 * Deprecated: Use webkit_navigation_policy_decision_get_navigation_action() instead.
	 *
	 * Returns: The type of navigation triggering this policy decision.
	 */
	public WebKitNavigationType getNavigationType()
	{
		return webkit_navigation_policy_decision_get_navigation_type(webKitNavigationPolicyDecision);
	}

	/**
	 * Gets the value of the #WebKitNavigationPolicyDecision:request property.
	 *
	 * Deprecated: Use webkit_navigation_policy_decision_get_navigation_action() instead.
	 *
	 * Returns: The URI request that is associated with this navigation
	 */
	public URIRequest getRequest()
	{
		auto __p = webkit_navigation_policy_decision_get_request(webKitNavigationPolicyDecision);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URIRequest)(cast(WebKitURIRequest*) __p);
	}
}
