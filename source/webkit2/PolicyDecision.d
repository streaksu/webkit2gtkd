module webkit2.PolicyDecision;

private import gobject.ObjectG;
private import webkit2.WebsitePolicies;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * Often WebKit allows the client to decide the policy for certain
 * operations. For instance, a client may want to open a link in a new
 * tab, block a navigation entirely, query the user or trigger a download
 * instead of a navigation. In these cases WebKit will fire the
 * #WebKitWebView::decide-policy signal with a #WebKitPolicyDecision
 * object. If the signal handler does nothing, WebKit will act as if
 * webkit_policy_decision_use() was called as soon as signal handling
 * completes. To make a policy decision asynchronously, simply increment
 * the reference count of the #WebKitPolicyDecision object.
 */
public class PolicyDecision : ObjectG
{
	/** the main Gtk struct */
	protected WebKitPolicyDecision* webKitPolicyDecision;

	/** Get the main Gtk struct */
	public WebKitPolicyDecision* getPolicyDecisionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitPolicyDecision;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitPolicyDecision;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitPolicyDecision* webKitPolicyDecision, bool ownedRef = false)
	{
		this.webKitPolicyDecision = webKitPolicyDecision;
		super(cast(GObject*)webKitPolicyDecision, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_policy_decision_get_type();
	}

	/**
	 * Spawn a download from this decision.
	 */
	public void download()
	{
		webkit_policy_decision_download(webKitPolicyDecision);
	}

	/**
	 * Ignore the action which triggered this decision. For instance, for a
	 * #WebKitResponsePolicyDecision, this would cancel the request.
	 */
	public void ignore()
	{
		webkit_policy_decision_ignore(webKitPolicyDecision);
	}

	/**
	 * Accept the action which triggered this decision.
	 */
	public void use()
	{
		webkit_policy_decision_use(webKitPolicyDecision);
	}

	/**
	 * Accept the navigation action which triggered this decision, and
	 * continue with @policies affecting all subsequent loads of resources
	 * in the origin associated with the accepted navigation action.
	 *
	 * For example, a navigation decision to a video sharing website may
	 * be accepted under the priviso no movies are allowed to autoplay. The
	 * autoplay policy in this case would be set in the @policies.
	 *
	 * Params:
	 *     policies = a #WebKitWebsitePolicies
	 *
	 * Since: 2.30
	 */
	public void useWithPolicies(WebsitePolicies policies)
	{
		webkit_policy_decision_use_with_policies(webKitPolicyDecision, (policies is null) ? null : policies.getWebsitePoliciesStruct());
	}
}
