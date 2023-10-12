// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon Web Services Migration Hub Refactor Spaces This API reference provides descriptions, syntax, and other details about each of the actions and data types for Amazon Web Services Migration Hub Refactor Spaces (Refactor Spaces). The topic for each action shows the API request parameters and the response. Alternatively, you can use one of the Amazon Web Services SDKs to access an API that is tailored to the programming language or platform that you're using. For more information, see [Amazon Web Services SDKs](https://aws.amazon.com/tools/#SDKs). To share Refactor Spaces environments with other Amazon Web Services accounts or with Organizations and their OUs, use Resource Access Manager's CreateResourceShare API. See [CreateResourceShare](https://docs.aws.amazon.com/ram/latest/APIReference/API_CreateResourceShare.html) in the Amazon Web Services RAM API Reference.
public protocol MigrationHubRefactorSpacesClientProtocol {
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces application. The account that owns the environment also owns the applications created inside the environment, regardless of the account that creates the application. Refactor Spaces provisions an Amazon API Gateway, API Gateway VPC link, and Network Load Balancer for the application proxy inside your account. In environments created with a [CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType) of NONE you need to configure [ VPC to VPC connectivity](https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html) between your service VPC and the application proxy VPC to route traffic through the application proxy to a service with a private URL endpoint. For more information, see [ Create an application](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-application.html) in the Refactor Spaces User Guide.
    ///
    /// - Parameter CreateApplicationInput : [no documentation found]
    ///
    /// - Returns: `CreateApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func createApplication(input: CreateApplicationInput) async throws -> CreateApplicationOutput
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces environment. The caller owns the environment resource, and all Refactor Spaces applications, services, and routes created within the environment. They are referred to as the environment owner. The environment owner has cross-account visibility and control of Refactor Spaces resources that are added to the environment by other accounts that the environment is shared with. When creating an environment with a [CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType) of TRANSIT_GATEWAY, Refactor Spaces provisions a transit gateway to enable services in VPCs to communicate directly across accounts. If [CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType) is NONE, Refactor Spaces does not create a transit gateway and you must use your network infrastructure to route traffic to services with private URL endpoints.
    ///
    /// - Parameter CreateEnvironmentInput : [no documentation found]
    ///
    /// - Returns: `CreateEnvironmentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func createEnvironment(input: CreateEnvironmentInput) async throws -> CreateEnvironmentOutput
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces route. The account owner of the service resource is always the environment owner, regardless of which account creates the route. Routes target a service in the application. If an application does not have any routes, then the first route must be created as a DEFAULTRouteType. When created, the default route defaults to an active state so state is not a required input. However, like all other state values the state of the default route can be updated after creation, but only when all other routes are also inactive. Conversely, no route can be active without the default route also being active. When you create a route, Refactor Spaces configures the Amazon API Gateway to send traffic to the target service as follows:
    ///
    /// * URL Endpoints If the service has a URL endpoint, and the endpoint resolves to a private IP address, Refactor Spaces routes traffic using the API Gateway VPC link. If a service endpoint resolves to a public IP address, Refactor Spaces routes traffic over the public internet. Services can have HTTP or HTTPS URL endpoints. For HTTPS URLs, publicly-signed certificates are supported. Private Certificate Authorities (CAs) are permitted only if the CA's domain is also publicly resolvable. Refactor Spaces automatically resolves the public Domain Name System (DNS) names that are set in CreateService:UrlEndpoint when you create a service. The DNS names resolve when the DNS time-to-live (TTL) expires, or every 60 seconds for TTLs less than 60 seconds. This periodic DNS resolution ensures that the route configuration remains up-to-date. One-time health check A one-time health check is performed on the service when either the route is updated from inactive to active, or when it is created with an active state. If the health check fails, the route transitions the route state to FAILED, an error code of SERVICE_ENDPOINT_HEALTH_CHECK_FAILURE is provided, and no traffic is sent to the service. For private URLs, a target group is created on the Network Load Balancer and the load balancer target group runs default target health checks. By default, the health check is run against the service endpoint URL. Optionally, the health check can be performed against a different protocol, port, and/or path using the [CreateService:UrlEndpoint](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateService.html#migrationhubrefactorspaces-CreateService-request-UrlEndpoint) parameter. All other health check settings for the load balancer use the default values described in the [Health checks for your target groups](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/target-group-health-checks.html) in the Elastic Load Balancing guide. The health check is considered successful if at least one target within the target group transitions to a healthy state.
    ///
    /// * Lambda function endpoints If the service has an Lambda function endpoint, then Refactor Spaces configures the Lambda function's resource policy to allow the application's API Gateway to invoke the function. The Lambda function state is checked. If the function is not active, the function configuration is updated so that Lambda resources are provisioned. If the Lambda state is Failed, then the route creation fails. For more information, see the [GetFunctionConfiguration's State response parameter](https://docs.aws.amazon.com/lambda/latest/dg/API_GetFunctionConfiguration.html#SSS-GetFunctionConfiguration-response-State) in the Lambda Developer Guide. A check is performed to determine that a Lambda function with the specified ARN exists. If it does not exist, the health check fails. For public URLs, a connection is opened to the public endpoint. If the URL is not reachable, the health check fails.
    ///
    ///
    /// Environments without a network bridge When you create environments without a network bridge ([CreateEnvironment:NetworkFabricType](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/APIReference/API_CreateEnvironment.html#migrationhubrefactorspaces-CreateEnvironment-request-NetworkFabricType) is NONE) and you use your own networking infrastructure, you need to configure [VPC to VPC connectivity](https://docs.aws.amazon.com/whitepapers/latest/aws-vpc-connectivity-options/amazon-vpc-to-amazon-vpc-connectivity-options.html) between your network and the application proxy VPC. Route creation from the application proxy to service endpoints will fail if your network is not configured to connect to the application proxy VPC. For more information, see [ Create a route](https://docs.aws.amazon.com/migrationhub-refactor-spaces/latest/userguide/getting-started-create-role.html) in the Refactor Spaces User Guide.
    ///
    /// - Parameter CreateRouteInput : [no documentation found]
    ///
    /// - Returns: `CreateRouteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func createRoute(input: CreateRouteInput) async throws -> CreateRouteOutput
    /// Creates an Amazon Web Services Migration Hub Refactor Spaces service. The account owner of the service is always the environment owner, regardless of which account in the environment creates the service. Services have either a URL endpoint in a virtual private cloud (VPC), or a Lambda function endpoint. If an Amazon Web Services resource is launched in a service VPC, and you want it to be accessible to all of an environment’s services with VPCs and routes, apply the RefactorSpacesSecurityGroup to the resource. Alternatively, to add more cross-account constraints, apply your own security group.
    ///
    /// - Parameter CreateServiceInput : [no documentation found]
    ///
    /// - Returns: `CreateServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func createService(input: CreateServiceInput) async throws -> CreateServiceOutput
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces application. Before you can delete an application, you must first delete any services or routes within the application.
    ///
    /// - Parameter DeleteApplicationInput : [no documentation found]
    ///
    /// - Returns: `DeleteApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func deleteApplication(input: DeleteApplicationInput) async throws -> DeleteApplicationOutput
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces environment. Before you can delete an environment, you must first delete any applications and services within the environment.
    ///
    /// - Parameter DeleteEnvironmentInput : [no documentation found]
    ///
    /// - Returns: `DeleteEnvironmentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func deleteEnvironment(input: DeleteEnvironmentInput) async throws -> DeleteEnvironmentOutput
    /// Deletes the resource policy set for the environment.
    ///
    /// - Parameter DeleteResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `DeleteResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func deleteResourcePolicy(input: DeleteResourcePolicyInput) async throws -> DeleteResourcePolicyOutput
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces route.
    ///
    /// - Parameter DeleteRouteInput : [no documentation found]
    ///
    /// - Returns: `DeleteRouteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func deleteRoute(input: DeleteRouteInput) async throws -> DeleteRouteOutput
    /// Deletes an Amazon Web Services Migration Hub Refactor Spaces service.
    ///
    /// - Parameter DeleteServiceInput : [no documentation found]
    ///
    /// - Returns: `DeleteServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func deleteService(input: DeleteServiceInput) async throws -> DeleteServiceOutput
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces application.
    ///
    /// - Parameter GetApplicationInput : [no documentation found]
    ///
    /// - Returns: `GetApplicationOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func getApplication(input: GetApplicationInput) async throws -> GetApplicationOutput
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces environment.
    ///
    /// - Parameter GetEnvironmentInput : [no documentation found]
    ///
    /// - Returns: `GetEnvironmentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func getEnvironment(input: GetEnvironmentInput) async throws -> GetEnvironmentOutput
    /// Gets the resource-based permission policy that is set for the given environment.
    ///
    /// - Parameter GetResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `GetResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func getResourcePolicy(input: GetResourcePolicyInput) async throws -> GetResourcePolicyOutput
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces route.
    ///
    /// - Parameter GetRouteInput : [no documentation found]
    ///
    /// - Returns: `GetRouteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func getRoute(input: GetRouteInput) async throws -> GetRouteOutput
    /// Gets an Amazon Web Services Migration Hub Refactor Spaces service.
    ///
    /// - Parameter GetServiceInput : [no documentation found]
    ///
    /// - Returns: `GetServiceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func getService(input: GetServiceInput) async throws -> GetServiceOutput
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces applications within an environment.
    ///
    /// - Parameter ListApplicationsInput : [no documentation found]
    ///
    /// - Returns: `ListApplicationsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func listApplications(input: ListApplicationsInput) async throws -> ListApplicationsOutput
    /// Lists Amazon Web Services Migration Hub Refactor Spaces environments owned by a caller account or shared with the caller account.
    ///
    /// - Parameter ListEnvironmentsInput : [no documentation found]
    ///
    /// - Returns: `ListEnvironmentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func listEnvironments(input: ListEnvironmentsInput) async throws -> ListEnvironmentsOutput
    /// Lists all Amazon Web Services Migration Hub Refactor Spaces service virtual private clouds (VPCs) that are part of the environment.
    ///
    /// - Parameter ListEnvironmentVpcsInput : [no documentation found]
    ///
    /// - Returns: `ListEnvironmentVpcsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func listEnvironmentVpcs(input: ListEnvironmentVpcsInput) async throws -> ListEnvironmentVpcsOutput
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces routes within an application.
    ///
    /// - Parameter ListRoutesInput : [no documentation found]
    ///
    /// - Returns: `ListRoutesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func listRoutes(input: ListRoutesInput) async throws -> ListRoutesOutput
    /// Lists all the Amazon Web Services Migration Hub Refactor Spaces services within an application.
    ///
    /// - Parameter ListServicesInput : [no documentation found]
    ///
    /// - Returns: `ListServicesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `ConflictException` : Updating or deleting a resource can cause an inconsistent state.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ServiceQuotaExceededException` : The request would cause a service quota to be exceeded.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func listServices(input: ListServicesInput) async throws -> ListServicesOutput
    /// Lists the tags of a resource. The caller account must be the same as the resource’s OwnerAccountId. Listing tags in other accounts is not supported.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Attaches a resource-based permission policy to the Amazon Web Services Migration Hub Refactor Spaces environment. The policy must contain the same actions and condition statements as the arn:aws:ram::aws:permission/AWSRAMDefaultPermissionRefactorSpacesEnvironment permission in Resource Access Manager. The policy must not contain new lines or blank lines.
    ///
    /// - Parameter PutResourcePolicyInput : [no documentation found]
    ///
    /// - Returns: `PutResourcePolicyOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `InvalidResourcePolicyException` : The resource policy is not valid.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func putResourcePolicy(input: PutResourcePolicyInput) async throws -> PutResourcePolicyOutput
    /// Removes the tags of a given resource. Tags are metadata which can be used to manage a resource. To tag a resource, the caller account must be the same as the resource’s OwnerAccountId. Tagging resources in other accounts is not supported. Amazon Web Services Migration Hub Refactor Spaces does not propagate tags to orchestrated resources, such as an environment’s transit gateway.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Adds to or modifies the tags of the given resource. Tags are metadata which can be used to manage a resource. To untag a resource, the caller account must be the same as the resource’s OwnerAccountId. Untagging resources across accounts is not supported.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Updates an Amazon Web Services Migration Hub Refactor Spaces route.
    ///
    /// - Parameter UpdateRouteInput : [no documentation found]
    ///
    /// - Returns: `UpdateRouteOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : The user does not have sufficient access to perform this action.
    /// - `InternalServerException` : An unexpected error occurred while processing the request.
    /// - `ResourceNotFoundException` : The request references a resource that does not exist.
    /// - `ThrottlingException` : Request was denied because the request was throttled.
    /// - `ValidationException` : The input does not satisfy the constraints specified by an Amazon Web Service.
    func updateRoute(input: UpdateRouteInput) async throws -> UpdateRouteOutput
}

public enum MigrationHubRefactorSpacesClientTypes {}
