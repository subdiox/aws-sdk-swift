// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// You can use the Amazon Elastic Block Store (Amazon EBS) direct APIs to create Amazon EBS snapshots, write data directly to your snapshots, read data on your snapshots, and identify the differences or changes between two snapshots. If you’re an independent software vendor (ISV) who offers backup services for Amazon EBS, the EBS direct APIs make it more efficient and cost-effective to track incremental changes on your Amazon EBS volumes through snapshots. This can be done without having to create new volumes from snapshots, and then use Amazon Elastic Compute Cloud (Amazon EC2) instances to compare the differences. You can create incremental snapshots directly from data on-premises into volumes and the cloud to use for quick disaster recovery. With the ability to write and read snapshots, you can write your on-premises data to an snapshot during a disaster. Then after recovery, you can restore it back to Amazon Web Services or on-premises from the snapshot. You no longer need to build and maintain complex mechanisms to copy data to and from Amazon EBS. This API reference provides detailed information about the actions, data types, parameters, and errors of the EBS direct APIs. For more information about the elements that make up the EBS direct APIs, and examples of how to use them effectively, see [Accessing the Contents of an Amazon EBS Snapshot](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html) in the Amazon Elastic Compute Cloud User Guide. For more information about the supported Amazon Web Services Regions, endpoints, and service quotas for the EBS direct APIs, see [Amazon Elastic Block Store Endpoints and Quotas](https://docs.aws.amazon.com/general/latest/gr/ebs-service.html) in the Amazon Web Services General Reference.
public protocol EBSClientProtocol {
    /// Seals and completes the snapshot after all of the required blocks of data have been written to it. Completing the snapshot changes the status to completed. You cannot write new blocks to a snapshot after it has been completed. You should always retry requests that receive server (5xx) error responses, and ThrottlingException and RequestThrottledException client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html) in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// - Parameter CompleteSnapshotInput : [no documentation found]
    ///
    /// - Returns: `CompleteSnapshotOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `RequestThrottledException` : The number of API requests has exceeded the maximum allowed API request throttling limit for the snapshot. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : Your current service quotas do not allow you to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints of the EBS direct APIs.
    func completeSnapshot(input: CompleteSnapshotInput) async throws -> CompleteSnapshotOutput
    /// Returns the data in a block in an Amazon Elastic Block Store snapshot. You should always retry requests that receive server (5xx) error responses, and ThrottlingException and RequestThrottledException client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html) in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// - Parameter GetSnapshotBlockInput : [no documentation found]
    ///
    /// - Returns: `GetSnapshotBlockOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `RequestThrottledException` : The number of API requests has exceeded the maximum allowed API request throttling limit for the snapshot. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : Your current service quotas do not allow you to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints of the EBS direct APIs.
    func getSnapshotBlock(input: GetSnapshotBlockInput) async throws -> GetSnapshotBlockOutput
    /// Returns information about the blocks that are different between two Amazon Elastic Block Store snapshots of the same volume/snapshot lineage. You should always retry requests that receive server (5xx) error responses, and ThrottlingException and RequestThrottledException client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html) in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// - Parameter ListChangedBlocksInput : [no documentation found]
    ///
    /// - Returns: `ListChangedBlocksOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `RequestThrottledException` : The number of API requests has exceeded the maximum allowed API request throttling limit for the snapshot. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : Your current service quotas do not allow you to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints of the EBS direct APIs.
    func listChangedBlocks(input: ListChangedBlocksInput) async throws -> ListChangedBlocksOutput
    /// Returns information about the blocks in an Amazon Elastic Block Store snapshot. You should always retry requests that receive server (5xx) error responses, and ThrottlingException and RequestThrottledException client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html) in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// - Parameter ListSnapshotBlocksInput : [no documentation found]
    ///
    /// - Returns: `ListSnapshotBlocksOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `RequestThrottledException` : The number of API requests has exceeded the maximum allowed API request throttling limit for the snapshot. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : Your current service quotas do not allow you to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints of the EBS direct APIs.
    func listSnapshotBlocks(input: ListSnapshotBlocksInput) async throws -> ListSnapshotBlocksOutput
    /// Writes a block of data to a snapshot. If the specified block contains data, the existing data is overwritten. The target snapshot must be in the pending state. Data written to a snapshot must be aligned with 512-KiB sectors. You should always retry requests that receive server (5xx) error responses, and ThrottlingException and RequestThrottledException client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html) in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// - Parameter PutSnapshotBlockInput : [no documentation found]
    ///
    /// - Returns: `PutSnapshotBlockOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `InternalServerException` : An internal error has occurred. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `RequestThrottledException` : The number of API requests has exceeded the maximum allowed API request throttling limit for the snapshot. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : Your current service quotas do not allow you to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints of the EBS direct APIs.
    func putSnapshotBlock(input: PutSnapshotBlockInput) async throws -> PutSnapshotBlockOutput
    /// Creates a new Amazon EBS snapshot. The new snapshot enters the pending state after the request completes. After creating the snapshot, use [ PutSnapshotBlock](https://docs.aws.amazon.com/ebs/latest/APIReference/API_PutSnapshotBlock.html) to write blocks of data to the snapshot. You should always retry requests that receive server (5xx) error responses, and ThrottlingException and RequestThrottledException client error responses. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html) in the Amazon Elastic Compute Cloud User Guide.
    ///
    /// - Parameter StartSnapshotInput : [no documentation found]
    ///
    /// - Returns: `StartSnapshotOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `AccessDeniedException` : You do not have sufficient access to perform this action.
    /// - `ConcurrentLimitExceededException` : You have reached the limit for concurrent API requests. For more information, see [Optimizing performance of the EBS direct APIs](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-accessing-snapshot.html#ebsapi-performance) in the Amazon Elastic Compute Cloud User Guide.
    /// - `ConflictException` : The request uses the same client token as a previous, but non-identical request.
    /// - `InternalServerException` : An internal error has occurred. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `RequestThrottledException` : The number of API requests has exceeded the maximum allowed API request throttling limit for the snapshot. For more information see [Error retries](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/error-retries.html).
    /// - `ResourceNotFoundException` : The specified resource does not exist.
    /// - `ServiceQuotaExceededException` : Your current service quotas do not allow you to perform this action.
    /// - `ValidationException` : The input fails to satisfy the constraints of the EBS direct APIs.
    func startSnapshot(input: StartSnapshotInput) async throws -> StartSnapshotOutput
}

public enum EBSClientTypes {}
