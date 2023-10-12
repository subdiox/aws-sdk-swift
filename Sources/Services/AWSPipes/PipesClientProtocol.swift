// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Amazon EventBridge Pipes connects event sources to targets. Pipes reduces the need for specialized knowledge and integration code when developing event driven architectures. This helps ensures consistency across your company’s applications. With Pipes, the target can be any available EventBridge target. To set up a pipe, you select the event source, add optional event filtering, define optional enrichment, and select the target for the event data.
public protocol PipesClientProtocol {
    /// Create a pipe. Amazon EventBridge Pipes connect event sources to targets and reduces the need for specialized knowledge and integration code.
    ///
    /// - Parameter CreatePipeInput : [no documentation found]
    ///
    /// - Returns: `CreatePipeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : An action you attempted resulted in an exception.
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ServiceQuotaExceededException` : A quota has been exceeded.
    /// - `ThrottlingException` : An action was throttled.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func createPipe(input: CreatePipeInput) async throws -> CreatePipeOutput
    /// Delete an existing pipe. For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html) in the Amazon EventBridge User Guide.
    ///
    /// - Parameter DeletePipeInput : [no documentation found]
    ///
    /// - Returns: `DeletePipeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : An action you attempted resulted in an exception.
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ThrottlingException` : An action was throttled.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func deletePipe(input: DeletePipeInput) async throws -> DeletePipeOutput
    /// Get the information about an existing pipe. For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html) in the Amazon EventBridge User Guide.
    ///
    /// - Parameter DescribePipeInput : [no documentation found]
    ///
    /// - Returns: `DescribePipeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ThrottlingException` : An action was throttled.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func describePipe(input: DescribePipeInput) async throws -> DescribePipeOutput
    /// Get the pipes associated with this account. For more information about pipes, see [Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html) in the Amazon EventBridge User Guide.
    ///
    /// - Parameter ListPipesInput : [no documentation found]
    ///
    /// - Returns: `ListPipesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `ThrottlingException` : An action was throttled.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func listPipes(input: ListPipesInput) async throws -> ListPipesOutput
    /// Displays the tags associated with a pipe.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Start an existing pipe.
    ///
    /// - Parameter StartPipeInput : [no documentation found]
    ///
    /// - Returns: `StartPipeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : An action you attempted resulted in an exception.
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ThrottlingException` : An action was throttled.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func startPipe(input: StartPipeInput) async throws -> StartPipeOutput
    /// Stop an existing pipe.
    ///
    /// - Parameter StopPipeInput : [no documentation found]
    ///
    /// - Returns: `StopPipeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : An action you attempted resulted in an exception.
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ThrottlingException` : An action was throttled.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func stopPipe(input: StopPipeInput) async throws -> StopPipeOutput
    /// Assigns one or more tags (key-value pairs) to the specified pipe. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a pipe that already has tags. If you specify a new tag key, this tag is appended to the list of tags associated with the pipe. If you specify a tag key that is already associated with the pipe, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a pipe.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes one or more tags from the specified pipes.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Update an existing pipe. When you call UpdatePipe, only the fields that are included in the request are changed, the rest are unchanged. The exception to this is if you modify any Amazon Web Services-service specific fields in the SourceParameters, EnrichmentParameters, or TargetParameters objects. The fields in these objects are updated atomically as one and override existing values. This is by design and means that if you don't specify an optional field in one of these Parameters objects, that field will be set to its system-default value after the update. For more information about pipes, see [ Amazon EventBridge Pipes](https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-pipes.html) in the Amazon EventBridge User Guide.
    ///
    /// - Parameter UpdatePipeInput : [no documentation found]
    ///
    /// - Returns: `UpdatePipeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ConflictException` : An action you attempted resulted in an exception.
    /// - `InternalException` : This exception occurs due to unexpected causes.
    /// - `NotFoundException` : An entity that you specified does not exist.
    /// - `ThrottlingException` : An action was throttled.
    /// - `ValidationException` : Indicates that an error has occurred while performing a validate operation.
    func updatePipe(input: UpdatePipeInput) async throws -> UpdatePipeOutput
}

public enum PipesClientTypes {}
