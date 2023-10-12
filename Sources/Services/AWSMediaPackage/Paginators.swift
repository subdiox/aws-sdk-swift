// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MediaPackageClient {
    /// Paginate over `[ListChannelsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListChannelsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListChannelsOutput`
    public func listChannelsPaginated(input: ListChannelsInput) -> ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutput> {
        return ClientRuntime.PaginatorSequence<ListChannelsInput, ListChannelsOutput>(input: input, inputKey: \ListChannelsInput.nextToken, outputKey: \ListChannelsOutput.nextToken, paginationFunction: self.listChannels(input:))
    }
}

extension ListChannelsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChannelsInput {
        return ListChannelsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListChannelsInput, Output == ListChannelsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listChannelsPaginated`
    /// to access the nested member `[MediaPackageClientTypes.Channel]`
    /// - Returns: `[MediaPackageClientTypes.Channel]`
    public func channels() async throws -> [MediaPackageClientTypes.Channel] {
        return try await self.asyncCompactMap { item in item.channels }
    }
}
extension MediaPackageClient {
    /// Paginate over `[ListHarvestJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListHarvestJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListHarvestJobsOutput`
    public func listHarvestJobsPaginated(input: ListHarvestJobsInput) -> ClientRuntime.PaginatorSequence<ListHarvestJobsInput, ListHarvestJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListHarvestJobsInput, ListHarvestJobsOutput>(input: input, inputKey: \ListHarvestJobsInput.nextToken, outputKey: \ListHarvestJobsOutput.nextToken, paginationFunction: self.listHarvestJobs(input:))
    }
}

extension ListHarvestJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListHarvestJobsInput {
        return ListHarvestJobsInput(
            includeChannelId: self.includeChannelId,
            includeStatus: self.includeStatus,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListHarvestJobsInput, Output == ListHarvestJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listHarvestJobsPaginated`
    /// to access the nested member `[MediaPackageClientTypes.HarvestJob]`
    /// - Returns: `[MediaPackageClientTypes.HarvestJob]`
    public func harvestJobs() async throws -> [MediaPackageClientTypes.HarvestJob] {
        return try await self.asyncCompactMap { item in item.harvestJobs }
    }
}
extension MediaPackageClient {
    /// Paginate over `[ListOriginEndpointsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOriginEndpointsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOriginEndpointsOutput`
    public func listOriginEndpointsPaginated(input: ListOriginEndpointsInput) -> ClientRuntime.PaginatorSequence<ListOriginEndpointsInput, ListOriginEndpointsOutput> {
        return ClientRuntime.PaginatorSequence<ListOriginEndpointsInput, ListOriginEndpointsOutput>(input: input, inputKey: \ListOriginEndpointsInput.nextToken, outputKey: \ListOriginEndpointsOutput.nextToken, paginationFunction: self.listOriginEndpoints(input:))
    }
}

extension ListOriginEndpointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOriginEndpointsInput {
        return ListOriginEndpointsInput(
            channelId: self.channelId,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListOriginEndpointsInput, Output == ListOriginEndpointsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listOriginEndpointsPaginated`
    /// to access the nested member `[MediaPackageClientTypes.OriginEndpoint]`
    /// - Returns: `[MediaPackageClientTypes.OriginEndpoint]`
    public func originEndpoints() async throws -> [MediaPackageClientTypes.OriginEndpoint] {
        return try await self.asyncCompactMap { item in item.originEndpoints }
    }
}
