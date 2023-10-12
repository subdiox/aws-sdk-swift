// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Cloud Map With Cloud Map, you can configure public DNS, private DNS, or HTTP namespaces that your microservice applications run in. When an instance becomes available, you can call the Cloud Map API to register the instance with Cloud Map. For public or private DNS namespaces, Cloud Map automatically creates DNS records and an optional health check. Clients that submit public or private DNS queries, or HTTP requests, for the service receive an answer that contains up to eight healthy records.
public protocol ServiceDiscoveryClientProtocol {
    /// Creates an HTTP namespace. Service instances registered using an HTTP namespace can be discovered using a DiscoverInstances request but can't be discovered using DNS. For the current quota on the number of namespaces that you can create using the same Amazon Web Services account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html) in the Cloud Map Developer Guide.
    ///
    /// - Parameter CreateHttpNamespaceInput : [no documentation found]
    ///
    /// - Returns: `CreateHttpNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceAlreadyExists` : The namespace that you're trying to create already exists.
    /// - `ResourceLimitExceeded` : The resource can't be created because you've reached the quota on the number of resources.
    /// - `TooManyTagsException` : The list of tags on the resource is over the quota. The maximum number of tags that can be applied to a resource is 50.
    func createHttpNamespace(input: CreateHttpNamespaceInput) async throws -> CreateHttpNamespaceOutput
    /// Creates a private namespace based on DNS, which is visible only inside a specified Amazon VPC. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service is backend.example.com. Service instances that are registered using a private DNS namespace can be discovered using either a DiscoverInstances request or using DNS. For the current quota on the number of namespaces that you can create using the same Amazon Web Services account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html) in the Cloud Map Developer Guide.
    ///
    /// - Parameter CreatePrivateDnsNamespaceInput : [no documentation found]
    ///
    /// - Returns: `CreatePrivateDnsNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceAlreadyExists` : The namespace that you're trying to create already exists.
    /// - `ResourceLimitExceeded` : The resource can't be created because you've reached the quota on the number of resources.
    /// - `TooManyTagsException` : The list of tags on the resource is over the quota. The maximum number of tags that can be applied to a resource is 50.
    func createPrivateDnsNamespace(input: CreatePrivateDnsNamespaceInput) async throws -> CreatePrivateDnsNamespaceOutput
    /// Creates a public namespace based on DNS, which is visible on the internet. The namespace defines your service naming scheme. For example, if you name your namespace example.com and name your service backend, the resulting DNS name for the service is backend.example.com. You can discover instances that were registered with a public DNS namespace by using either a DiscoverInstances request or using DNS. For the current quota on the number of namespaces that you can create using the same Amazon Web Services account, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html) in the Cloud Map Developer Guide. The CreatePublicDnsNamespace API operation is not supported in the Amazon Web Services GovCloud (US) Regions.
    ///
    /// - Parameter CreatePublicDnsNamespaceInput : [no documentation found]
    ///
    /// - Returns: `CreatePublicDnsNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceAlreadyExists` : The namespace that you're trying to create already exists.
    /// - `ResourceLimitExceeded` : The resource can't be created because you've reached the quota on the number of resources.
    /// - `TooManyTagsException` : The list of tags on the resource is over the quota. The maximum number of tags that can be applied to a resource is 50.
    func createPublicDnsNamespace(input: CreatePublicDnsNamespaceInput) async throws -> CreatePublicDnsNamespaceOutput
    /// Creates a service. This action defines the configuration for the following entities:
    ///
    /// * For public and private DNS namespaces, one of the following combinations of DNS records in Amazon Route 53:
    ///
    /// * A
    ///
    /// * AAAA
    ///
    /// * A and AAAA
    ///
    /// * SRV
    ///
    /// * CNAME
    ///
    ///
    ///
    ///
    /// * Optionally, a health check
    ///
    ///
    /// After you create the service, you can submit a [RegisterInstance](https://docs.aws.amazon.com/cloud-map/latest/api/API_RegisterInstance.html) request, and Cloud Map uses the values in the configuration to create the specified entities. For the current quota on the number of instances that you can register using the same namespace and using the same service, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html) in the Cloud Map Developer Guide.
    ///
    /// - Parameter CreateServiceInput : [no documentation found]
    ///
    /// - Returns: `CreateServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    /// - `ResourceLimitExceeded` : The resource can't be created because you've reached the quota on the number of resources.
    /// - `ServiceAlreadyExists` : The service can't be created because a service with the same name already exists.
    /// - `TooManyTagsException` : The list of tags on the resource is over the quota. The maximum number of tags that can be applied to a resource is 50.
    func createService(input: CreateServiceInput) async throws -> CreateServiceOutput
    /// Deletes a namespace from the current account. If the namespace still contains one or more services, the request fails.
    ///
    /// - Parameter DeleteNamespaceInput : [no documentation found]
    ///
    /// - Returns: `DeleteNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    /// - `ResourceInUse` : The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
    func deleteNamespace(input: DeleteNamespaceInput) async throws -> DeleteNamespaceOutput
    /// Deletes a specified service. If the service still contains one or more registered instances, the request fails.
    ///
    /// - Parameter DeleteServiceInput : [no documentation found]
    ///
    /// - Returns: `DeleteServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ResourceInUse` : The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func deleteService(input: DeleteServiceInput) async throws -> DeleteServiceOutput
    /// Deletes the Amazon Route 53 DNS records and health check, if any, that Cloud Map created for the specified instance.
    ///
    /// - Parameter DeregisterInstanceInput : [no documentation found]
    ///
    /// - Returns: `DeregisterInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InstanceNotFound` : No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ResourceInUse` : The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func deregisterInstance(input: DeregisterInstanceInput) async throws -> DeregisterInstanceOutput
    /// Discovers registered instances for a specified namespace and service. You can use DiscoverInstances to discover instances for any type of namespace. DiscoverInstances returns a randomized list of instances allowing customers to distribute traffic evenly across instances. For public and private DNS namespaces, you can also use DNS queries to discover instances.
    ///
    /// - Parameter DiscoverInstancesInput : [no documentation found]
    ///
    /// - Returns: `DiscoverInstancesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    /// - `RequestLimitExceeded` : The operation can't be completed because you've reached the quota for the number of requests. For more information, see [Cloud Map API request throttling quota](https://docs.aws.amazon.com/cloud-map/latest/dg/throttling.html) in the Cloud Map Developer Guide.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func discoverInstances(input: DiscoverInstancesInput) async throws -> DiscoverInstancesOutput
    /// Discovers the increasing revision associated with an instance.
    ///
    /// - Parameter DiscoverInstancesRevisionInput : [no documentation found]
    ///
    /// - Returns: `DiscoverInstancesRevisionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    /// - `RequestLimitExceeded` : The operation can't be completed because you've reached the quota for the number of requests. For more information, see [Cloud Map API request throttling quota](https://docs.aws.amazon.com/cloud-map/latest/dg/throttling.html) in the Cloud Map Developer Guide.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func discoverInstancesRevision(input: DiscoverInstancesRevisionInput) async throws -> DiscoverInstancesRevisionOutput
    /// Gets information about a specified instance.
    ///
    /// - Parameter GetInstanceInput : [no documentation found]
    ///
    /// - Returns: `GetInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InstanceNotFound` : No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func getInstance(input: GetInstanceInput) async throws -> GetInstanceOutput
    /// Gets the current health status (Healthy, Unhealthy, or Unknown) of one or more instances that are associated with a specified service. There's a brief delay between when you register an instance and when the health status for the instance is available.
    ///
    /// - Parameter GetInstancesHealthStatusInput : [no documentation found]
    ///
    /// - Returns: `GetInstancesHealthStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InstanceNotFound` : No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func getInstancesHealthStatus(input: GetInstancesHealthStatusInput) async throws -> GetInstancesHealthStatusOutput
    /// Gets information about a namespace.
    ///
    /// - Parameter GetNamespaceInput : [no documentation found]
    ///
    /// - Returns: `GetNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    func getNamespace(input: GetNamespaceInput) async throws -> GetNamespaceOutput
    /// Gets information about any operation that returns an operation ID in the response, such as a CreateHttpNamespace request. To get a list of operations that match specified criteria, see [ListOperations](https://docs.aws.amazon.com/cloud-map/latest/api/API_ListOperations.html).
    ///
    /// - Parameter GetOperationInput : [no documentation found]
    ///
    /// - Returns: `GetOperationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `OperationNotFound` : No operation exists with the specified ID.
    func getOperation(input: GetOperationInput) async throws -> GetOperationOutput
    /// Gets the settings for a specified service.
    ///
    /// - Parameter GetServiceInput : [no documentation found]
    ///
    /// - Returns: `GetServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func getService(input: GetServiceInput) async throws -> GetServiceOutput
    /// Lists summary information about the instances that you registered by using a specified service.
    ///
    /// - Parameter ListInstancesInput : [no documentation found]
    ///
    /// - Returns: `ListInstancesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func listInstances(input: ListInstancesInput) async throws -> ListInstancesOutput
    /// Lists summary information about the namespaces that were created by the current Amazon Web Services account.
    ///
    /// - Parameter ListNamespacesInput : [no documentation found]
    ///
    /// - Returns: `ListNamespacesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    func listNamespaces(input: ListNamespacesInput) async throws -> ListNamespacesOutput
    /// Lists operations that match the criteria that you specify.
    ///
    /// - Parameter ListOperationsInput : [no documentation found]
    ///
    /// - Returns: `ListOperationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    func listOperations(input: ListOperationsInput) async throws -> ListOperationsOutput
    /// Lists summary information for all the services that are associated with one or more specified namespaces.
    ///
    /// - Parameter ListServicesInput : [no documentation found]
    ///
    /// - Returns: `ListServicesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    func listServices(input: ListServicesInput) async throws -> ListServicesOutput
    /// Lists tags for the specified resource.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ResourceNotFoundException` : The operation can't be completed because the resource was not found.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Creates or updates one or more records and, optionally, creates a health check based on the settings in a specified service. When you submit a RegisterInstance request, the following occurs:
    ///
    /// * For each DNS record that you define in the service that's specified by ServiceId, a record is created or updated in the hosted zone that's associated with the corresponding namespace.
    ///
    /// * If the service includes HealthCheckConfig, a health check is created based on the settings in the health check configuration.
    ///
    /// * The health check, if any, is associated with each of the new or updated records.
    ///
    ///
    /// One RegisterInstance request must complete before you can submit another request and specify the same service ID and instance ID. For more information, see [CreateService](https://docs.aws.amazon.com/cloud-map/latest/api/API_CreateService.html). When Cloud Map receives a DNS query for the specified DNS name, it returns the applicable value:
    ///
    /// * If the health check is healthy: returns all the records
    ///
    /// * If the health check is unhealthy: returns the applicable value for the last healthy instance
    ///
    /// * If you didn't specify a health check configuration: returns all the records
    ///
    ///
    /// For the current quota on the number of instances that you can register using the same namespace and using the same service, see [Cloud Map quotas](https://docs.aws.amazon.com/cloud-map/latest/dg/cloud-map-limits.html) in the Cloud Map Developer Guide.
    ///
    /// - Parameter RegisterInstanceInput : [no documentation found]
    ///
    /// - Returns: `RegisterInstanceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ResourceInUse` : The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
    /// - `ResourceLimitExceeded` : The resource can't be created because you've reached the quota on the number of resources.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func registerInstance(input: RegisterInstanceInput) async throws -> RegisterInstanceOutput
    /// Adds one or more tags to the specified resource.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ResourceNotFoundException` : The operation can't be completed because the resource was not found.
    /// - `TooManyTagsException` : The list of tags on the resource is over the quota. The maximum number of tags that can be applied to a resource is 50.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes one or more tags from the specified resource.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ResourceNotFoundException` : The operation can't be completed because the resource was not found.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Updates an HTTP namespace.
    ///
    /// - Parameter UpdateHttpNamespaceInput : [no documentation found]
    ///
    /// - Returns: `UpdateHttpNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    /// - `ResourceInUse` : The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
    func updateHttpNamespace(input: UpdateHttpNamespaceInput) async throws -> UpdateHttpNamespaceOutput
    /// Submits a request to change the health status of a custom health check to healthy or unhealthy. You can use UpdateInstanceCustomHealthStatus to change the status only for custom health checks, which you define using HealthCheckCustomConfig when you create a service. You can't use it to change the status for Route 53 health checks, which you define using HealthCheckConfig. For more information, see [HealthCheckCustomConfig](https://docs.aws.amazon.com/cloud-map/latest/api/API_HealthCheckCustomConfig.html).
    ///
    /// - Parameter UpdateInstanceCustomHealthStatusInput : [no documentation found]
    ///
    /// - Returns: `UpdateInstanceCustomHealthStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CustomHealthNotFound` : The health check for the instance that's specified by ServiceId and InstanceId isn't a custom health check.
    /// - `InstanceNotFound` : No instance exists with the specified ID, or the instance was recently registered, and information about the instance hasn't propagated yet.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func updateInstanceCustomHealthStatus(input: UpdateInstanceCustomHealthStatusInput) async throws -> UpdateInstanceCustomHealthStatusOutput
    /// Updates a private DNS namespace.
    ///
    /// - Parameter UpdatePrivateDnsNamespaceInput : [no documentation found]
    ///
    /// - Returns: `UpdatePrivateDnsNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    /// - `ResourceInUse` : The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
    func updatePrivateDnsNamespace(input: UpdatePrivateDnsNamespaceInput) async throws -> UpdatePrivateDnsNamespaceOutput
    /// Updates a public DNS namespace.
    ///
    /// - Parameter UpdatePublicDnsNamespaceInput : [no documentation found]
    ///
    /// - Returns: `UpdatePublicDnsNamespaceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `NamespaceNotFound` : No namespace exists with the specified ID.
    /// - `ResourceInUse` : The specified resource can't be deleted because it contains other resources. For example, you can't delete a service that contains any instances.
    func updatePublicDnsNamespace(input: UpdatePublicDnsNamespaceInput) async throws -> UpdatePublicDnsNamespaceOutput
    /// Submits a request to perform the following operations:
    ///
    /// * Update the TTL setting for existing DnsRecords configurations
    ///
    /// * Add, update, or delete HealthCheckConfig for a specified service You can't add, update, or delete a HealthCheckCustomConfig configuration.
    ///
    ///
    /// For public and private DNS namespaces, note the following:
    ///
    /// * If you omit any existing DnsRecords or HealthCheckConfig configurations from an UpdateService request, the configurations are deleted from the service.
    ///
    /// * If you omit an existing HealthCheckCustomConfig configuration from an UpdateService request, the configuration isn't deleted from the service.
    ///
    ///
    /// When you update settings for a service, Cloud Map also updates the corresponding settings in all the records and health checks that were created by using the specified service.
    ///
    /// - Parameter UpdateServiceInput : [no documentation found]
    ///
    /// - Returns: `UpdateServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `DuplicateRequest` : The operation is already in progress.
    /// - `InvalidInput` : One or more specified values aren't valid. For example, a required value might be missing, a numeric value might be outside the allowed range, or a string value might exceed length constraints.
    /// - `ServiceNotFound` : No service exists with the specified ID.
    func updateService(input: UpdateServiceInput) async throws -> UpdateServiceOutput
}

public enum ServiceDiscoveryClientTypes {}
