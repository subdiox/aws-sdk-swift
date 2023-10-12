// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OutpostsClient {
    /// Paginate over `[GetOutpostInstanceTypesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetOutpostInstanceTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetOutpostInstanceTypesOutput`
    public func getOutpostInstanceTypesPaginated(input: GetOutpostInstanceTypesInput) -> ClientRuntime.PaginatorSequence<GetOutpostInstanceTypesInput, GetOutpostInstanceTypesOutput> {
        return ClientRuntime.PaginatorSequence<GetOutpostInstanceTypesInput, GetOutpostInstanceTypesOutput>(input: input, inputKey: \GetOutpostInstanceTypesInput.nextToken, outputKey: \GetOutpostInstanceTypesOutput.nextToken, paginationFunction: self.getOutpostInstanceTypes(input:))
    }
}

extension GetOutpostInstanceTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetOutpostInstanceTypesInput {
        return GetOutpostInstanceTypesInput(
            maxResults: self.maxResults,
            nextToken: token,
            outpostId: self.outpostId
        )}
}

extension PaginatorSequence where Input == GetOutpostInstanceTypesInput, Output == GetOutpostInstanceTypesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getOutpostInstanceTypesPaginated`
    /// to access the nested member `[OutpostsClientTypes.InstanceTypeItem]`
    /// - Returns: `[OutpostsClientTypes.InstanceTypeItem]`
    public func instanceTypes() async throws -> [OutpostsClientTypes.InstanceTypeItem] {
        return try await self.asyncCompactMap { item in item.instanceTypes }
    }
}
extension OutpostsClient {
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
            hostIdFilter: self.hostIdFilter,
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifier: self.outpostIdentifier,
            statusFilter: self.statusFilter
        )}
}

extension PaginatorSequence where Input == ListAssetsInput, Output == ListAssetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAssetsPaginated`
    /// to access the nested member `[OutpostsClientTypes.AssetInfo]`
    /// - Returns: `[OutpostsClientTypes.AssetInfo]`
    public func assets() async throws -> [OutpostsClientTypes.AssetInfo] {
        return try await self.asyncCompactMap { item in item.assets }
    }
}
extension OutpostsClient {
    /// Paginate over `[ListCatalogItemsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCatalogItemsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCatalogItemsOutput`
    public func listCatalogItemsPaginated(input: ListCatalogItemsInput) -> ClientRuntime.PaginatorSequence<ListCatalogItemsInput, ListCatalogItemsOutput> {
        return ClientRuntime.PaginatorSequence<ListCatalogItemsInput, ListCatalogItemsOutput>(input: input, inputKey: \ListCatalogItemsInput.nextToken, outputKey: \ListCatalogItemsOutput.nextToken, paginationFunction: self.listCatalogItems(input:))
    }
}

extension ListCatalogItemsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCatalogItemsInput {
        return ListCatalogItemsInput(
            ec2FamilyFilter: self.ec2FamilyFilter,
            itemClassFilter: self.itemClassFilter,
            maxResults: self.maxResults,
            nextToken: token,
            supportedStorageFilter: self.supportedStorageFilter
        )}
}

extension PaginatorSequence where Input == ListCatalogItemsInput, Output == ListCatalogItemsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCatalogItemsPaginated`
    /// to access the nested member `[OutpostsClientTypes.CatalogItem]`
    /// - Returns: `[OutpostsClientTypes.CatalogItem]`
    public func catalogItems() async throws -> [OutpostsClientTypes.CatalogItem] {
        return try await self.asyncCompactMap { item in item.catalogItems }
    }
}
extension OutpostsClient {
    /// Paginate over `[ListOrdersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOrdersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOrdersOutput`
    public func listOrdersPaginated(input: ListOrdersInput) -> ClientRuntime.PaginatorSequence<ListOrdersInput, ListOrdersOutput> {
        return ClientRuntime.PaginatorSequence<ListOrdersInput, ListOrdersOutput>(input: input, inputKey: \ListOrdersInput.nextToken, outputKey: \ListOrdersOutput.nextToken, paginationFunction: self.listOrders(input:))
    }
}

extension ListOrdersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOrdersInput {
        return ListOrdersInput(
            maxResults: self.maxResults,
            nextToken: token,
            outpostIdentifierFilter: self.outpostIdentifierFilter
        )}
}

extension PaginatorSequence where Input == ListOrdersInput, Output == ListOrdersOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listOrdersPaginated`
    /// to access the nested member `[OutpostsClientTypes.OrderSummary]`
    /// - Returns: `[OutpostsClientTypes.OrderSummary]`
    public func orders() async throws -> [OutpostsClientTypes.OrderSummary] {
        return try await self.asyncCompactMap { item in item.orders }
    }
}
extension OutpostsClient {
    /// Paginate over `[ListOutpostsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListOutpostsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListOutpostsOutput`
    public func listOutpostsPaginated(input: ListOutpostsInput) -> ClientRuntime.PaginatorSequence<ListOutpostsInput, ListOutpostsOutput> {
        return ClientRuntime.PaginatorSequence<ListOutpostsInput, ListOutpostsOutput>(input: input, inputKey: \ListOutpostsInput.nextToken, outputKey: \ListOutpostsOutput.nextToken, paginationFunction: self.listOutposts(input:))
    }
}

extension ListOutpostsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListOutpostsInput {
        return ListOutpostsInput(
            availabilityZoneFilter: self.availabilityZoneFilter,
            availabilityZoneIdFilter: self.availabilityZoneIdFilter,
            lifeCycleStatusFilter: self.lifeCycleStatusFilter,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListOutpostsInput, Output == ListOutpostsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listOutpostsPaginated`
    /// to access the nested member `[OutpostsClientTypes.Outpost]`
    /// - Returns: `[OutpostsClientTypes.Outpost]`
    public func outposts() async throws -> [OutpostsClientTypes.Outpost] {
        return try await self.asyncCompactMap { item in item.outposts }
    }
}
extension OutpostsClient {
    /// Paginate over `[ListSitesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSitesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSitesOutput`
    public func listSitesPaginated(input: ListSitesInput) -> ClientRuntime.PaginatorSequence<ListSitesInput, ListSitesOutput> {
        return ClientRuntime.PaginatorSequence<ListSitesInput, ListSitesOutput>(input: input, inputKey: \ListSitesInput.nextToken, outputKey: \ListSitesOutput.nextToken, paginationFunction: self.listSites(input:))
    }
}

extension ListSitesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSitesInput {
        return ListSitesInput(
            maxResults: self.maxResults,
            nextToken: token,
            operatingAddressCityFilter: self.operatingAddressCityFilter,
            operatingAddressCountryCodeFilter: self.operatingAddressCountryCodeFilter,
            operatingAddressStateOrRegionFilter: self.operatingAddressStateOrRegionFilter
        )}
}

extension PaginatorSequence where Input == ListSitesInput, Output == ListSitesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSitesPaginated`
    /// to access the nested member `[OutpostsClientTypes.Site]`
    /// - Returns: `[OutpostsClientTypes.Site]`
    public func sites() async throws -> [OutpostsClientTypes.Site] {
        return try await self.asyncCompactMap { item in item.sites }
    }
}
