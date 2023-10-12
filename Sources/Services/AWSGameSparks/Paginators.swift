// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension GameSparksClient {
    /// Paginate over `[ListExtensionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListExtensionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListExtensionsOutput`
    public func listExtensionsPaginated(input: ListExtensionsInput) -> ClientRuntime.PaginatorSequence<ListExtensionsInput, ListExtensionsOutput> {
        return ClientRuntime.PaginatorSequence<ListExtensionsInput, ListExtensionsOutput>(input: input, inputKey: \ListExtensionsInput.nextToken, outputKey: \ListExtensionsOutput.nextToken, paginationFunction: self.listExtensions(input:))
    }
}

extension ListExtensionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExtensionsInput {
        return ListExtensionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListExtensionsInput, Output == ListExtensionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listExtensionsPaginated`
    /// to access the nested member `[GameSparksClientTypes.ExtensionDetails]`
    /// - Returns: `[GameSparksClientTypes.ExtensionDetails]`
    public func extensions() async throws -> [GameSparksClientTypes.ExtensionDetails] {
        return try await self.asyncCompactMap { item in item.extensions }
    }
}
extension GameSparksClient {
    /// Paginate over `[ListExtensionVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListExtensionVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListExtensionVersionsOutput`
    public func listExtensionVersionsPaginated(input: ListExtensionVersionsInput) -> ClientRuntime.PaginatorSequence<ListExtensionVersionsInput, ListExtensionVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListExtensionVersionsInput, ListExtensionVersionsOutput>(input: input, inputKey: \ListExtensionVersionsInput.nextToken, outputKey: \ListExtensionVersionsOutput.nextToken, paginationFunction: self.listExtensionVersions(input:))
    }
}

extension ListExtensionVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExtensionVersionsInput {
        return ListExtensionVersionsInput(
            maxResults: self.maxResults,
            name: self.name,
            namespace: self.namespace,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListExtensionVersionsInput, Output == ListExtensionVersionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listExtensionVersionsPaginated`
    /// to access the nested member `[GameSparksClientTypes.ExtensionVersionDetails]`
    /// - Returns: `[GameSparksClientTypes.ExtensionVersionDetails]`
    public func extensionVersions() async throws -> [GameSparksClientTypes.ExtensionVersionDetails] {
        return try await self.asyncCompactMap { item in item.extensionVersions }
    }
}
extension GameSparksClient {
    /// Paginate over `[ListGamesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGamesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGamesOutput`
    public func listGamesPaginated(input: ListGamesInput) -> ClientRuntime.PaginatorSequence<ListGamesInput, ListGamesOutput> {
        return ClientRuntime.PaginatorSequence<ListGamesInput, ListGamesOutput>(input: input, inputKey: \ListGamesInput.nextToken, outputKey: \ListGamesOutput.nextToken, paginationFunction: self.listGames(input:))
    }
}

extension ListGamesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGamesInput {
        return ListGamesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListGamesInput, Output == ListGamesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listGamesPaginated`
    /// to access the nested member `[GameSparksClientTypes.GameSummary]`
    /// - Returns: `[GameSparksClientTypes.GameSummary]`
    public func games() async throws -> [GameSparksClientTypes.GameSummary] {
        return try await self.asyncCompactMap { item in item.games }
    }
}
extension GameSparksClient {
    /// Paginate over `[ListGeneratedCodeJobsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGeneratedCodeJobsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGeneratedCodeJobsOutput`
    public func listGeneratedCodeJobsPaginated(input: ListGeneratedCodeJobsInput) -> ClientRuntime.PaginatorSequence<ListGeneratedCodeJobsInput, ListGeneratedCodeJobsOutput> {
        return ClientRuntime.PaginatorSequence<ListGeneratedCodeJobsInput, ListGeneratedCodeJobsOutput>(input: input, inputKey: \ListGeneratedCodeJobsInput.nextToken, outputKey: \ListGeneratedCodeJobsOutput.nextToken, paginationFunction: self.listGeneratedCodeJobs(input:))
    }
}

extension ListGeneratedCodeJobsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGeneratedCodeJobsInput {
        return ListGeneratedCodeJobsInput(
            gameName: self.gameName,
            maxResults: self.maxResults,
            nextToken: token,
            snapshotId: self.snapshotId
        )}
}

extension PaginatorSequence where Input == ListGeneratedCodeJobsInput, Output == ListGeneratedCodeJobsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listGeneratedCodeJobsPaginated`
    /// to access the nested member `[GameSparksClientTypes.GeneratedCodeJobDetails]`
    /// - Returns: `[GameSparksClientTypes.GeneratedCodeJobDetails]`
    public func generatedCodeJobs() async throws -> [GameSparksClientTypes.GeneratedCodeJobDetails] {
        return try await self.asyncCompactMap { item in item.generatedCodeJobs }
    }
}
extension GameSparksClient {
    /// Paginate over `[ListSnapshotsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSnapshotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSnapshotsOutput`
    public func listSnapshotsPaginated(input: ListSnapshotsInput) -> ClientRuntime.PaginatorSequence<ListSnapshotsInput, ListSnapshotsOutput> {
        return ClientRuntime.PaginatorSequence<ListSnapshotsInput, ListSnapshotsOutput>(input: input, inputKey: \ListSnapshotsInput.nextToken, outputKey: \ListSnapshotsOutput.nextToken, paginationFunction: self.listSnapshots(input:))
    }
}

extension ListSnapshotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSnapshotsInput {
        return ListSnapshotsInput(
            gameName: self.gameName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListSnapshotsInput, Output == ListSnapshotsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSnapshotsPaginated`
    /// to access the nested member `[GameSparksClientTypes.SnapshotSummary]`
    /// - Returns: `[GameSparksClientTypes.SnapshotSummary]`
    public func snapshots() async throws -> [GameSparksClientTypes.SnapshotSummary] {
        return try await self.asyncCompactMap { item in item.snapshots }
    }
}
extension GameSparksClient {
    /// Paginate over `[ListStageDeploymentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStageDeploymentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStageDeploymentsOutput`
    public func listStageDeploymentsPaginated(input: ListStageDeploymentsInput) -> ClientRuntime.PaginatorSequence<ListStageDeploymentsInput, ListStageDeploymentsOutput> {
        return ClientRuntime.PaginatorSequence<ListStageDeploymentsInput, ListStageDeploymentsOutput>(input: input, inputKey: \ListStageDeploymentsInput.nextToken, outputKey: \ListStageDeploymentsOutput.nextToken, paginationFunction: self.listStageDeployments(input:))
    }
}

extension ListStageDeploymentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStageDeploymentsInput {
        return ListStageDeploymentsInput(
            gameName: self.gameName,
            maxResults: self.maxResults,
            nextToken: token,
            stageName: self.stageName
        )}
}

extension PaginatorSequence where Input == ListStageDeploymentsInput, Output == ListStageDeploymentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStageDeploymentsPaginated`
    /// to access the nested member `[GameSparksClientTypes.StageDeploymentSummary]`
    /// - Returns: `[GameSparksClientTypes.StageDeploymentSummary]`
    public func stageDeployments() async throws -> [GameSparksClientTypes.StageDeploymentSummary] {
        return try await self.asyncCompactMap { item in item.stageDeployments }
    }
}
extension GameSparksClient {
    /// Paginate over `[ListStagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStagesOutput`
    public func listStagesPaginated(input: ListStagesInput) -> ClientRuntime.PaginatorSequence<ListStagesInput, ListStagesOutput> {
        return ClientRuntime.PaginatorSequence<ListStagesInput, ListStagesOutput>(input: input, inputKey: \ListStagesInput.nextToken, outputKey: \ListStagesOutput.nextToken, paginationFunction: self.listStages(input:))
    }
}

extension ListStagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStagesInput {
        return ListStagesInput(
            gameName: self.gameName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListStagesInput, Output == ListStagesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStagesPaginated`
    /// to access the nested member `[GameSparksClientTypes.StageSummary]`
    /// - Returns: `[GameSparksClientTypes.StageSummary]`
    public func stages() async throws -> [GameSparksClientTypes.StageSummary] {
        return try await self.asyncCompactMap { item in item.stages }
    }
}
