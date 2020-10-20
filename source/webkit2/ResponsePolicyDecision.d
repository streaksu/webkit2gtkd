module webkit2.ResponsePolicyDecision;

private import gobject.ObjectG;
private import webkit2.PolicyDecision;
private import webkit2.URIRequest;
private import webkit2.URIResponse;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitResponsePolicyDecision represents a policy decision for a
 * resource response, whether from the network or the local system.
 * A very common use case for these types of decision is deciding
 * whether or not to download a particular resource or to load it
 * normally.
 */
public class ResponsePolicyDecision : PolicyDecision
{
	/** the main Gtk struct */
	protected WebKitResponsePolicyDecision* webKitResponsePolicyDecision;

	/** Get the main Gtk struct */
	public WebKitResponsePolicyDecision* getResponsePolicyDecisionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitResponsePolicyDecision;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitResponsePolicyDecision;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitResponsePolicyDecision* webKitResponsePolicyDecision, bool ownedRef = false)
	{
		this.webKitResponsePolicyDecision = webKitResponsePolicyDecision;
		super(cast(WebKitPolicyDecision*)webKitResponsePolicyDecision, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_response_policy_decision_get_type();
	}

	/**
	 * Return the #WebKitURIRequest associated with the response decision.
	 * Modifications to the returned object are <emphasis>not</emphasis> taken
	 * into account when the request is sent over the network, and is intended
	 * only to aid in evaluating whether a response decision should be taken or
	 * not. To modify requests before they are sent over the network the
	 * #WebKitPage::send-request signal can be used instead.
	 *
	 * Returns: The URI request that is associated with this policy decision.
	 */
	public URIRequest getRequest()
	{
		auto __p = webkit_response_policy_decision_get_request(webKitResponsePolicyDecision);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URIRequest)(cast(WebKitURIRequest*) __p);
	}

	/**
	 * Gets the value of the #WebKitResponsePolicyDecision:response property.
	 *
	 * Returns: The URI response that is associated with this policy decision.
	 */
	public URIResponse getResponse()
	{
		auto __p = webkit_response_policy_decision_get_response(webKitResponsePolicyDecision);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URIResponse)(cast(WebKitURIResponse*) __p);
	}

	/**
	 * Gets whether the MIME type of the response can be displayed in the #WebKitWebView
	 * that triggered this policy decision request. See also webkit_web_view_can_show_mime_type().
	 *
	 * Returns: %TRUE if the MIME type of the response is supported or %FALSE otherwise
	 *
	 * Since: 2.4
	 */
	public bool isMimeTypeSupported()
	{
		return webkit_response_policy_decision_is_mime_type_supported(webKitResponsePolicyDecision) != 0;
	}
}
