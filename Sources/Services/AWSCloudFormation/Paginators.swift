// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CloudFormationClient {
    /// Paginate over `[DescribeAccountLimitsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeAccountLimitsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeAccountLimitsOutput`
    public func describeAccountLimitsPaginated(input: DescribeAccountLimitsInput) -> ClientRuntime.PaginatorSequence<DescribeAccountLimitsInput, DescribeAccountLimitsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeAccountLimitsInput, DescribeAccountLimitsOutput>(input: input, inputKey: \DescribeAccountLimitsInput.nextToken, outputKey: \DescribeAccountLimitsOutput.nextToken, paginationFunction: self.describeAccountLimits(input:))
    }
}

extension DescribeAccountLimitsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeAccountLimitsInput {
        return DescribeAccountLimitsInput(
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeAccountLimitsInput, Output == DescribeAccountLimitsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeAccountLimitsPaginated`
    /// to access the nested member `[CloudFormationClientTypes.AccountLimit]`
    /// - Returns: `[CloudFormationClientTypes.AccountLimit]`
    public func accountLimits() async throws -> [CloudFormationClientTypes.AccountLimit] {
        return try await self.asyncCompactMap { item in item.accountLimits }
    }
}
extension CloudFormationClient {
    /// Paginate over `[DescribeStackEventsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeStackEventsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeStackEventsOutput`
    public func describeStackEventsPaginated(input: DescribeStackEventsInput) -> ClientRuntime.PaginatorSequence<DescribeStackEventsInput, DescribeStackEventsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeStackEventsInput, DescribeStackEventsOutput>(input: input, inputKey: \DescribeStackEventsInput.nextToken, outputKey: \DescribeStackEventsOutput.nextToken, paginationFunction: self.describeStackEvents(input:))
    }
}

extension DescribeStackEventsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStackEventsInput {
        return DescribeStackEventsInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

extension PaginatorSequence where Input == DescribeStackEventsInput, Output == DescribeStackEventsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeStackEventsPaginated`
    /// to access the nested member `[CloudFormationClientTypes.StackEvent]`
    /// - Returns: `[CloudFormationClientTypes.StackEvent]`
    public func stackEvents() async throws -> [CloudFormationClientTypes.StackEvent] {
        return try await self.asyncCompactMap { item in item.stackEvents }
    }
}
extension CloudFormationClient {
    /// Paginate over `[DescribeStackResourceDriftsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeStackResourceDriftsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeStackResourceDriftsOutput`
    public func describeStackResourceDriftsPaginated(input: DescribeStackResourceDriftsInput) -> ClientRuntime.PaginatorSequence<DescribeStackResourceDriftsInput, DescribeStackResourceDriftsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeStackResourceDriftsInput, DescribeStackResourceDriftsOutput>(input: input, inputKey: \DescribeStackResourceDriftsInput.nextToken, outputKey: \DescribeStackResourceDriftsOutput.nextToken, paginationFunction: self.describeStackResourceDrifts(input:))
    }
}

extension DescribeStackResourceDriftsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStackResourceDriftsInput {
        return DescribeStackResourceDriftsInput(
            maxResults: self.maxResults,
            nextToken: token,
            stackName: self.stackName,
            stackResourceDriftStatusFilters: self.stackResourceDriftStatusFilters
        )}
}
extension CloudFormationClient {
    /// Paginate over `[DescribeStacksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeStacksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeStacksOutput`
    public func describeStacksPaginated(input: DescribeStacksInput) -> ClientRuntime.PaginatorSequence<DescribeStacksInput, DescribeStacksOutput> {
        return ClientRuntime.PaginatorSequence<DescribeStacksInput, DescribeStacksOutput>(input: input, inputKey: \DescribeStacksInput.nextToken, outputKey: \DescribeStacksOutput.nextToken, paginationFunction: self.describeStacks(input:))
    }
}

extension DescribeStacksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeStacksInput {
        return DescribeStacksInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

extension PaginatorSequence where Input == DescribeStacksInput, Output == DescribeStacksOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeStacksPaginated`
    /// to access the nested member `[CloudFormationClientTypes.Stack]`
    /// - Returns: `[CloudFormationClientTypes.Stack]`
    public func stacks() async throws -> [CloudFormationClientTypes.Stack] {
        return try await self.asyncCompactMap { item in item.stacks }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListChangeSetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListChangeSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListChangeSetsOutput`
    public func listChangeSetsPaginated(input: ListChangeSetsInput) -> ClientRuntime.PaginatorSequence<ListChangeSetsInput, ListChangeSetsOutput> {
        return ClientRuntime.PaginatorSequence<ListChangeSetsInput, ListChangeSetsOutput>(input: input, inputKey: \ListChangeSetsInput.nextToken, outputKey: \ListChangeSetsOutput.nextToken, paginationFunction: self.listChangeSets(input:))
    }
}

extension ListChangeSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListChangeSetsInput {
        return ListChangeSetsInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

extension PaginatorSequence where Input == ListChangeSetsInput, Output == ListChangeSetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listChangeSetsPaginated`
    /// to access the nested member `[CloudFormationClientTypes.ChangeSetSummary]`
    /// - Returns: `[CloudFormationClientTypes.ChangeSetSummary]`
    public func summaries() async throws -> [CloudFormationClientTypes.ChangeSetSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListExportsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListExportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListExportsOutput`
    public func listExportsPaginated(input: ListExportsInput) -> ClientRuntime.PaginatorSequence<ListExportsInput, ListExportsOutput> {
        return ClientRuntime.PaginatorSequence<ListExportsInput, ListExportsOutput>(input: input, inputKey: \ListExportsInput.nextToken, outputKey: \ListExportsOutput.nextToken, paginationFunction: self.listExports(input:))
    }
}

extension ListExportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListExportsInput {
        return ListExportsInput(
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListExportsInput, Output == ListExportsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listExportsPaginated`
    /// to access the nested member `[CloudFormationClientTypes.Export]`
    /// - Returns: `[CloudFormationClientTypes.Export]`
    public func exports() async throws -> [CloudFormationClientTypes.Export] {
        return try await self.asyncCompactMap { item in item.exports }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListImportsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListImportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListImportsOutput`
    public func listImportsPaginated(input: ListImportsInput) -> ClientRuntime.PaginatorSequence<ListImportsInput, ListImportsOutput> {
        return ClientRuntime.PaginatorSequence<ListImportsInput, ListImportsOutput>(input: input, inputKey: \ListImportsInput.nextToken, outputKey: \ListImportsOutput.nextToken, paginationFunction: self.listImports(input:))
    }
}

extension ListImportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImportsInput {
        return ListImportsInput(
            exportName: self.exportName,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListImportsInput, Output == ListImportsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listImportsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func imports() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.imports }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListStackInstancesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStackInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStackInstancesOutput`
    public func listStackInstancesPaginated(input: ListStackInstancesInput) -> ClientRuntime.PaginatorSequence<ListStackInstancesInput, ListStackInstancesOutput> {
        return ClientRuntime.PaginatorSequence<ListStackInstancesInput, ListStackInstancesOutput>(input: input, inputKey: \ListStackInstancesInput.nextToken, outputKey: \ListStackInstancesOutput.nextToken, paginationFunction: self.listStackInstances(input:))
    }
}

extension ListStackInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackInstancesInput {
        return ListStackInstancesInput(
            callAs: self.callAs,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            stackInstanceAccount: self.stackInstanceAccount,
            stackInstanceRegion: self.stackInstanceRegion,
            stackSetName: self.stackSetName
        )}
}

extension PaginatorSequence where Input == ListStackInstancesInput, Output == ListStackInstancesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStackInstancesPaginated`
    /// to access the nested member `[CloudFormationClientTypes.StackInstanceSummary]`
    /// - Returns: `[CloudFormationClientTypes.StackInstanceSummary]`
    public func summaries() async throws -> [CloudFormationClientTypes.StackInstanceSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListStackResourcesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStackResourcesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStackResourcesOutput`
    public func listStackResourcesPaginated(input: ListStackResourcesInput) -> ClientRuntime.PaginatorSequence<ListStackResourcesInput, ListStackResourcesOutput> {
        return ClientRuntime.PaginatorSequence<ListStackResourcesInput, ListStackResourcesOutput>(input: input, inputKey: \ListStackResourcesInput.nextToken, outputKey: \ListStackResourcesOutput.nextToken, paginationFunction: self.listStackResources(input:))
    }
}

extension ListStackResourcesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackResourcesInput {
        return ListStackResourcesInput(
            nextToken: token,
            stackName: self.stackName
        )}
}

extension PaginatorSequence where Input == ListStackResourcesInput, Output == ListStackResourcesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStackResourcesPaginated`
    /// to access the nested member `[CloudFormationClientTypes.StackResourceSummary]`
    /// - Returns: `[CloudFormationClientTypes.StackResourceSummary]`
    public func stackResourceSummaries() async throws -> [CloudFormationClientTypes.StackResourceSummary] {
        return try await self.asyncCompactMap { item in item.stackResourceSummaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListStacksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStacksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStacksOutput`
    public func listStacksPaginated(input: ListStacksInput) -> ClientRuntime.PaginatorSequence<ListStacksInput, ListStacksOutput> {
        return ClientRuntime.PaginatorSequence<ListStacksInput, ListStacksOutput>(input: input, inputKey: \ListStacksInput.nextToken, outputKey: \ListStacksOutput.nextToken, paginationFunction: self.listStacks(input:))
    }
}

extension ListStacksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStacksInput {
        return ListStacksInput(
            nextToken: token,
            stackStatusFilter: self.stackStatusFilter
        )}
}

extension PaginatorSequence where Input == ListStacksInput, Output == ListStacksOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStacksPaginated`
    /// to access the nested member `[CloudFormationClientTypes.StackSummary]`
    /// - Returns: `[CloudFormationClientTypes.StackSummary]`
    public func stackSummaries() async throws -> [CloudFormationClientTypes.StackSummary] {
        return try await self.asyncCompactMap { item in item.stackSummaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListStackSetOperationResultsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStackSetOperationResultsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStackSetOperationResultsOutput`
    public func listStackSetOperationResultsPaginated(input: ListStackSetOperationResultsInput) -> ClientRuntime.PaginatorSequence<ListStackSetOperationResultsInput, ListStackSetOperationResultsOutput> {
        return ClientRuntime.PaginatorSequence<ListStackSetOperationResultsInput, ListStackSetOperationResultsOutput>(input: input, inputKey: \ListStackSetOperationResultsInput.nextToken, outputKey: \ListStackSetOperationResultsOutput.nextToken, paginationFunction: self.listStackSetOperationResults(input:))
    }
}

extension ListStackSetOperationResultsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackSetOperationResultsInput {
        return ListStackSetOperationResultsInput(
            callAs: self.callAs,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            operationId: self.operationId,
            stackSetName: self.stackSetName
        )}
}

extension PaginatorSequence where Input == ListStackSetOperationResultsInput, Output == ListStackSetOperationResultsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStackSetOperationResultsPaginated`
    /// to access the nested member `[CloudFormationClientTypes.StackSetOperationResultSummary]`
    /// - Returns: `[CloudFormationClientTypes.StackSetOperationResultSummary]`
    public func summaries() async throws -> [CloudFormationClientTypes.StackSetOperationResultSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListStackSetOperationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStackSetOperationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStackSetOperationsOutput`
    public func listStackSetOperationsPaginated(input: ListStackSetOperationsInput) -> ClientRuntime.PaginatorSequence<ListStackSetOperationsInput, ListStackSetOperationsOutput> {
        return ClientRuntime.PaginatorSequence<ListStackSetOperationsInput, ListStackSetOperationsOutput>(input: input, inputKey: \ListStackSetOperationsInput.nextToken, outputKey: \ListStackSetOperationsOutput.nextToken, paginationFunction: self.listStackSetOperations(input:))
    }
}

extension ListStackSetOperationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackSetOperationsInput {
        return ListStackSetOperationsInput(
            callAs: self.callAs,
            maxResults: self.maxResults,
            nextToken: token,
            stackSetName: self.stackSetName
        )}
}

extension PaginatorSequence where Input == ListStackSetOperationsInput, Output == ListStackSetOperationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStackSetOperationsPaginated`
    /// to access the nested member `[CloudFormationClientTypes.StackSetOperationSummary]`
    /// - Returns: `[CloudFormationClientTypes.StackSetOperationSummary]`
    public func summaries() async throws -> [CloudFormationClientTypes.StackSetOperationSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListStackSetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListStackSetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListStackSetsOutput`
    public func listStackSetsPaginated(input: ListStackSetsInput) -> ClientRuntime.PaginatorSequence<ListStackSetsInput, ListStackSetsOutput> {
        return ClientRuntime.PaginatorSequence<ListStackSetsInput, ListStackSetsOutput>(input: input, inputKey: \ListStackSetsInput.nextToken, outputKey: \ListStackSetsOutput.nextToken, paginationFunction: self.listStackSets(input:))
    }
}

extension ListStackSetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListStackSetsInput {
        return ListStackSetsInput(
            callAs: self.callAs,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )}
}

extension PaginatorSequence where Input == ListStackSetsInput, Output == ListStackSetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listStackSetsPaginated`
    /// to access the nested member `[CloudFormationClientTypes.StackSetSummary]`
    /// - Returns: `[CloudFormationClientTypes.StackSetSummary]`
    public func summaries() async throws -> [CloudFormationClientTypes.StackSetSummary] {
        return try await self.asyncCompactMap { item in item.summaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListTypeRegistrationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTypeRegistrationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTypeRegistrationsOutput`
    public func listTypeRegistrationsPaginated(input: ListTypeRegistrationsInput) -> ClientRuntime.PaginatorSequence<ListTypeRegistrationsInput, ListTypeRegistrationsOutput> {
        return ClientRuntime.PaginatorSequence<ListTypeRegistrationsInput, ListTypeRegistrationsOutput>(input: input, inputKey: \ListTypeRegistrationsInput.nextToken, outputKey: \ListTypeRegistrationsOutput.nextToken, paginationFunction: self.listTypeRegistrations(input:))
    }
}

extension ListTypeRegistrationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypeRegistrationsInput {
        return ListTypeRegistrationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            registrationStatusFilter: self.registrationStatusFilter,
            type: self.type,
            typeArn: self.typeArn,
            typeName: self.typeName
        )}
}
extension CloudFormationClient {
    /// Paginate over `[ListTypesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTypesOutput`
    public func listTypesPaginated(input: ListTypesInput) -> ClientRuntime.PaginatorSequence<ListTypesInput, ListTypesOutput> {
        return ClientRuntime.PaginatorSequence<ListTypesInput, ListTypesOutput>(input: input, inputKey: \ListTypesInput.nextToken, outputKey: \ListTypesOutput.nextToken, paginationFunction: self.listTypes(input:))
    }
}

extension ListTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypesInput {
        return ListTypesInput(
            deprecatedStatus: self.deprecatedStatus,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            provisioningType: self.provisioningType,
            type: self.type,
            visibility: self.visibility
        )}
}

extension PaginatorSequence where Input == ListTypesInput, Output == ListTypesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTypesPaginated`
    /// to access the nested member `[CloudFormationClientTypes.TypeSummary]`
    /// - Returns: `[CloudFormationClientTypes.TypeSummary]`
    public func typeSummaries() async throws -> [CloudFormationClientTypes.TypeSummary] {
        return try await self.asyncCompactMap { item in item.typeSummaries }
    }
}
extension CloudFormationClient {
    /// Paginate over `[ListTypeVersionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTypeVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTypeVersionsOutput`
    public func listTypeVersionsPaginated(input: ListTypeVersionsInput) -> ClientRuntime.PaginatorSequence<ListTypeVersionsInput, ListTypeVersionsOutput> {
        return ClientRuntime.PaginatorSequence<ListTypeVersionsInput, ListTypeVersionsOutput>(input: input, inputKey: \ListTypeVersionsInput.nextToken, outputKey: \ListTypeVersionsOutput.nextToken, paginationFunction: self.listTypeVersions(input:))
    }
}

extension ListTypeVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTypeVersionsInput {
        return ListTypeVersionsInput(
            arn: self.arn,
            deprecatedStatus: self.deprecatedStatus,
            maxResults: self.maxResults,
            nextToken: token,
            publisherId: self.publisherId,
            type: self.type,
            typeName: self.typeName
        )}
}
