// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services Service Catalog AppRegistry enables organizations to understand the application context of their Amazon Web Services resources. AppRegistry provides a repository of your applications, their resources, and the application metadata that you use within your enterprise.
public protocol ServiceCatalogAppRegistryClientProtocol {
    /// Associates an attribute group with an application to augment the application's metadata with the group's attributes. This feature enables applications to be described with user-defined details that are machine-readable, such as third-party integrations.
    func associateAttributeGroup(input: AssociateAttributeGroupInput) async throws -> AssociateAttributeGroupOutputResponse
    /// Associates a resource with an application. The resource can be specified by its ARN or name. The application can be specified by ARN, ID, or name.
    func associateResource(input: AssociateResourceInput) async throws -> AssociateResourceOutputResponse
    /// Creates a new application that is the top-level node in a hierarchy of related cloud resource abstractions.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutputResponse
    /// Creates a new attribute group as a container for user-defined attributes. This feature enables users to have full control over their cloud application's metadata in a rich machine-readable format to facilitate integration with automated workflows and third-party tools.
    func createAttributeGroup(input: CreateAttributeGroupInput) async throws -> CreateAttributeGroupOutputResponse
    /// Deletes an application that is specified either by its application ID, name, or ARN. All associated attribute groups and resources must be disassociated from it before deleting an application.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutputResponse
    /// Deletes an attribute group, specified either by its attribute group ID, name, or ARN.
    func deleteAttributeGroup(input: DeleteAttributeGroupInput) async throws -> DeleteAttributeGroupOutputResponse
    /// Disassociates an attribute group from an application to remove the extra attributes contained in the attribute group from the application's metadata. This operation reverts AssociateAttributeGroup.
    func disassociateAttributeGroup(input: DisassociateAttributeGroupInput) async throws -> DisassociateAttributeGroupOutputResponse
    /// Disassociates a resource from application. Both the resource and the application can be specified either by ID or name.
    func disassociateResource(input: DisassociateResourceInput) async throws -> DisassociateResourceOutputResponse
    /// Retrieves metadata information about one of your applications. The application can be specified by its ARN, ID, or name (which is unique within one account in one region at a given point in time). Specify by ARN or ID in automated workflows if you want to make sure that the exact same application is returned or a ResourceNotFoundException is thrown, avoiding the ABA addressing problem.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutputResponse
    /// Gets the resource associated with the application.
    func getAssociatedResource(input: GetAssociatedResourceInput) async throws -> GetAssociatedResourceOutputResponse
    /// Retrieves an attribute group by its ARN, ID, or name. The attribute group can be specified by its ARN, ID, or name.
    func getAttributeGroup(input: GetAttributeGroupInput) async throws -> GetAttributeGroupOutputResponse
    /// Retrieves a TagKey configuration from an account.
    func getConfiguration(input: GetConfigurationInput) async throws -> GetConfigurationOutputResponse
    /// Retrieves a list of all of your applications. Results are paginated.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutputResponse
    /// Lists all attribute groups that are associated with specified application. Results are paginated.
    func listAssociatedAttributeGroups(input: ListAssociatedAttributeGroupsInput) async throws -> ListAssociatedAttributeGroupsOutputResponse
    /// Lists all of the resources that are associated with the specified application. Results are paginated. If you share an application, and a consumer account associates a tag query to the application, all of the users who can access the application can also view the tag values in all accounts that are associated with it using this API.
    func listAssociatedResources(input: ListAssociatedResourcesInput) async throws -> ListAssociatedResourcesOutputResponse
    /// Lists all attribute groups which you have access to. Results are paginated.
    func listAttributeGroups(input: ListAttributeGroupsInput) async throws -> ListAttributeGroupsOutputResponse
    /// Lists the details of all attribute groups associated with a specific application. The results display in pages.
    func listAttributeGroupsForApplication(input: ListAttributeGroupsForApplicationInput) async throws -> ListAttributeGroupsForApplicationOutputResponse
    /// Lists all of the tags on the resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Associates a TagKey configuration to an account.
    func putConfiguration(input: PutConfigurationInput) async throws -> PutConfigurationOutputResponse
    /// Syncs the resource with current AppRegistry records. Specifically, the resource’s AppRegistry system tags sync with its associated application. We remove the resource's AppRegistry system tags if it does not associate with the application. The caller must have permissions to read and update the resource.
    func syncResource(input: SyncResourceInput) async throws -> SyncResourceOutputResponse
    /// Assigns one or more tags (key-value pairs) to the specified resource. Each tag consists of a key and an optional value. If a tag with the same key is already associated with the resource, this action updates its value. This operation returns an empty response if the call was successful.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes tags from a resource. This operation returns an empty response if the call was successful.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Updates an existing application with new attributes.
    func updateApplication(input: UpdateApplicationInput) async throws -> UpdateApplicationOutputResponse
    /// Updates an existing attribute group with new details.
    func updateAttributeGroup(input: UpdateAttributeGroupInput) async throws -> UpdateAttributeGroupOutputResponse
}

public enum ServiceCatalogAppRegistryClientTypes {}
