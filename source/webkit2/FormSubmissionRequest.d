module webkit2.FormSubmissionRequest;

private import glib.HashTable;
private import glib.PtrArray;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * When a form is about to be submitted in a #WebKitWebView, the
 * #WebKitWebView::submit-form signal is emitted. Its request argument
 * contains information about the text fields of the form, that are
 * typically used to store login information, returned as lists by
 * webkit_form_submission_request_list_text_fields(). You can submit the
 * form with webkit_form_submission_request_submit().
 */
public class FormSubmissionRequest : ObjectG
{
	/** the main Gtk struct */
	protected WebKitFormSubmissionRequest* webKitFormSubmissionRequest;

	/** Get the main Gtk struct */
	public WebKitFormSubmissionRequest* getFormSubmissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitFormSubmissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitFormSubmissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitFormSubmissionRequest* webKitFormSubmissionRequest, bool ownedRef = false)
	{
		this.webKitFormSubmissionRequest = webKitFormSubmissionRequest;
		super(cast(GObject*)webKitFormSubmissionRequest, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_form_submission_request_get_type();
	}

	/**
	 * Get a #GHashTable with the values of the text fields contained in the form
	 * associated to @request. Note that fields will be missing if the form
	 * contains multiple text input elements with the same name, so this
	 * function does not reliably return all text fields.
	 *
	 * Deprecated: Use webkit_form_submission_request_list_text_fields() instead.
	 *
	 * Returns: a #GHashTable with the form
	 *     text fields, or %NULL if the form doesn't contain text fields.
	 */
	public HashTable getTextFields()
	{
		auto __p = webkit_form_submission_request_get_text_fields(webKitFormSubmissionRequest);

		if(__p is null)
		{
			return null;
		}

		return new HashTable(cast(GHashTable*) __p);
	}

	/**
	 * Get lists with the names and values of the text fields contained in
	 * the form associated to @request. Note that names and values may be
	 * %NULL.
	 *
	 * If this function returns %FALSE, then both @field_names and
	 * @field_values will be empty.
	 *
	 * Params:
	 *     fieldNames = names of the text fields in the form
	 *     fieldValues = values of the text fields in the form
	 *
	 * Returns: %TRUE if the form contains text fields, or %FALSE otherwise
	 *
	 * Since: 2.20
	 */
	public bool listTextFields(out PtrArray fieldNames, out PtrArray fieldValues)
	{
		GPtrArray* outfieldNames = null;
		GPtrArray* outfieldValues = null;

		auto __p = webkit_form_submission_request_list_text_fields(webKitFormSubmissionRequest, &outfieldNames, &outfieldValues) != 0;

		fieldNames = new PtrArray(outfieldNames);
		fieldValues = new PtrArray(outfieldValues);

		return __p;
	}

	/**
	 * Continue the form submission.
	 */
	public void submit()
	{
		webkit_form_submission_request_submit(webKitFormSubmissionRequest);
	}
}
