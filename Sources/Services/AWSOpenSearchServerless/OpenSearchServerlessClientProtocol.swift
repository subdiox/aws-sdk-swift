// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Use the Amazon OpenSearch Serverless API to create, configure, and manage OpenSearch Serverless collections and security policies. OpenSearch Serverless is an on-demand, pre-provisioned serverless configuration for Amazon OpenSearch Service. OpenSearch Serverless removes the operational complexities of provisioning, configuring, and tuning your OpenSearch clusters. It enables you to easily search and analyze petabytes of data without having to worry about the underlying infrastructure and data management. To learn more about OpenSearch Serverless, see [What is Amazon OpenSearch Serverless?](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-overview.html)
public protocol OpenSearchServerlessClientProtocol {
    /// Returns attributes for one or more collections, including the collection endpoint and the OpenSearch Dashboards endpoint. For more information, see [Creating and managing Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).
    ///
    /// - Parameter BatchGetCollectionInput : [no documentation found]
    ///
    /// - Returns: `BatchGetCollectionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func batchGetCollection(input: BatchGetCollectionInput) async throws -> BatchGetCollectionOutput
    /// Returns attributes for one or more VPC endpoints associated with the current account. For more information, see [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
    ///
    /// - Parameter BatchGetVpcEndpointInput : [no documentation found]
    ///
    /// - Returns: `BatchGetVpcEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func batchGetVpcEndpoint(input: BatchGetVpcEndpointInput) async throws -> BatchGetVpcEndpointOutput
    /// Creates a data access policy for OpenSearch Serverless. Access policies limit access to collections and the resources within them, and allow a user to access that data irrespective of the access mechanism or network source. For more information, see [Data access control for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
    ///
    /// - Parameter CreateAccessPolicyInput : [no documentation found]
    ///
    /// - Returns: `CreateAccessPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ServiceQuotaExceededException` : Thrown when you attempt to create more resources than the service allows based on service quotas.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func createAccessPolicy(input: CreateAccessPolicyInput) async throws -> CreateAccessPolicyOutput
    /// Creates a new OpenSearch Serverless collection. For more information, see [Creating and managing Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).
    ///
    /// - Parameter CreateCollectionInput : [no documentation found]
    ///
    /// - Returns: `CreateCollectionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `OcuLimitExceededException` : Thrown when the collection you're attempting to create results in a number of search or indexing OCUs that exceeds the account limit.
    /// - `ServiceQuotaExceededException` : Thrown when you attempt to create more resources than the service allows based on service quotas.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func createCollection(input: CreateCollectionInput) async throws -> CreateCollectionOutput
    /// Specifies a security configuration for OpenSearch Serverless. For more information, see [SAML authentication for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
    ///
    /// - Parameter CreateSecurityConfigInput : [no documentation found]
    ///
    /// - Returns: `CreateSecurityConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ServiceQuotaExceededException` : Thrown when you attempt to create more resources than the service allows based on service quotas.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func createSecurityConfig(input: CreateSecurityConfigInput) async throws -> CreateSecurityConfigOutput
    /// Creates a security policy to be used by one or more OpenSearch Serverless collections. Security policies provide access to a collection and its OpenSearch Dashboards endpoint from public networks or specific VPC endpoints. They also allow you to secure a collection with a KMS encryption key. For more information, see [Network access for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html) and [Encryption at rest for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).
    ///
    /// - Parameter CreateSecurityPolicyInput : [no documentation found]
    ///
    /// - Returns: `CreateSecurityPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ServiceQuotaExceededException` : Thrown when you attempt to create more resources than the service allows based on service quotas.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func createSecurityPolicy(input: CreateSecurityPolicyInput) async throws -> CreateSecurityPolicyOutput
    /// Creates an OpenSearch Serverless-managed interface VPC endpoint. For more information, see [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
    ///
    /// - Parameter CreateVpcEndpointInput : [no documentation found]
    ///
    /// - Returns: `CreateVpcEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ServiceQuotaExceededException` : Thrown when you attempt to create more resources than the service allows based on service quotas.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func createVpcEndpoint(input: CreateVpcEndpointInput) async throws -> CreateVpcEndpointOutput
    /// Deletes an OpenSearch Serverless access policy. For more information, see [Data access control for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
    ///
    /// - Parameter DeleteAccessPolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteAccessPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func deleteAccessPolicy(input: DeleteAccessPolicyInput) async throws -> DeleteAccessPolicyOutput
    /// Deletes an OpenSearch Serverless collection. For more information, see [Creating and managing Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html).
    ///
    /// - Parameter DeleteCollectionInput : [no documentation found]
    ///
    /// - Returns: `DeleteCollectionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func deleteCollection(input: DeleteCollectionInput) async throws -> DeleteCollectionOutput
    /// Deletes a security configuration for OpenSearch Serverless. For more information, see [SAML authentication for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
    ///
    /// - Parameter DeleteSecurityConfigInput : [no documentation found]
    ///
    /// - Returns: `DeleteSecurityConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func deleteSecurityConfig(input: DeleteSecurityConfigInput) async throws -> DeleteSecurityConfigOutput
    /// Deletes an OpenSearch Serverless security policy.
    ///
    /// - Parameter DeleteSecurityPolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteSecurityPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func deleteSecurityPolicy(input: DeleteSecurityPolicyInput) async throws -> DeleteSecurityPolicyOutput
    /// Deletes an OpenSearch Serverless-managed interface endpoint. For more information, see [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
    ///
    /// - Parameter DeleteVpcEndpointInput : [no documentation found]
    ///
    /// - Returns: `DeleteVpcEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func deleteVpcEndpoint(input: DeleteVpcEndpointInput) async throws -> DeleteVpcEndpointOutput
    /// Returns an OpenSearch Serverless access policy. For more information, see [Data access control for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
    ///
    /// - Parameter GetAccessPolicyInput : [no documentation found]
    ///
    /// - Returns: `GetAccessPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func getAccessPolicy(input: GetAccessPolicyInput) async throws -> GetAccessPolicyOutput
    /// Returns account-level settings related to OpenSearch Serverless.
    ///
    /// - Parameter GetAccountSettingsInput : [no documentation found]
    ///
    /// - Returns: `GetAccountSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func getAccountSettings(input: GetAccountSettingsInput) async throws -> GetAccountSettingsOutput
    /// Returns statistical information about your OpenSearch Serverless access policies, security configurations, and security policies.
    ///
    /// - Parameter GetPoliciesStatsInput : [no documentation found]
    ///
    /// - Returns: `GetPoliciesStatsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    func getPoliciesStats(input: GetPoliciesStatsInput) async throws -> GetPoliciesStatsOutput
    /// Returns information about an OpenSearch Serverless security configuration. For more information, see [SAML authentication for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
    ///
    /// - Parameter GetSecurityConfigInput : [no documentation found]
    ///
    /// - Returns: `GetSecurityConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func getSecurityConfig(input: GetSecurityConfigInput) async throws -> GetSecurityConfigOutput
    /// Returns information about a configured OpenSearch Serverless security policy. For more information, see [Network access for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html) and [Encryption at rest for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).
    ///
    /// - Parameter GetSecurityPolicyInput : [no documentation found]
    ///
    /// - Returns: `GetSecurityPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func getSecurityPolicy(input: GetSecurityPolicyInput) async throws -> GetSecurityPolicyOutput
    /// Returns information about a list of OpenSearch Serverless access policies.
    ///
    /// - Parameter ListAccessPoliciesInput : [no documentation found]
    ///
    /// - Returns: `ListAccessPoliciesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func listAccessPolicies(input: ListAccessPoliciesInput) async throws -> ListAccessPoliciesOutput
    /// Lists all OpenSearch Serverless collections. For more information, see [Creating and managing Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-manage.html). Make sure to include an empty request body {} if you don't include any collection filters in the request.
    ///
    /// - Parameter ListCollectionsInput : [no documentation found]
    ///
    /// - Returns: `ListCollectionsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func listCollections(input: ListCollectionsInput) async throws -> ListCollectionsOutput
    /// Returns information about configured OpenSearch Serverless security configurations. For more information, see [SAML authentication for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
    ///
    /// - Parameter ListSecurityConfigsInput : [no documentation found]
    ///
    /// - Returns: `ListSecurityConfigsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func listSecurityConfigs(input: ListSecurityConfigsInput) async throws -> ListSecurityConfigsOutput
    /// Returns information about configured OpenSearch Serverless security policies.
    ///
    /// - Parameter ListSecurityPoliciesInput : [no documentation found]
    ///
    /// - Returns: `ListSecurityPoliciesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func listSecurityPolicies(input: ListSecurityPoliciesInput) async throws -> ListSecurityPoliciesOutput
    /// Returns the tags for an OpenSearch Serverless resource. For more information, see [Tagging Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Returns the OpenSearch Serverless-managed interface VPC endpoints associated with the current account. For more information, see [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
    ///
    /// - Parameter ListVpcEndpointsInput : [no documentation found]
    ///
    /// - Returns: `ListVpcEndpointsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func listVpcEndpoints(input: ListVpcEndpointsInput) async throws -> ListVpcEndpointsOutput
    /// Associates tags with an OpenSearch Serverless resource. For more information, see [Tagging Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ServiceQuotaExceededException` : Thrown when you attempt to create more resources than the service allows based on service quotas.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes a tag or set of tags from an OpenSearch Serverless resource. For more information, see [Tagging Amazon OpenSearch Serverless collections](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/tag-collection.html).
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Updates an OpenSearch Serverless access policy. For more information, see [Data access control for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-data-access.html).
    ///
    /// - Parameter UpdateAccessPolicyInput : [no documentation found]
    ///
    /// - Returns: `UpdateAccessPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func updateAccessPolicy(input: UpdateAccessPolicyInput) async throws -> UpdateAccessPolicyOutput
    /// Update the OpenSearch Serverless settings for the current Amazon Web Services account. For more information, see [Managing capacity limits for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-scaling.html).
    ///
    /// - Parameter UpdateAccountSettingsInput : [no documentation found]
    ///
    /// - Returns: `UpdateAccountSettingsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func updateAccountSettings(input: UpdateAccountSettingsInput) async throws -> UpdateAccountSettingsOutput
    /// Updates an OpenSearch Serverless collection.
    ///
    /// - Parameter UpdateCollectionInput : [no documentation found]
    ///
    /// - Returns: `UpdateCollectionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func updateCollection(input: UpdateCollectionInput) async throws -> UpdateCollectionOutput
    /// Updates a security configuration for OpenSearch Serverless. For more information, see [SAML authentication for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-saml.html).
    ///
    /// - Parameter UpdateSecurityConfigInput : [no documentation found]
    ///
    /// - Returns: `UpdateSecurityConfigOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func updateSecurityConfig(input: UpdateSecurityConfigInput) async throws -> UpdateSecurityConfigOutput
    /// Updates an OpenSearch Serverless security policy. For more information, see [Network access for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-network.html) and [Encryption at rest for Amazon OpenSearch Serverless](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-encryption.html).
    ///
    /// - Parameter UpdateSecurityPolicyInput : [no documentation found]
    ///
    /// - Returns: `UpdateSecurityPolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ResourceNotFoundException` : Thrown when accessing or deleting a resource that does not exist.
    /// - `ServiceQuotaExceededException` : Thrown when you attempt to create more resources than the service allows based on service quotas.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func updateSecurityPolicy(input: UpdateSecurityPolicyInput) async throws -> UpdateSecurityPolicyOutput
    /// Updates an OpenSearch Serverless-managed interface endpoint. For more information, see [Access Amazon OpenSearch Serverless using an interface endpoint](https://docs.aws.amazon.com/opensearch-service/latest/developerguide/serverless-vpc.html).
    ///
    /// - Parameter UpdateVpcEndpointInput : [no documentation found]
    ///
    /// - Returns: `UpdateVpcEndpointOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : When creating a resource, thrown when a resource with the same name already exists or is being created. When deleting a resource, thrown when the resource is not in the ACTIVE or FAILED state.
    /// - `InternalServerException` : Thrown when an error internal to the service occurs while processing a request.
    /// - `ValidationException` : Thrown when the HTTP request contains invalid input or is missing required input.
    func updateVpcEndpoint(input: UpdateVpcEndpointInput) async throws -> UpdateVpcEndpointOutput
}

public enum OpenSearchServerlessClientTypes {}
