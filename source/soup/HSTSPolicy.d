module soup.HSTSPolicy;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import soup.Date;
private import soup.Message;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupHSTSPolicy implements HTTP policies, as described by <ulink
 * url="http://tools.ietf.org/html/rfc6797">RFC 6797</ulink>.
 * 
 * To have a #SoupSession handle HSTS policies for your appliction
 * automatically, use a #SoupHSTSEnforcer.
 *
 * Since: 2.68
 */
public final class HSTSPolicy
{
	/** the main Gtk struct */
	protected SoupHSTSPolicy* soupHSTSPolicy;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupHSTSPolicy* getHSTSPolicyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupHSTSPolicy;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupHSTSPolicy;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupHSTSPolicy* soupHSTSPolicy, bool ownedRef = false)
	{
		this.soupHSTSPolicy = soupHSTSPolicy;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			soup_hsts_policy_free(soupHSTSPolicy);
	}


	/**
	 * The domain or hostname that the policy applies to
	 */
	public @property string domain()
	{
		return Str.toString(soupHSTSPolicy.domain);
	}

	/** Ditto */
	public @property void domain(string value)
	{
		soupHSTSPolicy.domain = Str.toStringz(value);
	}

	/**
	 * The maximum age, in seconds, that the policy is valid
	 */
	public @property ulong maxAge()
	{
		return soupHSTSPolicy.maxAge;
	}

	/** Ditto */
	public @property void maxAge(ulong value)
	{
		soupHSTSPolicy.maxAge = value;
	}

	/**
	 * the policy expiration time, or %NULL for a permanent session policy
	 */
	public @property Date expires()
	{
		return ObjectG.getDObject!(Date)(soupHSTSPolicy.expires, false);
	}

	/** Ditto */
	public @property void expires(Date value)
	{
		soupHSTSPolicy.expires = value.getDateStruct();
	}

	/**
	 * %TRUE if the policy applies on subdomains
	 */
	public @property bool includeSubdomains()
	{
		return soupHSTSPolicy.includeSubdomains != 0;
	}

	/** Ditto */
	public @property void includeSubdomains(bool value)
	{
		soupHSTSPolicy.includeSubdomains = value;
	}

	/** */
	public static GType getType()
	{
		return soup_hsts_policy_get_type();
	}

	/**
	 * Creates a new #SoupHSTSPolicy with the given attributes.
	 *
	 * @domain is a domain on which the strict transport security policy
	 * represented by this object must be enforced.
	 *
	 * @max_age is used to set the "expires" attribute on the policy; pass
	 * SOUP_HSTS_POLICY_MAX_AGE_PAST for an already-expired policy, or a
	 * lifetime in seconds.
	 *
	 * If @include_subdomains is %TRUE, the strict transport security policy
	 * must also be enforced on all subdomains of @domain.
	 *
	 * Params:
	 *     domain = policy domain or hostname
	 *     maxAge = max age of the policy
	 *     includeSubdomains = %TRUE if the policy applies on subdomains
	 *
	 * Returns: a new #SoupHSTSPolicy.
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string domain, ulong maxAge, bool includeSubdomains)
	{
		auto __p = soup_hsts_policy_new(Str.toStringz(domain), maxAge, includeSubdomains);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupHSTSPolicy*) __p);
	}

	/**
	 * Parses @msg's first "Strict-Transport-Security" response header and
	 * returns a #SoupHSTSPolicy.
	 *
	 * Params:
	 *     msg = a #SoupMessage
	 *
	 * Returns: a new #SoupHSTSPolicy, or %NULL if no valid
	 *     "Strict-Transport-Security" response header was found.
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Message msg)
	{
		auto __p = soup_hsts_policy_new_from_response((msg is null) ? null : msg.getMessageStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_from_response");
		}

		this(cast(SoupHSTSPolicy*) __p);
	}

	/**
	 * Full version of #soup_hsts_policy_new(), to use with an existing
	 * expiration date. See #soup_hsts_policy_new() for details.
	 *
	 * Params:
	 *     domain = policy domain or hostname
	 *     maxAge = max age of the policy
	 *     expires = the date of expiration of the policy or %NULL for a permanent policy
	 *     includeSubdomains = %TRUE if the policy applies on subdomains
	 *
	 * Returns: a new #SoupHSTSPolicy.
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string domain, ulong maxAge, Date expires, bool includeSubdomains)
	{
		auto __p = soup_hsts_policy_new_full(Str.toStringz(domain), maxAge, (expires is null) ? null : expires.getDateStruct(), includeSubdomains);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_full");
		}

		this(cast(SoupHSTSPolicy*) __p);
	}

	/**
	 * Creates a new session #SoupHSTSPolicy with the given attributes.
	 * A session policy is a policy that is valid during the lifetime of
	 * the #SoupHSTSEnforcer it is added to. Contrary to regular policies,
	 * it has no expiration date and is not stored in persistent
	 * enforcers. These policies are useful for user-agent to load their
	 * own or user-defined rules.
	 *
	 * @domain is a domain on which the strict transport security policy
	 * represented by this object must be enforced.
	 *
	 * If @include_subdomains is %TRUE, the strict transport security policy
	 * must also be enforced on all subdomains of @domain.
	 *
	 * Params:
	 *     domain = policy domain or hostname
	 *     includeSubdomains = %TRUE if the policy applies on sub domains
	 *
	 * Returns: a new #SoupHSTSPolicy.
	 *
	 * Since: 2.68
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string domain, bool includeSubdomains)
	{
		auto __p = soup_hsts_policy_new_session_policy(Str.toStringz(domain), includeSubdomains);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_session_policy");
		}

		this(cast(SoupHSTSPolicy*) __p);
	}

	/**
	 * Copies @policy.
	 *
	 * Returns: a copy of @policy
	 *
	 * Since: 2.68
	 */
	public HSTSPolicy copy()
	{
		auto __p = soup_hsts_policy_copy(soupHSTSPolicy);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(HSTSPolicy)(cast(SoupHSTSPolicy*) __p, true);
	}

	/**
	 * Tests if @policy1 and @policy2 are equal.
	 *
	 * Params:
	 *     policy2 = a #SoupHSTSPolicy
	 *
	 * Returns: whether the policies are equal.
	 *
	 * Since: 2.68
	 */
	public bool equal(HSTSPolicy policy2)
	{
		return soup_hsts_policy_equal(soupHSTSPolicy, (policy2 is null) ? null : policy2.getHSTSPolicyStruct()) != 0;
	}

	/**
	 * Frees @policy.
	 *
	 * Since: 2.68
	 */
	public void free()
	{
		soup_hsts_policy_free(soupHSTSPolicy);
		ownedRef = false;
	}

	/**
	 * Gets @policy's domain.
	 *
	 * Returns: @policy's domain.
	 *
	 * Since: 2.68
	 */
	public string getDomain()
	{
		return Str.toString(soup_hsts_policy_get_domain(soupHSTSPolicy));
	}

	/**
	 * Gets whether @policy include its subdomains.
	 *
	 * Returns: %TRUE if @policy includes subdomains, %FALSE otherwise.
	 *
	 * Since: 2.68
	 */
	public bool includesSubdomains()
	{
		return soup_hsts_policy_includes_subdomains(soupHSTSPolicy) != 0;
	}

	/**
	 * Gets whether @policy is expired. Permanent policies never
	 * expire.
	 *
	 * Returns: %TRUE if @policy is expired, %FALSE otherwise.
	 *
	 * Since: 2.68
	 */
	public bool isExpired()
	{
		return soup_hsts_policy_is_expired(soupHSTSPolicy) != 0;
	}

	/**
	 * Gets whether @policy is a non-permanent, non-expirable session policy.
	 * see soup_hsts_policy_new_session_policy() for details.
	 *
	 * Returns: %TRUE if @policy is permanent, %FALSE otherwise
	 *
	 * Since: 2.68
	 */
	public bool isSessionPolicy()
	{
		return soup_hsts_policy_is_session_policy(soupHSTSPolicy) != 0;
	}
}
