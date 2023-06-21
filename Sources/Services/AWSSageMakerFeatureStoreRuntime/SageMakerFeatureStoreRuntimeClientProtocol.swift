// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Contains all data plane API operations and data types for the Amazon SageMaker Feature Store. Use this API to put, delete, and retrieve (get) features from a feature store. Use the following operations to configure your OnlineStore and OfflineStore features, and to create and manage feature groups:
///
/// * [CreateFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_CreateFeatureGroup.html)
///
/// * [DeleteFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DeleteFeatureGroup.html)
///
/// * [DescribeFeatureGroup](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_DescribeFeatureGroup.html)
///
/// * [ListFeatureGroups](https://docs.aws.amazon.com/sagemaker/latest/APIReference/API_ListFeatureGroups.html)
public protocol SageMakerFeatureStoreRuntimeClientProtocol {
    /// Retrieves a batch of Records from a FeatureGroup.
    func batchGetRecord(input: BatchGetRecordInput) async throws -> BatchGetRecordOutputResponse
    /// Deletes a Record from a FeatureGroup in the OnlineStore. Feature Store supports both SOFT_DELETE and HARD_DELETE. For SOFT_DELETE (default), feature columns are set to null and the record is no longer retrievable by GetRecord or BatchGetRecord. For HARD_DELETE, the complete Record is removed from the OnlineStore. In both cases, Feature Store appends the deleted record marker to the OfflineStore with feature values set to null, is_deleted value set to True, and EventTime set to the delete input EventTime. Note that the EventTime specified in DeleteRecord should be set later than the EventTime of the existing record in the OnlineStore for that RecordIdentifer. If it is not, the deletion does not occur:
    ///
    /// * For SOFT_DELETE, the existing (undeleted) record remains in the OnlineStore, though the delete record marker is still written to the OfflineStore.
    ///
    /// * HARD_DELETE returns EventTime: 400 ValidationException to indicate that the delete operation failed. No delete record marker is written to the OfflineStore.
    func deleteRecord(input: DeleteRecordInput) async throws -> DeleteRecordOutputResponse
    /// Use for OnlineStore serving from a FeatureStore. Only the latest records stored in the OnlineStore can be retrieved. If no Record with RecordIdentifierValue is found, then an empty result is returned.
    func getRecord(input: GetRecordInput) async throws -> GetRecordOutputResponse
    /// Used for data ingestion into the FeatureStore. The PutRecord API writes to both the OnlineStore and OfflineStore. If the record is the latest record for the recordIdentifier, the record is written to both the OnlineStore and OfflineStore. If the record is a historic record, it is written only to the OfflineStore.
    func putRecord(input: PutRecordInput) async throws -> PutRecordOutputResponse
}

public enum SageMakerFeatureStoreRuntimeClientTypes {}
