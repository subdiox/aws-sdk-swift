// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// With Amazon Connect Cases, your agents can track and manage customer issues that require multiple interactions, follow-up tasks, and teams in your contact center. A case represents a customer issue. It records the issue, the steps and interactions taken to resolve the issue, and the outcome. For more information, see [Amazon Connect Cases](https://docs.aws.amazon.com/connect/latest/adminguide/cases.html) in the Amazon Connect Administrator Guide.
public protocol ConnectCasesClientProtocol {
    /// Returns the description for the list of fields in the request parameters.
    func batchGetField(input: BatchGetFieldInput) async throws -> BatchGetFieldOutputResponse
    /// Creates and updates a set of field options for a single select field in a Cases domain.
    func batchPutFieldOptions(input: BatchPutFieldOptionsInput) async throws -> BatchPutFieldOptionsOutputResponse
    /// Creates a case in the specified Cases domain. Case system and custom fields are taken as an array id/value pairs with a declared data types. The following fields are required when creating a case:
    ///
    /// * customer_id - You must provide the full customer profile ARN in this format: arn:aws:profile:your AWS Region:your AWS account ID:domains/profiles domain name/profiles/profile ID
    ///
    /// * title
    func createCase(input: CreateCaseInput) async throws -> CreateCaseOutputResponse
    /// Creates a domain, which is a container for all case data, such as cases, fields, templates and layouts. Each Amazon Connect instance can be associated with only one Cases domain. This will not associate your connect instance to Cases domain. Instead, use the Amazon Connect [CreateIntegrationAssociation](https://docs.aws.amazon.com/connect/latest/APIReference/API_CreateIntegrationAssociation.html) API. You need specific IAM permissions to successfully associate the Cases domain. For more information, see [Onboard to Cases](https://docs.aws.amazon.com/connect/latest/adminguide/required-permissions-iam-cases.html#onboard-cases-iam).
    func createDomain(input: CreateDomainInput) async throws -> CreateDomainOutputResponse
    /// Creates a field in the Cases domain. This field is used to define the case object model (that is, defines what data can be captured on cases) in a Cases domain.
    func createField(input: CreateFieldInput) async throws -> CreateFieldOutputResponse
    /// Creates a layout in the Cases domain. Layouts define the following configuration in the top section and More Info tab of the Cases user interface:
    ///
    /// * Fields to display to the users
    ///
    /// * Field ordering
    ///
    ///
    /// Title and Status fields cannot be part of layouts since they are not configurable.
    func createLayout(input: CreateLayoutInput) async throws -> CreateLayoutOutputResponse
    /// Creates a related item (comments, tasks, and contacts) and associates it with a case. A Related Item is a resource that is associated with a case. It may or may not have an external identifier linking it to an external resource (for example, a contactArn). All Related Items have their own internal identifier, the relatedItemArn. Examples of related items include comments and contacts.
    func createRelatedItem(input: CreateRelatedItemInput) async throws -> CreateRelatedItemOutputResponse
    /// Creates a template in the Cases domain. This template is used to define the case object model (that is, to define what data can be captured on cases) in a Cases domain. A template must have a unique name within a domain, and it must reference existing field IDs and layout IDs. Additionally, multiple fields with same IDs are not allowed within the same Template. A template can be either Active or Inactive, as indicated by its status. Inactive templates cannot be used to create cases.
    func createTemplate(input: CreateTemplateInput) async throws -> CreateTemplateOutputResponse
    /// Deletes a domain.
    func deleteDomain(input: DeleteDomainInput) async throws -> DeleteDomainOutputResponse
    /// Returns information about a specific case if it exists.
    func getCase(input: GetCaseInput) async throws -> GetCaseOutputResponse
    /// Returns the case event publishing configuration.
    func getCaseEventConfiguration(input: GetCaseEventConfigurationInput) async throws -> GetCaseEventConfigurationOutputResponse
    /// Returns information about a specific domain if it exists.
    func getDomain(input: GetDomainInput) async throws -> GetDomainOutputResponse
    /// Returns the details for the requested layout.
    func getLayout(input: GetLayoutInput) async throws -> GetLayoutOutputResponse
    /// Returns the details for the requested template.
    func getTemplate(input: GetTemplateInput) async throws -> GetTemplateOutputResponse
    /// Lists cases for a given contact.
    func listCasesForContact(input: ListCasesForContactInput) async throws -> ListCasesForContactOutputResponse
    /// Lists all cases domains in the Amazon Web Services account. Each list item is a condensed summary object of the domain.
    func listDomains(input: ListDomainsInput) async throws -> ListDomainsOutputResponse
    /// Lists all of the field options for a field identifier in the domain.
    func listFieldOptions(input: ListFieldOptionsInput) async throws -> ListFieldOptionsOutputResponse
    /// Lists all fields in a Cases domain.
    func listFields(input: ListFieldsInput) async throws -> ListFieldsOutputResponse
    /// Lists all layouts in the given cases domain. Each list item is a condensed summary object of the layout.
    func listLayouts(input: ListLayoutsInput) async throws -> ListLayoutsOutputResponse
    /// Lists tags for a resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Lists all of the templates in a Cases domain. Each list item is a condensed summary object of the template.
    func listTemplates(input: ListTemplatesInput) async throws -> ListTemplatesOutputResponse
    /// API for adding case event publishing configuration
    func putCaseEventConfiguration(input: PutCaseEventConfigurationInput) async throws -> PutCaseEventConfigurationOutputResponse
    /// Searches for cases within their associated Cases domain. Search results are returned as a paginated list of abridged case documents. For customer_id you must provide the full customer profile ARN in this format:  arn:aws:profile:your AWS Region:your AWS account ID:domains/profiles domain name/profiles/profile ID.
    func searchCases(input: SearchCasesInput) async throws -> SearchCasesOutputResponse
    /// Searches for related items that are associated with a case. If no filters are provided, this returns all related items associated with a case.
    func searchRelatedItems(input: SearchRelatedItemsInput) async throws -> SearchRelatedItemsOutputResponse
    /// Adds tags to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Untags a resource.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates the values of fields on a case. Fields to be updated are received as an array of id/value pairs identical to the CreateCase input . If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body.
    func updateCase(input: UpdateCaseInput) async throws -> UpdateCaseOutputResponse
    /// Updates the properties of an existing field.
    func updateField(input: UpdateFieldInput) async throws -> UpdateFieldOutputResponse
    /// Updates the attributes of an existing layout. If the action is successful, the service sends back an HTTP 200 response with an empty HTTP body. A ValidationException is returned when you add non-existent fieldIds to a layout. Title and Status fields cannot be part of layouts because they are not configurable.
    func updateLayout(input: UpdateLayoutInput) async throws -> UpdateLayoutOutputResponse
    /// Updates the attributes of an existing template. The template attributes that can be modified include name, description, layoutConfiguration, requiredFields, and status. At least one of these attributes must not be null. If a null value is provided for a given attribute, that attribute is ignored and its current value is preserved.
    func updateTemplate(input: UpdateTemplateInput) async throws -> UpdateTemplateOutputResponse
}

public enum ConnectCasesClientTypes {}
