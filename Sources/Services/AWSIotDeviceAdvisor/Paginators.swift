// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IotDeviceAdvisorClient {
    /// Paginate over `[ListSuiteDefinitionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSuiteDefinitionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSuiteDefinitionsOutput`
    public func listSuiteDefinitionsPaginated(input: ListSuiteDefinitionsInput) -> ClientRuntime.PaginatorSequence<ListSuiteDefinitionsInput, ListSuiteDefinitionsOutput> {
        return ClientRuntime.PaginatorSequence<ListSuiteDefinitionsInput, ListSuiteDefinitionsOutput>(input: input, inputKey: \ListSuiteDefinitionsInput.nextToken, outputKey: \ListSuiteDefinitionsOutput.nextToken, paginationFunction: self.listSuiteDefinitions(input:))
    }
}

extension ListSuiteDefinitionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSuiteDefinitionsInput {
        return ListSuiteDefinitionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IotDeviceAdvisorClient {
    /// Paginate over `[ListSuiteRunsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSuiteRunsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSuiteRunsOutput`
    public func listSuiteRunsPaginated(input: ListSuiteRunsInput) -> ClientRuntime.PaginatorSequence<ListSuiteRunsInput, ListSuiteRunsOutput> {
        return ClientRuntime.PaginatorSequence<ListSuiteRunsInput, ListSuiteRunsOutput>(input: input, inputKey: \ListSuiteRunsInput.nextToken, outputKey: \ListSuiteRunsOutput.nextToken, paginationFunction: self.listSuiteRuns(input:))
    }
}

extension ListSuiteRunsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSuiteRunsInput {
        return ListSuiteRunsInput(
            maxResults: self.maxResults,
            nextToken: token,
            suiteDefinitionId: self.suiteDefinitionId,
            suiteDefinitionVersion: self.suiteDefinitionVersion
        )}
}
