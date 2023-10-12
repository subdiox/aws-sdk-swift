// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Cloud9 Cloud9 is a collection of tools that you can use to code, build, run, test, debug, and release software in the cloud. For more information about Cloud9, see the [Cloud9 User Guide](https://docs.aws.amazon.com/cloud9/latest/user-guide). Cloud9 supports these operations:
///
/// * CreateEnvironmentEC2: Creates an Cloud9 development environment, launches an Amazon EC2 instance, and then connects from the instance to the environment.
///
/// * CreateEnvironmentMembership: Adds an environment member to an environment.
///
/// * DeleteEnvironment: Deletes an environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
///
/// * DeleteEnvironmentMembership: Deletes an environment member from an environment.
///
/// * DescribeEnvironmentMemberships: Gets information about environment members for an environment.
///
/// * DescribeEnvironments: Gets information about environments.
///
/// * DescribeEnvironmentStatus: Gets status information for an environment.
///
/// * ListEnvironments: Gets a list of environment identifiers.
///
/// * ListTagsForResource: Gets the tags for an environment.
///
/// * TagResource: Adds tags to an environment.
///
/// * UntagResource: Removes tags from an environment.
///
/// * UpdateEnvironment: Changes the settings of an existing environment.
///
/// * UpdateEnvironmentMembership: Changes the settings of an existing environment member for an environment.
public protocol Cloud9ClientProtocol {
    /// Creates an Cloud9 development environment, launches an Amazon Elastic Compute Cloud (Amazon EC2) instance, and then connects from the instance to the environment.
    ///
    /// - Parameter CreateEnvironmentEC2Input : [no documentation found]
    ///
    /// - Returns: `CreateEnvironmentEC2Output` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func createEnvironmentEC2(input: CreateEnvironmentEC2Input) async throws -> CreateEnvironmentEC2Output
    /// Adds an environment member to an Cloud9 development environment.
    ///
    /// - Parameter CreateEnvironmentMembershipInput : [no documentation found]
    ///
    /// - Returns: `CreateEnvironmentMembershipOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func createEnvironmentMembership(input: CreateEnvironmentMembershipInput) async throws -> CreateEnvironmentMembershipOutput
    /// Deletes an Cloud9 development environment. If an Amazon EC2 instance is connected to the environment, also terminates the instance.
    ///
    /// - Parameter DeleteEnvironmentInput : [no documentation found]
    ///
    /// - Returns: `DeleteEnvironmentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func deleteEnvironment(input: DeleteEnvironmentInput) async throws -> DeleteEnvironmentOutput
    /// Deletes an environment member from a development environment.
    ///
    /// - Parameter DeleteEnvironmentMembershipInput : [no documentation found]
    ///
    /// - Returns: `DeleteEnvironmentMembershipOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func deleteEnvironmentMembership(input: DeleteEnvironmentMembershipInput) async throws -> DeleteEnvironmentMembershipOutput
    /// Gets information about environment members for an Cloud9 development environment.
    ///
    /// - Parameter DescribeEnvironmentMembershipsInput : [no documentation found]
    ///
    /// - Returns: `DescribeEnvironmentMembershipsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func describeEnvironmentMemberships(input: DescribeEnvironmentMembershipsInput) async throws -> DescribeEnvironmentMembershipsOutput
    /// Gets information about Cloud9 development environments.
    ///
    /// - Parameter DescribeEnvironmentsInput : [no documentation found]
    ///
    /// - Returns: `DescribeEnvironmentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func describeEnvironments(input: DescribeEnvironmentsInput) async throws -> DescribeEnvironmentsOutput
    /// Gets status information for an Cloud9 development environment.
    ///
    /// - Parameter DescribeEnvironmentStatusInput : [no documentation found]
    ///
    /// - Returns: `DescribeEnvironmentStatusOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func describeEnvironmentStatus(input: DescribeEnvironmentStatusInput) async throws -> DescribeEnvironmentStatusOutput
    /// Gets a list of Cloud9 development environment identifiers.
    ///
    /// - Parameter ListEnvironmentsInput : [no documentation found]
    ///
    /// - Returns: `ListEnvironmentsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func listEnvironments(input: ListEnvironmentsInput) async throws -> ListEnvironmentsOutput
    /// Gets a list of the tags associated with an Cloud9 development environment.
    ///
    /// - Parameter ListTagsForResourceInput : [no documentation found]
    ///
    /// - Returns: `ListTagsForResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `NotFoundException` : The target resource cannot be found.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutput
    /// Adds tags to an Cloud9 development environment. Tags that you add to an Cloud9 environment by using this method will NOT be automatically propagated to underlying resources.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConcurrentAccessException` : A concurrent access issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `NotFoundException` : The target resource cannot be found.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes tags from an Cloud9 development environment.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConcurrentAccessException` : A concurrent access issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `NotFoundException` : The target resource cannot be found.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Changes the settings of an existing Cloud9 development environment.
    ///
    /// - Parameter UpdateEnvironmentInput : [no documentation found]
    ///
    /// - Returns: `UpdateEnvironmentOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func updateEnvironment(input: UpdateEnvironmentInput) async throws -> UpdateEnvironmentOutput
    /// Changes the settings of an existing environment member for an Cloud9 development environment.
    ///
    /// - Parameter UpdateEnvironmentMembershipInput : [no documentation found]
    ///
    /// - Returns: `UpdateEnvironmentMembershipOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `BadRequestException` : The target request is invalid.
    /// - `ConflictException` : A conflict occurred.
    /// - `ForbiddenException` : An access permissions issue occurred.
    /// - `InternalServerErrorException` : An internal server error occurred.
    /// - `LimitExceededException` : A service limit was exceeded.
    /// - `NotFoundException` : The target resource cannot be found.
    /// - `TooManyRequestsException` : Too many service requests were made over the given time period.
    func updateEnvironmentMembership(input: UpdateEnvironmentMembershipInput) async throws -> UpdateEnvironmentMembershipOutput
}

public enum Cloud9ClientTypes {}
