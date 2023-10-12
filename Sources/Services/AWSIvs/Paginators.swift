// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IvsClient {
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
            filterByName: self.filterByName,
            filterByRecordingConfigurationArn: self.filterByRecordingConfigurationArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IvsClient {
    /// Paginate over `[ListPlaybackKeyPairsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPlaybackKeyPairsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPlaybackKeyPairsOutput`
    public func listPlaybackKeyPairsPaginated(input: ListPlaybackKeyPairsInput) -> ClientRuntime.PaginatorSequence<ListPlaybackKeyPairsInput, ListPlaybackKeyPairsOutput> {
        return ClientRuntime.PaginatorSequence<ListPlaybackKeyPairsInput, ListPlaybackKeyPairsOutput>(input: input, inputKey: \ListPlaybackKeyPairsInput.nextToken, outputKey: \ListPlaybackKeyPairsOutput.nextToken, paginationFunction: self.listPlaybackKeyPairs(input:))
    }
}

extension ListPlaybackKeyPairsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPlaybackKeyPairsInput {
        return ListPlaybackKeyPairsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IvsClient {
    /// Paginate over `[ListRecordingConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRecordingConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRecordingConfigurationsOutput`
    public func listRecordingConfigurationsPaginated(input: ListRecordingConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListRecordingConfigurationsInput, ListRecordingConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListRecordingConfigurationsInput, ListRecordingConfigurationsOutput>(input: input, inputKey: \ListRecordingConfigurationsInput.nextToken, outputKey: \ListRecordingConfigurationsOutput.nextToken, paginationFunction: self.listRecordingConfigurations(input:))
    }
}

extension ListRecordingConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRecordingConfigurationsInput {
        return ListRecordingConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IvsClient {
    /// Paginate over `[ListStreamKeysOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStreamKeysInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStreamKeysOutput`
    public func listStreamKeysPaginated(input: ListStreamKeysInput) -> ClientRuntime.PaginatorSequence<ListStreamKeysInput, ListStreamKeysOutput> {
        return ClientRuntime.PaginatorSequence<ListStreamKeysInput, ListStreamKeysOutput>(input: input, inputKey: \ListStreamKeysInput.nextToken, outputKey: \ListStreamKeysOutput.nextToken, paginationFunction: self.listStreamKeys(input:))
    }
}

extension ListStreamKeysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStreamKeysInput {
        return ListStreamKeysInput(
            channelArn: self.channelArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IvsClient {
    /// Paginate over `[ListStreamsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStreamsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStreamsOutput`
    public func listStreamsPaginated(input: ListStreamsInput) -> ClientRuntime.PaginatorSequence<ListStreamsInput, ListStreamsOutput> {
        return ClientRuntime.PaginatorSequence<ListStreamsInput, ListStreamsOutput>(input: input, inputKey: \ListStreamsInput.nextToken, outputKey: \ListStreamsOutput.nextToken, paginationFunction: self.listStreams(input:))
    }
}

extension ListStreamsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStreamsInput {
        return ListStreamsInput(
            filterBy: self.filterBy,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IvsClient {
    /// Paginate over `[ListStreamSessionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStreamSessionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStreamSessionsOutput`
    public func listStreamSessionsPaginated(input: ListStreamSessionsInput) -> ClientRuntime.PaginatorSequence<ListStreamSessionsInput, ListStreamSessionsOutput> {
        return ClientRuntime.PaginatorSequence<ListStreamSessionsInput, ListStreamSessionsOutput>(input: input, inputKey: \ListStreamSessionsInput.nextToken, outputKey: \ListStreamSessionsOutput.nextToken, paginationFunction: self.listStreamSessions(input:))
    }
}

extension ListStreamSessionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStreamSessionsInput {
        return ListStreamSessionsInput(
            channelArn: self.channelArn,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
