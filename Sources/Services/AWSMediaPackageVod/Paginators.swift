// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension MediaPackageVodClient {
    /// Paginate over `[ListAssetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAssetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAssetsOutput`
    public func listAssetsPaginated(input: ListAssetsInput) -> ClientRuntime.PaginatorSequence<ListAssetsInput, ListAssetsOutput> {
        return ClientRuntime.PaginatorSequence<ListAssetsInput, ListAssetsOutput>(input: input, inputKey: \ListAssetsInput.nextToken, outputKey: \ListAssetsOutput.nextToken, paginationFunction: self.listAssets(input:))
    }
}

extension ListAssetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAssetsInput {
        return ListAssetsInput(
            maxResults: self.maxResults,
            nextToken: token,
            packagingGroupId: self.packagingGroupId
        )}
}

extension PaginatorSequence where Input == ListAssetsInput, Output == ListAssetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAssetsPaginated`
    /// to access the nested member `[MediaPackageVodClientTypes.AssetShallow]`
    /// - Returns: `[MediaPackageVodClientTypes.AssetShallow]`
    public func assets() async throws -> [MediaPackageVodClientTypes.AssetShallow] {
        return try await self.asyncCompactMap { item in item.assets }
    }
}
extension MediaPackageVodClient {
    /// Paginate over `[ListPackagingConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackagingConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackagingConfigurationsOutput`
    public func listPackagingConfigurationsPaginated(input: ListPackagingConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListPackagingConfigurationsInput, ListPackagingConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListPackagingConfigurationsInput, ListPackagingConfigurationsOutput>(input: input, inputKey: \ListPackagingConfigurationsInput.nextToken, outputKey: \ListPackagingConfigurationsOutput.nextToken, paginationFunction: self.listPackagingConfigurations(input:))
    }
}

extension ListPackagingConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackagingConfigurationsInput {
        return ListPackagingConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            packagingGroupId: self.packagingGroupId
        )}
}

extension PaginatorSequence where Input == ListPackagingConfigurationsInput, Output == ListPackagingConfigurationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPackagingConfigurationsPaginated`
    /// to access the nested member `[MediaPackageVodClientTypes.PackagingConfiguration]`
    /// - Returns: `[MediaPackageVodClientTypes.PackagingConfiguration]`
    public func packagingConfigurations() async throws -> [MediaPackageVodClientTypes.PackagingConfiguration] {
        return try await self.asyncCompactMap { item in item.packagingConfigurations }
    }
}
extension MediaPackageVodClient {
    /// Paginate over `[ListPackagingGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackagingGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackagingGroupsOutput`
    public func listPackagingGroupsPaginated(input: ListPackagingGroupsInput) -> ClientRuntime.PaginatorSequence<ListPackagingGroupsInput, ListPackagingGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListPackagingGroupsInput, ListPackagingGroupsOutput>(input: input, inputKey: \ListPackagingGroupsInput.nextToken, outputKey: \ListPackagingGroupsOutput.nextToken, paginationFunction: self.listPackagingGroups(input:))
    }
}

extension ListPackagingGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackagingGroupsInput {
        return ListPackagingGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListPackagingGroupsInput, Output == ListPackagingGroupsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPackagingGroupsPaginated`
    /// to access the nested member `[MediaPackageVodClientTypes.PackagingGroup]`
    /// - Returns: `[MediaPackageVodClientTypes.PackagingGroup]`
    public func packagingGroups() async throws -> [MediaPackageVodClientTypes.PackagingGroup] {
        return try await self.asyncCompactMap { item in item.packagingGroups }
    }
}
