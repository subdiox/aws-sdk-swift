// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension CodeartifactClient {
    /// Paginate over `[ListDomainsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsOutputResponse`
    public func listDomainsPaginated(input: ListDomainsInput) -> ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDomainsInput, ListDomainsOutputResponse>(input: input, inputKey: \ListDomainsInput.nextToken, outputKey: \ListDomainsOutputResponse.nextToken, paginationFunction: self.listDomains(input:))
    }
}

extension ListDomainsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsInput {
        return ListDomainsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListDomainsInput, Output == ListDomainsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listDomainsPaginated`
    /// to access the nested member `[CodeartifactClientTypes.DomainSummary]`
    /// - Returns: `[CodeartifactClientTypes.DomainSummary]`
    public func domains() async throws -> [CodeartifactClientTypes.DomainSummary] {
        return try await self.asyncCompactMap { item in item.domains }
    }
}
extension CodeartifactClient {
    /// Paginate over `[ListPackagesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackagesOutputResponse`
    public func listPackagesPaginated(input: ListPackagesInput) -> ClientRuntime.PaginatorSequence<ListPackagesInput, ListPackagesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPackagesInput, ListPackagesOutputResponse>(input: input, inputKey: \ListPackagesInput.nextToken, outputKey: \ListPackagesOutputResponse.nextToken, paginationFunction: self.listPackages(input:))
    }
}

extension ListPackagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackagesInput {
        return ListPackagesInput(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            packagePrefix: self.packagePrefix,
            publish: self.publish,
            repository: self.repository,
            upstream: self.upstream
        )}
}

extension PaginatorSequence where Input == ListPackagesInput, Output == ListPackagesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPackagesPaginated`
    /// to access the nested member `[CodeartifactClientTypes.PackageSummary]`
    /// - Returns: `[CodeartifactClientTypes.PackageSummary]`
    public func packages() async throws -> [CodeartifactClientTypes.PackageSummary] {
        return try await self.asyncCompactMap { item in item.packages }
    }
}
extension CodeartifactClient {
    /// Paginate over `[ListPackageVersionAssetsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackageVersionAssetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackageVersionAssetsOutputResponse`
    public func listPackageVersionAssetsPaginated(input: ListPackageVersionAssetsInput) -> ClientRuntime.PaginatorSequence<ListPackageVersionAssetsInput, ListPackageVersionAssetsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPackageVersionAssetsInput, ListPackageVersionAssetsOutputResponse>(input: input, inputKey: \ListPackageVersionAssetsInput.nextToken, outputKey: \ListPackageVersionAssetsOutputResponse.nextToken, paginationFunction: self.listPackageVersionAssets(input:))
    }
}

extension ListPackageVersionAssetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackageVersionAssetsInput {
        return ListPackageVersionAssetsInput(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            package: self.package,
            packageVersion: self.packageVersion,
            repository: self.repository
        )}
}

extension PaginatorSequence where Input == ListPackageVersionAssetsInput, Output == ListPackageVersionAssetsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPackageVersionAssetsPaginated`
    /// to access the nested member `[CodeartifactClientTypes.AssetSummary]`
    /// - Returns: `[CodeartifactClientTypes.AssetSummary]`
    public func assets() async throws -> [CodeartifactClientTypes.AssetSummary] {
        return try await self.asyncCompactMap { item in item.assets }
    }
}
extension CodeartifactClient {
    /// Paginate over `[ListPackageVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackageVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackageVersionsOutputResponse`
    public func listPackageVersionsPaginated(input: ListPackageVersionsInput) -> ClientRuntime.PaginatorSequence<ListPackageVersionsInput, ListPackageVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPackageVersionsInput, ListPackageVersionsOutputResponse>(input: input, inputKey: \ListPackageVersionsInput.nextToken, outputKey: \ListPackageVersionsOutputResponse.nextToken, paginationFunction: self.listPackageVersions(input:))
    }
}

extension ListPackageVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackageVersionsInput {
        return ListPackageVersionsInput(
            domain: self.domain,
            domainOwner: self.domainOwner,
            format: self.format,
            maxResults: self.maxResults,
            namespace: self.namespace,
            nextToken: token,
            originType: self.originType,
            package: self.package,
            repository: self.repository,
            sortBy: self.sortBy,
            status: self.status
        )}
}

extension PaginatorSequence where Input == ListPackageVersionsInput, Output == ListPackageVersionsOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listPackageVersionsPaginated`
    /// to access the nested member `[CodeartifactClientTypes.PackageVersionSummary]`
    /// - Returns: `[CodeartifactClientTypes.PackageVersionSummary]`
    public func versions() async throws -> [CodeartifactClientTypes.PackageVersionSummary] {
        return try await self.asyncCompactMap { item in item.versions }
    }
}
extension CodeartifactClient {
    /// Paginate over `[ListRepositoriesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRepositoriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRepositoriesOutputResponse`
    public func listRepositoriesPaginated(input: ListRepositoriesInput) -> ClientRuntime.PaginatorSequence<ListRepositoriesInput, ListRepositoriesOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRepositoriesInput, ListRepositoriesOutputResponse>(input: input, inputKey: \ListRepositoriesInput.nextToken, outputKey: \ListRepositoriesOutputResponse.nextToken, paginationFunction: self.listRepositories(input:))
    }
}

extension ListRepositoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositoriesInput {
        return ListRepositoriesInput(
            maxResults: self.maxResults,
            nextToken: token,
            repositoryPrefix: self.repositoryPrefix
        )}
}

extension PaginatorSequence where Input == ListRepositoriesInput, Output == ListRepositoriesOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listRepositoriesPaginated`
    /// to access the nested member `[CodeartifactClientTypes.RepositorySummary]`
    /// - Returns: `[CodeartifactClientTypes.RepositorySummary]`
    public func repositories() async throws -> [CodeartifactClientTypes.RepositorySummary] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}
extension CodeartifactClient {
    /// Paginate over `[ListRepositoriesInDomainOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRepositoriesInDomainInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRepositoriesInDomainOutputResponse`
    public func listRepositoriesInDomainPaginated(input: ListRepositoriesInDomainInput) -> ClientRuntime.PaginatorSequence<ListRepositoriesInDomainInput, ListRepositoriesInDomainOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListRepositoriesInDomainInput, ListRepositoriesInDomainOutputResponse>(input: input, inputKey: \ListRepositoriesInDomainInput.nextToken, outputKey: \ListRepositoriesInDomainOutputResponse.nextToken, paginationFunction: self.listRepositoriesInDomain(input:))
    }
}

extension ListRepositoriesInDomainInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRepositoriesInDomainInput {
        return ListRepositoriesInDomainInput(
            administratorAccount: self.administratorAccount,
            domain: self.domain,
            domainOwner: self.domainOwner,
            maxResults: self.maxResults,
            nextToken: token,
            repositoryPrefix: self.repositoryPrefix
        )}
}

extension PaginatorSequence where Input == ListRepositoriesInDomainInput, Output == ListRepositoriesInDomainOutputResponse {
    /// This paginator transforms the `AsyncSequence` returned by `listRepositoriesInDomainPaginated`
    /// to access the nested member `[CodeartifactClientTypes.RepositorySummary]`
    /// - Returns: `[CodeartifactClientTypes.RepositorySummary]`
    public func repositories() async throws -> [CodeartifactClientTypes.RepositorySummary] {
        return try await self.asyncCompactMap { item in item.repositories }
    }
}