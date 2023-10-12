// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CloudFrontClient {
    /// Paginate over `[ListCloudFrontOriginAccessIdentitiesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCloudFrontOriginAccessIdentitiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCloudFrontOriginAccessIdentitiesOutput`
    public func listCloudFrontOriginAccessIdentitiesPaginated(input: ListCloudFrontOriginAccessIdentitiesInput) -> ClientRuntime.PaginatorSequence<ListCloudFrontOriginAccessIdentitiesInput, ListCloudFrontOriginAccessIdentitiesOutput> {
        return ClientRuntime.PaginatorSequence<ListCloudFrontOriginAccessIdentitiesInput, ListCloudFrontOriginAccessIdentitiesOutput>(input: input, inputKey: \ListCloudFrontOriginAccessIdentitiesInput.marker, outputKey: \ListCloudFrontOriginAccessIdentitiesOutput.cloudFrontOriginAccessIdentityList?.nextMarker, paginationFunction: self.listCloudFrontOriginAccessIdentities(input:))
    }
}

extension ListCloudFrontOriginAccessIdentitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCloudFrontOriginAccessIdentitiesInput {
        return ListCloudFrontOriginAccessIdentitiesInput(
            marker: token,
            maxItems: self.maxItems
        )}
}

extension PaginatorSequence where Input == ListCloudFrontOriginAccessIdentitiesInput, Output == ListCloudFrontOriginAccessIdentitiesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCloudFrontOriginAccessIdentitiesPaginated`
    /// to access the nested member `[CloudFrontClientTypes.CloudFrontOriginAccessIdentitySummary]`
    /// - Returns: `[CloudFrontClientTypes.CloudFrontOriginAccessIdentitySummary]`
    public func items() async throws -> [CloudFrontClientTypes.CloudFrontOriginAccessIdentitySummary] {
        return try await self.asyncCompactMap { item in item.cloudFrontOriginAccessIdentityList?.items }
    }
}
extension CloudFrontClient {
    /// Paginate over `[ListDistributionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDistributionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDistributionsOutput`
    public func listDistributionsPaginated(input: ListDistributionsInput) -> ClientRuntime.PaginatorSequence<ListDistributionsInput, ListDistributionsOutput> {
        return ClientRuntime.PaginatorSequence<ListDistributionsInput, ListDistributionsOutput>(input: input, inputKey: \ListDistributionsInput.marker, outputKey: \ListDistributionsOutput.distributionList?.nextMarker, paginationFunction: self.listDistributions(input:))
    }
}

extension ListDistributionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDistributionsInput {
        return ListDistributionsInput(
            marker: token,
            maxItems: self.maxItems
        )}
}

extension PaginatorSequence where Input == ListDistributionsInput, Output == ListDistributionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDistributionsPaginated`
    /// to access the nested member `[CloudFrontClientTypes.DistributionSummary]`
    /// - Returns: `[CloudFrontClientTypes.DistributionSummary]`
    public func items() async throws -> [CloudFrontClientTypes.DistributionSummary] {
        return try await self.asyncCompactMap { item in item.distributionList?.items }
    }
}
extension CloudFrontClient {
    /// Paginate over `[ListInvalidationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInvalidationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInvalidationsOutput`
    public func listInvalidationsPaginated(input: ListInvalidationsInput) -> ClientRuntime.PaginatorSequence<ListInvalidationsInput, ListInvalidationsOutput> {
        return ClientRuntime.PaginatorSequence<ListInvalidationsInput, ListInvalidationsOutput>(input: input, inputKey: \ListInvalidationsInput.marker, outputKey: \ListInvalidationsOutput.invalidationList?.nextMarker, paginationFunction: self.listInvalidations(input:))
    }
}

extension ListInvalidationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInvalidationsInput {
        return ListInvalidationsInput(
            distributionId: self.distributionId,
            marker: token,
            maxItems: self.maxItems
        )}
}

extension PaginatorSequence where Input == ListInvalidationsInput, Output == ListInvalidationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listInvalidationsPaginated`
    /// to access the nested member `[CloudFrontClientTypes.InvalidationSummary]`
    /// - Returns: `[CloudFrontClientTypes.InvalidationSummary]`
    public func items() async throws -> [CloudFrontClientTypes.InvalidationSummary] {
        return try await self.asyncCompactMap { item in item.invalidationList?.items }
    }
}
extension CloudFrontClient {
    /// Paginate over `[ListStreamingDistributionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStreamingDistributionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStreamingDistributionsOutput`
    public func listStreamingDistributionsPaginated(input: ListStreamingDistributionsInput) -> ClientRuntime.PaginatorSequence<ListStreamingDistributionsInput, ListStreamingDistributionsOutput> {
        return ClientRuntime.PaginatorSequence<ListStreamingDistributionsInput, ListStreamingDistributionsOutput>(input: input, inputKey: \ListStreamingDistributionsInput.marker, outputKey: \ListStreamingDistributionsOutput.streamingDistributionList?.nextMarker, paginationFunction: self.listStreamingDistributions(input:))
    }
}

extension ListStreamingDistributionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStreamingDistributionsInput {
        return ListStreamingDistributionsInput(
            marker: token,
            maxItems: self.maxItems
        )}
}

extension PaginatorSequence where Input == ListStreamingDistributionsInput, Output == ListStreamingDistributionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStreamingDistributionsPaginated`
    /// to access the nested member `[CloudFrontClientTypes.StreamingDistributionSummary]`
    /// - Returns: `[CloudFrontClientTypes.StreamingDistributionSummary]`
    public func items() async throws -> [CloudFrontClientTypes.StreamingDistributionSummary] {
        return try await self.asyncCompactMap { item in item.streamingDistributionList?.items }
    }
}
