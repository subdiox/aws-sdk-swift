// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// For more information about Amazon Web Services Cloud Control API, see the [Amazon Web Services Cloud Control API User Guide](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html).
public protocol CloudControlClientProtocol {
    /// Cancels the specified resource operation request. For more information, see [Canceling resource operation requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-cancel) in the Amazon Web Services Cloud Control API User Guide. Only resource operations requests with a status of PENDING or IN_PROGRESS can be canceled.
    ///
    /// - Parameter CancelResourceRequestInput : [no documentation found]
    ///
    /// - Returns: `CancelResourceRequestOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConcurrentModificationException` : The resource is currently being modified by another operation.
    /// - `RequestTokenNotFoundException` : A resource operation with the specified request token can't be found.
    func cancelResourceRequest(input: CancelResourceRequestInput) async throws -> CancelResourceRequestOutput
    /// Creates the specified resource. For more information, see [Creating a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-create.html) in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource creation request, you can monitor the progress of your request by calling [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html) using the RequestToken of the ProgressEvent type returned by CreateResource.
    ///
    /// - Parameter CreateResourceInput : [no documentation found]
    ///
    /// - Returns: `CreateResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AlreadyExistsException` : The resource with the name requested already exists.
    /// - `ClientTokenConflictException` : The specified client token has already been used in another resource request. It's best practice for client tokens to be unique for each resource operation request. However, client token expire after 36 hours.
    /// - `ConcurrentOperationException` : Another resource operation is currently being performed on this resource.
    /// - `GeneralServiceException` : The resource handler has returned that the downstream service generated an error that doesn't map to any other handler error code.
    /// - `HandlerFailureException` : The resource handler has failed without a returning a more specific error code. This can include timeouts.
    /// - `HandlerInternalFailureException` : The resource handler has returned that an unexpected error occurred within the resource handler.
    /// - `InvalidCredentialsException` : The resource handler has returned that the credentials provided by the user are invalid.
    /// - `InvalidRequestException` : The resource handler has returned that invalid input from the user has generated a generic exception.
    /// - `NetworkFailureException` : The resource handler has returned that the request couldn't be completed due to networking issues, such as a failure to receive a response from the server.
    /// - `NotStabilizedException` : The resource handler has returned that the downstream resource failed to complete all of its ready-state checks.
    /// - `NotUpdatableException` : One or more properties included in this resource operation are defined as create-only, and therefore can't be updated.
    /// - `PrivateTypeException` : Cloud Control API hasn't received a valid response from the resource handler, due to a configuration error. This includes issues such as the resource handler returning an invalid response, or timing out.
    /// - `ResourceConflictException` : The resource is temporarily unavailable to be acted upon. For example, if the resource is currently undergoing an operation and can't be acted upon until that operation is finished.
    /// - `ResourceNotFoundException` : A resource with the specified identifier can't be found.
    /// - `ServiceInternalErrorException` : The resource handler has returned that the downstream service returned an internal error, typically with a 5XX HTTP status code.
    /// - `ServiceLimitExceededException` : The resource handler has returned that a non-transient resource limit was reached on the service side.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `TypeNotFoundException` : The specified extension doesn't exist in the CloudFormation registry.
    /// - `UnsupportedActionException` : The specified resource doesn't support this resource operation.
    func createResource(input: CreateResourceInput) async throws -> CreateResourceOutput
    /// Deletes the specified resource. For details, see [Deleting a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-delete.html) in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource deletion request, you can monitor the progress of your request by calling [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html) using the RequestToken of the ProgressEvent returned by DeleteResource.
    ///
    /// - Parameter DeleteResourceInput : [no documentation found]
    ///
    /// - Returns: `DeleteResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AlreadyExistsException` : The resource with the name requested already exists.
    /// - `ClientTokenConflictException` : The specified client token has already been used in another resource request. It's best practice for client tokens to be unique for each resource operation request. However, client token expire after 36 hours.
    /// - `ConcurrentOperationException` : Another resource operation is currently being performed on this resource.
    /// - `GeneralServiceException` : The resource handler has returned that the downstream service generated an error that doesn't map to any other handler error code.
    /// - `HandlerFailureException` : The resource handler has failed without a returning a more specific error code. This can include timeouts.
    /// - `HandlerInternalFailureException` : The resource handler has returned that an unexpected error occurred within the resource handler.
    /// - `InvalidCredentialsException` : The resource handler has returned that the credentials provided by the user are invalid.
    /// - `InvalidRequestException` : The resource handler has returned that invalid input from the user has generated a generic exception.
    /// - `NetworkFailureException` : The resource handler has returned that the request couldn't be completed due to networking issues, such as a failure to receive a response from the server.
    /// - `NotStabilizedException` : The resource handler has returned that the downstream resource failed to complete all of its ready-state checks.
    /// - `NotUpdatableException` : One or more properties included in this resource operation are defined as create-only, and therefore can't be updated.
    /// - `PrivateTypeException` : Cloud Control API hasn't received a valid response from the resource handler, due to a configuration error. This includes issues such as the resource handler returning an invalid response, or timing out.
    /// - `ResourceConflictException` : The resource is temporarily unavailable to be acted upon. For example, if the resource is currently undergoing an operation and can't be acted upon until that operation is finished.
    /// - `ResourceNotFoundException` : A resource with the specified identifier can't be found.
    /// - `ServiceInternalErrorException` : The resource handler has returned that the downstream service returned an internal error, typically with a 5XX HTTP status code.
    /// - `ServiceLimitExceededException` : The resource handler has returned that a non-transient resource limit was reached on the service side.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `TypeNotFoundException` : The specified extension doesn't exist in the CloudFormation registry.
    /// - `UnsupportedActionException` : The specified resource doesn't support this resource operation.
    func deleteResource(input: DeleteResourceInput) async throws -> DeleteResourceOutput
    /// Returns information about the current state of the specified resource. For details, see [Reading a resource's current state](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-read.html). You can use this action to return information about an existing resource in your account and Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.
    ///
    /// - Parameter GetResourceInput : [no documentation found]
    ///
    /// - Returns: `GetResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AlreadyExistsException` : The resource with the name requested already exists.
    /// - `GeneralServiceException` : The resource handler has returned that the downstream service generated an error that doesn't map to any other handler error code.
    /// - `HandlerFailureException` : The resource handler has failed without a returning a more specific error code. This can include timeouts.
    /// - `HandlerInternalFailureException` : The resource handler has returned that an unexpected error occurred within the resource handler.
    /// - `InvalidCredentialsException` : The resource handler has returned that the credentials provided by the user are invalid.
    /// - `InvalidRequestException` : The resource handler has returned that invalid input from the user has generated a generic exception.
    /// - `NetworkFailureException` : The resource handler has returned that the request couldn't be completed due to networking issues, such as a failure to receive a response from the server.
    /// - `NotStabilizedException` : The resource handler has returned that the downstream resource failed to complete all of its ready-state checks.
    /// - `NotUpdatableException` : One or more properties included in this resource operation are defined as create-only, and therefore can't be updated.
    /// - `PrivateTypeException` : Cloud Control API hasn't received a valid response from the resource handler, due to a configuration error. This includes issues such as the resource handler returning an invalid response, or timing out.
    /// - `ResourceConflictException` : The resource is temporarily unavailable to be acted upon. For example, if the resource is currently undergoing an operation and can't be acted upon until that operation is finished.
    /// - `ResourceNotFoundException` : A resource with the specified identifier can't be found.
    /// - `ServiceInternalErrorException` : The resource handler has returned that the downstream service returned an internal error, typically with a 5XX HTTP status code.
    /// - `ServiceLimitExceededException` : The resource handler has returned that a non-transient resource limit was reached on the service side.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `TypeNotFoundException` : The specified extension doesn't exist in the CloudFormation registry.
    /// - `UnsupportedActionException` : The specified resource doesn't support this resource operation.
    func getResource(input: GetResourceInput) async throws -> GetResourceOutput
    /// Returns the current status of a resource operation request. For more information, see [Tracking the progress of resource operation requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-track) in the Amazon Web Services Cloud Control API User Guide.
    ///
    /// - Parameter GetResourceRequestStatusInput : [no documentation found]
    ///
    /// - Returns: `GetResourceRequestStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `RequestTokenNotFoundException` : A resource operation with the specified request token can't be found.
    func getResourceRequestStatus(input: GetResourceRequestStatusInput) async throws -> GetResourceRequestStatusOutput
    /// Returns existing resource operation requests. This includes requests of all status types. For more information, see [Listing active resource operation requests](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-manage-requests.html#resource-operations-manage-requests-list) in the Amazon Web Services Cloud Control API User Guide. Resource operation requests expire after 7 days.
    ///
    /// - Parameter ListResourceRequestsInput : [no documentation found]
    ///
    /// - Returns: `ListResourceRequestsOutput` : [no documentation found]
    func listResourceRequests(input: ListResourceRequestsInput) async throws -> ListResourceRequestsOutput
    /// Returns information about the specified resources. For more information, see [Discovering resources](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-list.html) in the Amazon Web Services Cloud Control API User Guide. You can use this action to return information about existing resources in your account and Amazon Web Services Region, whether those resources were provisioned using Cloud Control API.
    ///
    /// - Parameter ListResourcesInput : [no documentation found]
    ///
    /// - Returns: `ListResourcesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AlreadyExistsException` : The resource with the name requested already exists.
    /// - `GeneralServiceException` : The resource handler has returned that the downstream service generated an error that doesn't map to any other handler error code.
    /// - `HandlerFailureException` : The resource handler has failed without a returning a more specific error code. This can include timeouts.
    /// - `HandlerInternalFailureException` : The resource handler has returned that an unexpected error occurred within the resource handler.
    /// - `InvalidCredentialsException` : The resource handler has returned that the credentials provided by the user are invalid.
    /// - `InvalidRequestException` : The resource handler has returned that invalid input from the user has generated a generic exception.
    /// - `NetworkFailureException` : The resource handler has returned that the request couldn't be completed due to networking issues, such as a failure to receive a response from the server.
    /// - `NotStabilizedException` : The resource handler has returned that the downstream resource failed to complete all of its ready-state checks.
    /// - `NotUpdatableException` : One or more properties included in this resource operation are defined as create-only, and therefore can't be updated.
    /// - `PrivateTypeException` : Cloud Control API hasn't received a valid response from the resource handler, due to a configuration error. This includes issues such as the resource handler returning an invalid response, or timing out.
    /// - `ResourceConflictException` : The resource is temporarily unavailable to be acted upon. For example, if the resource is currently undergoing an operation and can't be acted upon until that operation is finished.
    /// - `ResourceNotFoundException` : A resource with the specified identifier can't be found.
    /// - `ServiceInternalErrorException` : The resource handler has returned that the downstream service returned an internal error, typically with a 5XX HTTP status code.
    /// - `ServiceLimitExceededException` : The resource handler has returned that a non-transient resource limit was reached on the service side.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `TypeNotFoundException` : The specified extension doesn't exist in the CloudFormation registry.
    /// - `UnsupportedActionException` : The specified resource doesn't support this resource operation.
    func listResources(input: ListResourcesInput) async throws -> ListResourcesOutput
    /// Updates the specified property values in the resource. You specify your resource property updates as a list of patch operations contained in a JSON patch document that adheres to the [ RFC 6902 - JavaScript Object Notation (JSON) Patch ](https://datatracker.ietf.org/doc/html/rfc6902) standard. For details on how Cloud Control API performs resource update operations, see [Updating a resource](https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations-update.html) in the Amazon Web Services Cloud Control API User Guide. After you have initiated a resource update request, you can monitor the progress of your request by calling [GetResourceRequestStatus](https://docs.aws.amazon.com/cloudcontrolapi/latest/APIReference/API_GetResourceRequestStatus.html) using the RequestToken of the ProgressEvent returned by UpdateResource. For more information about the properties of a specific resource, refer to the related topic for the resource in the [Resource and property types reference](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-template-resource-type-ref.html) in the CloudFormation Users Guide.
    ///
    /// - Parameter UpdateResourceInput : [no documentation found]
    ///
    /// - Returns: `UpdateResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AlreadyExistsException` : The resource with the name requested already exists.
    /// - `ClientTokenConflictException` : The specified client token has already been used in another resource request. It's best practice for client tokens to be unique for each resource operation request. However, client token expire after 36 hours.
    /// - `ConcurrentOperationException` : Another resource operation is currently being performed on this resource.
    /// - `GeneralServiceException` : The resource handler has returned that the downstream service generated an error that doesn't map to any other handler error code.
    /// - `HandlerFailureException` : The resource handler has failed without a returning a more specific error code. This can include timeouts.
    /// - `HandlerInternalFailureException` : The resource handler has returned that an unexpected error occurred within the resource handler.
    /// - `InvalidCredentialsException` : The resource handler has returned that the credentials provided by the user are invalid.
    /// - `InvalidRequestException` : The resource handler has returned that invalid input from the user has generated a generic exception.
    /// - `NetworkFailureException` : The resource handler has returned that the request couldn't be completed due to networking issues, such as a failure to receive a response from the server.
    /// - `NotStabilizedException` : The resource handler has returned that the downstream resource failed to complete all of its ready-state checks.
    /// - `NotUpdatableException` : One or more properties included in this resource operation are defined as create-only, and therefore can't be updated.
    /// - `PrivateTypeException` : Cloud Control API hasn't received a valid response from the resource handler, due to a configuration error. This includes issues such as the resource handler returning an invalid response, or timing out.
    /// - `ResourceConflictException` : The resource is temporarily unavailable to be acted upon. For example, if the resource is currently undergoing an operation and can't be acted upon until that operation is finished.
    /// - `ResourceNotFoundException` : A resource with the specified identifier can't be found.
    /// - `ServiceInternalErrorException` : The resource handler has returned that the downstream service returned an internal error, typically with a 5XX HTTP status code.
    /// - `ServiceLimitExceededException` : The resource handler has returned that a non-transient resource limit was reached on the service side.
    /// - `ThrottlingException` : The request was denied due to request throttling.
    /// - `TypeNotFoundException` : The specified extension doesn't exist in the CloudFormation registry.
    /// - `UnsupportedActionException` : The specified resource doesn't support this resource operation.
    func updateResource(input: UpdateResourceInput) async throws -> UpdateResourceOutput
}

public enum CloudControlClientTypes {}
