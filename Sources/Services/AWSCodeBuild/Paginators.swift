// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodeBuildClient {
    /// Paginate over `[DescribeCodeCoveragesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCodeCoveragesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCodeCoveragesOutput`
    public func describeCodeCoveragesPaginated(input: DescribeCodeCoveragesInput) -> ClientRuntime.PaginatorSequence<DescribeCodeCoveragesInput, DescribeCodeCoveragesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeCodeCoveragesInput, DescribeCodeCoveragesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeCodeCoverages(input:))
    }
}

extension DescribeCodeCoveragesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCodeCoveragesInput {
        return DescribeCodeCoveragesInput(
            maxLineCoveragePercentage: self.maxLineCoveragePercentage,
            maxResults: self.maxResults,
            minLineCoveragePercentage: self.minLineCoveragePercentage,
            nextToken: token,
            reportArn: self.reportArn,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeCodeCoveragesInput, OperationStackOutput == DescribeCodeCoveragesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeCodeCoveragesPaginated`
    /// to access the nested member `[CodeBuildClientTypes.CodeCoverage]`
    /// - Returns: `[CodeBuildClientTypes.CodeCoverage]`
    public func codeCoverages() async throws -> [CodeBuildClientTypes.CodeCoverage] {
        return try await self.asyncCompactMap { item in item.codeCoverages }
    }
}
extension CodeBuildClient {
    /// Paginate over `[DescribeTestCasesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTestCasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTestCasesOutput`
    public func describeTestCasesPaginated(input: DescribeTestCasesInput) -> ClientRuntime.PaginatorSequence<DescribeTestCasesInput, DescribeTestCasesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTestCasesInput, DescribeTestCasesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.describeTestCases(input:))
    }
}

extension DescribeTestCasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTestCasesInput {
        return DescribeTestCasesInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            reportArn: self.reportArn
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeTestCasesInput, OperationStackOutput == DescribeTestCasesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeTestCasesPaginated`
    /// to access the nested member `[CodeBuildClientTypes.TestCase]`
    /// - Returns: `[CodeBuildClientTypes.TestCase]`
    public func testCases() async throws -> [CodeBuildClientTypes.TestCase] {
        return try await self.asyncCompactMap { item in item.testCases }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListBuildBatchesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBuildBatchesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBuildBatchesOutput`
    public func listBuildBatchesPaginated(input: ListBuildBatchesInput) -> ClientRuntime.PaginatorSequence<ListBuildBatchesInput, ListBuildBatchesOutput> {
        return ClientRuntime.PaginatorSequence<ListBuildBatchesInput, ListBuildBatchesOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBuildBatches(input:))
    }
}

extension ListBuildBatchesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBuildBatchesInput {
        return ListBuildBatchesInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListBuildBatchesInput, OperationStackOutput == ListBuildBatchesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listBuildBatchesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func ids() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.ids }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListBuildBatchesForProjectOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBuildBatchesForProjectInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBuildBatchesForProjectOutput`
    public func listBuildBatchesForProjectPaginated(input: ListBuildBatchesForProjectInput) -> ClientRuntime.PaginatorSequence<ListBuildBatchesForProjectInput, ListBuildBatchesForProjectOutput> {
        return ClientRuntime.PaginatorSequence<ListBuildBatchesForProjectInput, ListBuildBatchesForProjectOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBuildBatchesForProject(input:))
    }
}

extension ListBuildBatchesForProjectInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBuildBatchesForProjectInput {
        return ListBuildBatchesForProjectInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            projectName: self.projectName,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListBuildBatchesForProjectInput, OperationStackOutput == ListBuildBatchesForProjectOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listBuildBatchesForProjectPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func ids() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.ids }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListBuildsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBuildsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBuildsOutput`
    public func listBuildsPaginated(input: ListBuildsInput) -> ClientRuntime.PaginatorSequence<ListBuildsInput, ListBuildsOutput> {
        return ClientRuntime.PaginatorSequence<ListBuildsInput, ListBuildsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBuilds(input:))
    }
}

extension ListBuildsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBuildsInput {
        return ListBuildsInput(
            nextToken: token,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListBuildsInput, OperationStackOutput == ListBuildsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listBuildsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func ids() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.ids }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListBuildsForProjectOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListBuildsForProjectInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListBuildsForProjectOutput`
    public func listBuildsForProjectPaginated(input: ListBuildsForProjectInput) -> ClientRuntime.PaginatorSequence<ListBuildsForProjectInput, ListBuildsForProjectOutput> {
        return ClientRuntime.PaginatorSequence<ListBuildsForProjectInput, ListBuildsForProjectOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listBuildsForProject(input:))
    }
}

extension ListBuildsForProjectInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListBuildsForProjectInput {
        return ListBuildsForProjectInput(
            nextToken: token,
            projectName: self.projectName,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListBuildsForProjectInput, OperationStackOutput == ListBuildsForProjectOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listBuildsForProjectPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func ids() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.ids }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListFleetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFleetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFleetsOutput`
    public func listFleetsPaginated(input: ListFleetsInput) -> ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutput> {
        return ClientRuntime.PaginatorSequence<ListFleetsInput, ListFleetsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listFleets(input:))
    }
}

extension ListFleetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFleetsInput {
        return ListFleetsInput(
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}
extension CodeBuildClient {
    /// Paginate over `[ListProjectsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutput`
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListProjectsInput, OperationStackOutput == ListProjectsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func projects() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.projects }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListReportGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReportGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReportGroupsOutput`
    public func listReportGroupsPaginated(input: ListReportGroupsInput) -> ClientRuntime.PaginatorSequence<ListReportGroupsInput, ListReportGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListReportGroupsInput, ListReportGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listReportGroups(input:))
    }
}

extension ListReportGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReportGroupsInput {
        return ListReportGroupsInput(
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListReportGroupsInput, OperationStackOutput == ListReportGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listReportGroupsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func reportGroups() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.reportGroups }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListReportsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReportsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReportsOutput`
    public func listReportsPaginated(input: ListReportsInput) -> ClientRuntime.PaginatorSequence<ListReportsInput, ListReportsOutput> {
        return ClientRuntime.PaginatorSequence<ListReportsInput, ListReportsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listReports(input:))
    }
}

extension ListReportsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReportsInput {
        return ListReportsInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListReportsInput, OperationStackOutput == ListReportsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listReportsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func reports() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.reports }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListReportsForReportGroupOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListReportsForReportGroupInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListReportsForReportGroupOutput`
    public func listReportsForReportGroupPaginated(input: ListReportsForReportGroupInput) -> ClientRuntime.PaginatorSequence<ListReportsForReportGroupInput, ListReportsForReportGroupOutput> {
        return ClientRuntime.PaginatorSequence<ListReportsForReportGroupInput, ListReportsForReportGroupOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listReportsForReportGroup(input:))
    }
}

extension ListReportsForReportGroupInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListReportsForReportGroupInput {
        return ListReportsForReportGroupInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            reportGroupArn: self.reportGroupArn,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListReportsForReportGroupInput, OperationStackOutput == ListReportsForReportGroupOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listReportsForReportGroupPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func reports() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.reports }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListSharedProjectsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSharedProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSharedProjectsOutput`
    public func listSharedProjectsPaginated(input: ListSharedProjectsInput) -> ClientRuntime.PaginatorSequence<ListSharedProjectsInput, ListSharedProjectsOutput> {
        return ClientRuntime.PaginatorSequence<ListSharedProjectsInput, ListSharedProjectsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSharedProjects(input:))
    }
}

extension ListSharedProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSharedProjectsInput {
        return ListSharedProjectsInput(
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListSharedProjectsInput, OperationStackOutput == ListSharedProjectsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSharedProjectsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func projects() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.projects }
    }
}
extension CodeBuildClient {
    /// Paginate over `[ListSharedReportGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSharedReportGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSharedReportGroupsOutput`
    public func listSharedReportGroupsPaginated(input: ListSharedReportGroupsInput) -> ClientRuntime.PaginatorSequence<ListSharedReportGroupsInput, ListSharedReportGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListSharedReportGroupsInput, ListSharedReportGroupsOutput>(input: input, inputKey: \.nextToken, outputKey: \.nextToken, paginationFunction: self.listSharedReportGroups(input:))
    }
}

extension ListSharedReportGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSharedReportGroupsInput {
        return ListSharedReportGroupsInput(
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where OperationStackInput == ListSharedReportGroupsInput, OperationStackOutput == ListSharedReportGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSharedReportGroupsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func reportGroups() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.reportGroups }
    }
}
