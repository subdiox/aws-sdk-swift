// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension ECRClient {
    /// Paginate over `[DescribeImagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeImagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeImagesOutput`
    public func describeImagesPaginated(input: DescribeImagesInput) -> ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeImagesInput, DescribeImagesOutput>(input: input, inputKey: \DescribeImagesInput.nextToken, outputKey: \DescribeImagesOutput.nextToken, paginationFunction: self.describeImages(input:))
    }
}

extension DescribeImagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImagesInput {
        return DescribeImagesInput(
            filter: self.filter,
            imageIds: self.imageIds,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

extension PaginatorSequence where Input == DescribeImagesInput, Output == DescribeImagesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeImagesPaginated`
    /// to access the nested member `[ECRClientTypes.ImageDetail]`
    /// - Returns: `[ECRClientTypes.ImageDetail]`
    public func imageDetails() async throws -> [ECRClientTypes.ImageDetail] {
        return try await self.asyncCompactMap { item in item.imageDetails }
    }
}
extension ECRClient {
    /// Paginate over `[DescribeImageScanFindingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeImageScanFindingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeImageScanFindingsOutput`
    public func describeImageScanFindingsPaginated(input: DescribeImageScanFindingsInput) -> ClientRuntime.PaginatorSequence<DescribeImageScanFindingsInput, DescribeImageScanFindingsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeImageScanFindingsInput, DescribeImageScanFindingsOutput>(input: input, inputKey: \DescribeImageScanFindingsInput.nextToken, outputKey: \DescribeImageScanFindingsOutput.nextToken, paginationFunction: self.describeImageScanFindings(input:))
    }
}

extension DescribeImageScanFindingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeImageScanFindingsInput {
        return DescribeImageScanFindingsInput(
            imageId: self.imageId,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}
extension ECRClient {
    /// Paginate over `[DescribePullThroughCacheRulesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribePullThroughCacheRulesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribePullThroughCacheRulesOutput`
    public func describePullThroughCacheRulesPaginated(input: DescribePullThroughCacheRulesInput) -> ClientRuntime.PaginatorSequence<DescribePullThroughCacheRulesInput, DescribePullThroughCacheRulesOutput> {
        return ClientRuntime.PaginatorSequence<DescribePullThroughCacheRulesInput, DescribePullThroughCacheRulesOutput>(input: input, inputKey: \DescribePullThroughCacheRulesInput.nextToken, outputKey: \DescribePullThroughCacheRulesOutput.nextToken, paginationFunction: self.describePullThroughCacheRules(input:))
    }
}

extension DescribePullThroughCacheRulesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePullThroughCacheRulesInput {
        return DescribePullThroughCacheRulesInput(
            ecrRepositoryPrefixes: self.ecrRepositoryPrefixes,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId
        )}
}

extension PaginatorSequence where Input == DescribePullThroughCacheRulesInput, Output == DescribePullThroughCacheRulesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describePullThroughCacheRulesPaginated`
    /// to access the nested member `[ECRClientTypes.PullThroughCacheRule]`
    /// - Returns: `[ECRClientTypes.PullThroughCacheRule]`
    public func pullThroughCacheRules() async throws -> [ECRClientTypes.PullThroughCacheRule] {
        return try await self.asyncCompactMap { item in item.pullThroughCacheRules }
    }
}
extension ECRClient {
    /// Paginate over `[DescribeRepositoriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeRepositoriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeRepositoriesOutput`
    public func describeRepositoriesPaginated(input: DescribeRepositoriesInput) -> ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeRepositoriesInput, DescribeRepositoriesOutput>(input: input, inputKey: \DescribeRepositoriesInput.nextToken, outputKey: \DescribeRepositoriesOutput.nextToken, paginationFunction: self.describeRepositories(input:))
    }
}

extension DescribeRepositoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRepositoriesInput {
        return DescribeRepositoriesInput(
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryNames: self.repositoryNames
        )}
}

extension PaginatorSequence where Input == DescribeRepositoriesInput, Output == DescribeRepositoriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeRepositoriesPaginated`
    /// to access the nested member `[ECRClientTypes.Repository]`
    /// - Returns: `[ECRClientTypes.Repository]`
    public func repositories() async throws -> [ECRClientTypes.Repository] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}
extension ECRClient {
    /// Paginate over `[GetLifecyclePolicyPreviewOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetLifecyclePolicyPreviewInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetLifecyclePolicyPreviewOutput`
    public func getLifecyclePolicyPreviewPaginated(input: GetLifecyclePolicyPreviewInput) -> ClientRuntime.PaginatorSequence<GetLifecyclePolicyPreviewInput, GetLifecyclePolicyPreviewOutput> {
        return ClientRuntime.PaginatorSequence<GetLifecyclePolicyPreviewInput, GetLifecyclePolicyPreviewOutput>(input: input, inputKey: \GetLifecyclePolicyPreviewInput.nextToken, outputKey: \GetLifecyclePolicyPreviewOutput.nextToken, paginationFunction: self.getLifecyclePolicyPreview(input:))
    }
}

extension GetLifecyclePolicyPreviewInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetLifecyclePolicyPreviewInput {
        return GetLifecyclePolicyPreviewInput(
            filter: self.filter,
            imageIds: self.imageIds,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

extension PaginatorSequence where Input == GetLifecyclePolicyPreviewInput, Output == GetLifecyclePolicyPreviewOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getLifecyclePolicyPreviewPaginated`
    /// to access the nested member `[ECRClientTypes.LifecyclePolicyPreviewResult]`
    /// - Returns: `[ECRClientTypes.LifecyclePolicyPreviewResult]`
    public func previewResults() async throws -> [ECRClientTypes.LifecyclePolicyPreviewResult] {
        return try await self.asyncCompactMap { item in item.previewResults }
    }
}
extension ECRClient {
    /// Paginate over `[ListImagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListImagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListImagesOutput`
    public func listImagesPaginated(input: ListImagesInput) -> ClientRuntime.PaginatorSequence<ListImagesInput, ListImagesOutput> {
        return ClientRuntime.PaginatorSequence<ListImagesInput, ListImagesOutput>(input: input, inputKey: \ListImagesInput.nextToken, outputKey: \ListImagesOutput.nextToken, paginationFunction: self.listImages(input:))
    }
}

extension ListImagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListImagesInput {
        return ListImagesInput(
            filter: self.filter,
            maxResults: self.maxResults,
            nextToken: token,
            registryId: self.registryId,
            repositoryName: self.repositoryName
        )}
}

extension PaginatorSequence where Input == ListImagesInput, Output == ListImagesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listImagesPaginated`
    /// to access the nested member `[ECRClientTypes.ImageIdentifier]`
    /// - Returns: `[ECRClientTypes.ImageIdentifier]`
    public func imageIds() async throws -> [ECRClientTypes.ImageIdentifier] {
        return try await self.asyncCompactMap { item in item.imageIds }
    }
}
