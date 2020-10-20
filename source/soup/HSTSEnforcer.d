module soup.HSTSEnforcer;

private import glib.ConstructionException;
private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import soup.HSTSPolicy;
private import soup.Message;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.c.functions;
public  import soup.c.types;
private import std.algorithm;


/**
 * A #SoupHSTSEnforcer stores HSTS policies and enforces them when
 * required. #SoupHSTSEnforcer implements #SoupSessionFeature, so you
 * can add an HSTS enforcer to a session with
 * soup_session_add_feature() or soup_session_add_feature_by_type().
 * 
 * #SoupHSTSEnforcer keeps track of all the HTTPS destinations that,
 * when connected to, return the Strict-Transport-Security header with
 * valid values. #SoupHSTSEnforcer will forget those destinations
 * upon expiry or when the server requests it.
 * 
 * When the #SoupSession the #SoupHSTSEnforcer is attached to queues
 * or restarts a message, the #SoupHSTSEnforcer will rewrite the URI
 * to HTTPS if the destination is a known HSTS host and is contacted
 * over an insecure transport protocol (HTTP). Users of
 * #SoupHSTSEnforcer are advised to listen to changes in
 * SoupMessage:uri in order to be aware of changes in the message URI.
 * 
 * Note that #SoupHSTSEnforcer does not support any form of long-term
 * HSTS policy persistence. See #SoupHSTSDBEnforcer for a persistent
 * enforcer.
 */
public class HSTSEnforcer : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupHSTSEnforcer* soupHSTSEnforcer;

	/** Get the main Gtk struct */
	public SoupHSTSEnforcer* getHSTSEnforcerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupHSTSEnforcer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupHSTSEnforcer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupHSTSEnforcer* soupHSTSEnforcer, bool ownedRef = false)
	{
		this.soupHSTSEnforcer = soupHSTSEnforcer;
		super(cast(GObject*)soupHSTSEnforcer, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupHSTSEnforcer);


	/** */
	public static GType getType()
	{
		return soup_hsts_enforcer_get_type();
	}

	/**
	 * Creates a new #SoupHSTSEnforcer. The base #SoupHSTSEnforcer class
	 * does not support persistent storage of HSTS policies, see
	 * #SoupHSTSEnforcerDB for that.
	 *
	 * Returns: a new #SoupHSTSEnforcer
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = soup_hsts_enforcer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupHSTSEnforcer*) __p, true);
	}

	/**
	 * Gets a list of domains for which there are policies in @enforcer.
	 *
	 * Params:
	 *     sessionPolicies = whether to include session policies
	 *
	 * Returns: a newly allocated
	 *     list of domains. Use g_list_free_full() and g_free() to free the
	 *     list.
	 *
	 * Since: 2.68
	 */
	public ListG getDomains(bool sessionPolicies)
	{
		auto __p = soup_hsts_enforcer_get_domains(soupHSTSEnforcer, sessionPolicies);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Gets a list with the policies in @enforcer.
	 *
	 * Params:
	 *     sessionPolicies = whether to include session policies
	 *
	 * Returns: a newly
	 *     allocated list of policies. Use g_list_free_full() and
	 *     soup_hsts_policy_free() to free the list.
	 *
	 * Since: 2.68
	 */
	public ListG getPolicies(bool sessionPolicies)
	{
		auto __p = soup_hsts_enforcer_get_policies(soupHSTSEnforcer, sessionPolicies);

		if(__p is null)
		{
			return null;
		}

		return new ListG(cast(GList*) __p, true);
	}

	/**
	 * Gets whether @hsts_enforcer has a currently valid policy for @domain.
	 *
	 * Params:
	 *     domain = a domain.
	 *
	 * Returns: %TRUE if access to @domain should happen over HTTPS, false
	 *     otherwise.
	 *
	 * Since: 2.68
	 */
	public bool hasValidPolicy(string domain)
	{
		return soup_hsts_enforcer_has_valid_policy(soupHSTSEnforcer, Str.toStringz(domain)) != 0;
	}

	/**
	 * Gets whether @hsts_enforcer stores policies persistenly.
	 *
	 * Returns: %TRUE if @hsts_enforcer storage is persistent or %FALSE otherwise.
	 *
	 * Since: 2.68
	 */
	public bool isPersistent()
	{
		return soup_hsts_enforcer_is_persistent(soupHSTSEnforcer) != 0;
	}

	/**
	 * Sets @policy to @hsts_enforcer. If @policy is expired, any
	 * existing HSTS policy for its host will be removed instead. If a
	 * policy existed for this host, it will be replaced. Otherwise, the
	 * new policy will be inserted. If the policy is a session policy, that
	 * is, one created with soup_hsts_policy_new_session_policy(), the policy
	 * will not expire and will be enforced during the lifetime of
	 * @hsts_enforcer's #SoupSession.
	 *
	 * Params:
	 *     policy = the policy of the HSTS host
	 *
	 * Since: 2.68
	 */
	public void setPolicy(HSTSPolicy policy)
	{
		soup_hsts_enforcer_set_policy(soupHSTSEnforcer, (policy is null) ? null : policy.getHSTSPolicyStruct());
	}

	/**
	 * Sets a session policy for @domain. A session policy is a policy
	 * that is permanent to the lifetime of @hsts_enforcer's #SoupSession
	 * and doesn't expire.
	 *
	 * Params:
	 *     domain = policy domain or hostname
	 *     includeSubdomains = %TRUE if the policy applies on sub domains
	 *
	 * Since: 2.68
	 */
	public void setSessionPolicy(string domain, bool includeSubdomains)
	{
		soup_hsts_enforcer_set_session_policy(soupHSTSEnforcer, Str.toStringz(domain), includeSubdomains);
	}

	/**
	 * Emitted when @hsts_enforcer changes. If a policy has been added,
	 * @new_policy will contain the newly-added policy and
	 * @old_policy will be %NULL. If a policy has been deleted,
	 * @old_policy will contain the to-be-deleted policy and
	 * @new_policy will be %NULL. If a policy has been changed,
	 * @old_policy will contain its old value, and @new_policy its
	 * new value.
	 *
	 * Note that you shouldn't modify the policies from a callback to
	 * this signal.
	 *
	 * Params:
	 *     oldPolicy = the old #SoupHSTSPolicy value
	 *     newPolicy = the new #SoupHSTSPolicy value
	 */
	gulong addOnChanged(void delegate(HSTSPolicy, HSTSPolicy, HSTSEnforcer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when @hsts_enforcer has upgraded the protocol
	 * for @message to HTTPS as a result of matching its domain with
	 * a HSTS policy.
	 *
	 * Params:
	 *     message = the message for which HSTS is being enforced
	 */
	gulong addOnHstsEnforced(void delegate(Message, HSTSEnforcer) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "hsts-enforced", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
