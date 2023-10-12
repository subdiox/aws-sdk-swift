// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// For more information about AWS CloudHSM, see [AWS CloudHSM](http://aws.amazon.com/cloudhsm/) and the [AWS CloudHSM User Guide](https://docs.aws.amazon.com/cloudhsm/latest/userguide/).
public protocol CloudHSMV2ClientProtocol {
    /// Copy an AWS CloudHSM cluster backup to a different region.
    ///
    /// - Parameter CopyBackupToRegionInput : [no documentation found]
    ///
    /// - Returns: `CopyBackupToRegionOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func copyBackupToRegion(input: CopyBackupToRegionInput) async throws -> CopyBackupToRegionOutput
    /// Creates a new AWS CloudHSM cluster.
    ///
    /// - Parameter CreateClusterInput : [no documentation found]
    ///
    /// - Returns: `CreateClusterOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutput
    /// Creates a new hardware security module (HSM) in the specified AWS CloudHSM cluster.
    ///
    /// - Parameter CreateHsmInput : [no documentation found]
    ///
    /// - Returns: `CreateHsmOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    func createHsm(input: CreateHsmInput) async throws -> CreateHsmOutput
    /// Deletes a specified AWS CloudHSM backup. A backup can be restored up to 7 days after the DeleteBackup request is made. For more information on restoring a backup, see [RestoreBackup].
    ///
    /// - Parameter DeleteBackupInput : [no documentation found]
    ///
    /// - Returns: `DeleteBackupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    func deleteBackup(input: DeleteBackupInput) async throws -> DeleteBackupOutput
    /// Deletes the specified AWS CloudHSM cluster. Before you can delete a cluster, you must delete all HSMs in the cluster. To see if the cluster contains any HSMs, use [DescribeClusters]. To delete an HSM, use [DeleteHsm].
    ///
    /// - Parameter DeleteClusterInput : [no documentation found]
    ///
    /// - Returns: `DeleteClusterOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutput
    /// Deletes the specified HSM. To specify an HSM, you can use its identifier (ID), the IP address of the HSM's elastic network interface (ENI), or the ID of the HSM's ENI. You need to specify only one of these values. To find these values, use [DescribeClusters].
    ///
    /// - Parameter DeleteHsmInput : [no documentation found]
    ///
    /// - Returns: `DeleteHsmOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    func deleteHsm(input: DeleteHsmInput) async throws -> DeleteHsmOutput
    /// Gets information about backups of AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the backups. When the response contains only a subset of backups, it includes a NextToken value. Use this value in a subsequent DescribeBackups request to get more backups. When you receive a response with no NextToken (or an empty or null value), that means there are no more backups to get.
    ///
    /// - Parameter DescribeBackupsInput : [no documentation found]
    ///
    /// - Returns: `DescribeBackupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func describeBackups(input: DescribeBackupsInput) async throws -> DescribeBackupsOutput
    /// Gets information about AWS CloudHSM clusters. This is a paginated operation, which means that each response might contain only a subset of all the clusters. When the response contains only a subset of clusters, it includes a NextToken value. Use this value in a subsequent DescribeClusters request to get more clusters. When you receive a response with no NextToken (or an empty or null value), that means there are no more clusters to get.
    ///
    /// - Parameter DescribeClustersInput : [no documentation found]
    ///
    /// - Returns: `DescribeClustersOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func describeClusters(input: DescribeClustersInput) async throws -> DescribeClustersOutput
    /// Claims an AWS CloudHSM cluster by submitting the cluster certificate issued by your issuing certificate authority (CA) and the CA's root certificate. Before you can claim a cluster, you must sign the cluster's certificate signing request (CSR) with your issuing CA. To get the cluster's CSR, use [DescribeClusters].
    ///
    /// - Parameter InitializeClusterInput : [no documentation found]
    ///
    /// - Returns: `InitializeClusterOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    func initializeCluster(input: InitializeClusterInput) async throws -> InitializeClusterOutput
    /// Gets a list of tags for the specified AWS CloudHSM cluster. This is a paginated operation, which means that each response might contain only a subset of all the tags. When the response contains only a subset of tags, it includes a NextToken value. Use this value in a subsequent ListTags request to get more tags. When you receive a response with no NextToken (or an empty or null value), that means there are no more tags to get.
    ///
    /// - Parameter ListTagsInput : [no documentation found]
    ///
    /// - Returns: `ListTagsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func listTags(input: ListTagsInput) async throws -> ListTagsOutput
    /// Modifies attributes for AWS CloudHSM backup.
    ///
    /// - Parameter ModifyBackupAttributesInput : [no documentation found]
    ///
    /// - Returns: `ModifyBackupAttributesOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    func modifyBackupAttributes(input: ModifyBackupAttributesInput) async throws -> ModifyBackupAttributesOutput
    /// Modifies AWS CloudHSM cluster.
    ///
    /// - Parameter ModifyClusterInput : [no documentation found]
    ///
    /// - Returns: `ModifyClusterOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    func modifyCluster(input: ModifyClusterInput) async throws -> ModifyClusterOutput
    /// Restores a specified AWS CloudHSM backup that is in the PENDING_DELETION state. For mor information on deleting a backup, see [DeleteBackup].
    ///
    /// - Parameter RestoreBackupInput : [no documentation found]
    ///
    /// - Returns: `RestoreBackupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    func restoreBackup(input: RestoreBackupInput) async throws -> RestoreBackupOutput
    /// Adds or overwrites one or more tags for the specified AWS CloudHSM cluster.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes the specified tag or tags from the specified AWS CloudHSM cluster.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `CloudHsmAccessDeniedException` : The request was rejected because the requester does not have permission to perform the requested operation.
    /// - `CloudHsmInternalFailureException` : The request was rejected because of an AWS CloudHSM internal failure. The request can be retried.
    /// - `CloudHsmInvalidRequestException` : The request was rejected because it is not a valid request.
    /// - `CloudHsmResourceNotFoundException` : The request was rejected because it refers to a resource that cannot be found.
    /// - `CloudHsmServiceException` : The request was rejected because an error occurred.
    /// - `CloudHsmTagException` : The request was rejected because of a tagging failure. Verify the tag conditions in all applicable policies, and then retry the request.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
}

public enum CloudHSMV2ClientTypes {}
