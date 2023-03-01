// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension OpenSearchClient {
    /// Paginate over `[DescribeDomainAutoTunesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDomainAutoTunesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDomainAutoTunesOutputResponse`
    public func describeDomainAutoTunesPaginated(input: DescribeDomainAutoTunesInput) -> ClientRuntime.PaginatorSequence<DescribeDomainAutoTunesInput, DescribeDomainAutoTunesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeDomainAutoTunesInput, DescribeDomainAutoTunesOutputResponse>(input: input, inputKey: \DescribeDomainAutoTunesInput.nextToken, outputKey: \DescribeDomainAutoTunesOutputResponse.nextToken, paginationFunction: self.describeDomainAutoTunes(input:))
    }
}

extension DescribeDomainAutoTunesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDomainAutoTunesInput {
        return DescribeDomainAutoTunesInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeInboundConnectionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeInboundConnectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeInboundConnectionsOutputResponse`
    public func describeInboundConnectionsPaginated(input: DescribeInboundConnectionsInput) -> ClientRuntime.PaginatorSequence<DescribeInboundConnectionsInput, DescribeInboundConnectionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeInboundConnectionsInput, DescribeInboundConnectionsOutputResponse>(input: input, inputKey: \DescribeInboundConnectionsInput.nextToken, outputKey: \DescribeInboundConnectionsOutputResponse.nextToken, paginationFunction: self.describeInboundConnections(input:))
    }
}

extension DescribeInboundConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeInboundConnectionsInput {
        return DescribeInboundConnectionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeOutboundConnectionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeOutboundConnectionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeOutboundConnectionsOutputResponse`
    public func describeOutboundConnectionsPaginated(input: DescribeOutboundConnectionsInput) -> ClientRuntime.PaginatorSequence<DescribeOutboundConnectionsInput, DescribeOutboundConnectionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeOutboundConnectionsInput, DescribeOutboundConnectionsOutputResponse>(input: input, inputKey: \DescribeOutboundConnectionsInput.nextToken, outputKey: \DescribeOutboundConnectionsOutputResponse.nextToken, paginationFunction: self.describeOutboundConnections(input:))
    }
}

extension DescribeOutboundConnectionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeOutboundConnectionsInput {
        return DescribeOutboundConnectionsInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribePackagesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribePackagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribePackagesOutputResponse`
    public func describePackagesPaginated(input: DescribePackagesInput) -> ClientRuntime.PaginatorSequence<DescribePackagesInput, DescribePackagesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribePackagesInput, DescribePackagesOutputResponse>(input: input, inputKey: \DescribePackagesInput.nextToken, outputKey: \DescribePackagesOutputResponse.nextToken, paginationFunction: self.describePackages(input:))
    }
}

extension DescribePackagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribePackagesInput {
        return DescribePackagesInput(
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeReservedInstanceOfferingsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedInstanceOfferingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedInstanceOfferingsOutputResponse`
    public func describeReservedInstanceOfferingsPaginated(input: DescribeReservedInstanceOfferingsInput) -> ClientRuntime.PaginatorSequence<DescribeReservedInstanceOfferingsInput, DescribeReservedInstanceOfferingsOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReservedInstanceOfferingsInput, DescribeReservedInstanceOfferingsOutputResponse>(input: input, inputKey: \DescribeReservedInstanceOfferingsInput.nextToken, outputKey: \DescribeReservedInstanceOfferingsOutputResponse.nextToken, paginationFunction: self.describeReservedInstanceOfferings(input:))
    }
}

extension DescribeReservedInstanceOfferingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedInstanceOfferingsInput {
        return DescribeReservedInstanceOfferingsInput(
            maxResults: self.maxResults,
            nextToken: token,
            reservedInstanceOfferingId: self.reservedInstanceOfferingId
        )}
}
extension OpenSearchClient {
    /// Paginate over `[DescribeReservedInstancesOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeReservedInstancesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeReservedInstancesOutputResponse`
    public func describeReservedInstancesPaginated(input: DescribeReservedInstancesInput) -> ClientRuntime.PaginatorSequence<DescribeReservedInstancesInput, DescribeReservedInstancesOutputResponse> {
        return ClientRuntime.PaginatorSequence<DescribeReservedInstancesInput, DescribeReservedInstancesOutputResponse>(input: input, inputKey: \DescribeReservedInstancesInput.nextToken, outputKey: \DescribeReservedInstancesOutputResponse.nextToken, paginationFunction: self.describeReservedInstances(input:))
    }
}

extension DescribeReservedInstancesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeReservedInstancesInput {
        return DescribeReservedInstancesInput(
            maxResults: self.maxResults,
            nextToken: token,
            reservedInstanceId: self.reservedInstanceId
        )}
}
extension OpenSearchClient {
    /// Paginate over `[GetPackageVersionHistoryOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetPackageVersionHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetPackageVersionHistoryOutputResponse`
    public func getPackageVersionHistoryPaginated(input: GetPackageVersionHistoryInput) -> ClientRuntime.PaginatorSequence<GetPackageVersionHistoryInput, GetPackageVersionHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetPackageVersionHistoryInput, GetPackageVersionHistoryOutputResponse>(input: input, inputKey: \GetPackageVersionHistoryInput.nextToken, outputKey: \GetPackageVersionHistoryOutputResponse.nextToken, paginationFunction: self.getPackageVersionHistory(input:))
    }
}

extension GetPackageVersionHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetPackageVersionHistoryInput {
        return GetPackageVersionHistoryInput(
            maxResults: self.maxResults,
            nextToken: token,
            packageID: self.packageID
        )}
}
extension OpenSearchClient {
    /// Paginate over `[GetUpgradeHistoryOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetUpgradeHistoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetUpgradeHistoryOutputResponse`
    public func getUpgradeHistoryPaginated(input: GetUpgradeHistoryInput) -> ClientRuntime.PaginatorSequence<GetUpgradeHistoryInput, GetUpgradeHistoryOutputResponse> {
        return ClientRuntime.PaginatorSequence<GetUpgradeHistoryInput, GetUpgradeHistoryOutputResponse>(input: input, inputKey: \GetUpgradeHistoryInput.nextToken, outputKey: \GetUpgradeHistoryOutputResponse.nextToken, paginationFunction: self.getUpgradeHistory(input:))
    }
}

extension GetUpgradeHistoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetUpgradeHistoryInput {
        return GetUpgradeHistoryInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListDomainsForPackageOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDomainsForPackageInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDomainsForPackageOutputResponse`
    public func listDomainsForPackagePaginated(input: ListDomainsForPackageInput) -> ClientRuntime.PaginatorSequence<ListDomainsForPackageInput, ListDomainsForPackageOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListDomainsForPackageInput, ListDomainsForPackageOutputResponse>(input: input, inputKey: \ListDomainsForPackageInput.nextToken, outputKey: \ListDomainsForPackageOutputResponse.nextToken, paginationFunction: self.listDomainsForPackage(input:))
    }
}

extension ListDomainsForPackageInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDomainsForPackageInput {
        return ListDomainsForPackageInput(
            maxResults: self.maxResults,
            nextToken: token,
            packageID: self.packageID
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListInstanceTypeDetailsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListInstanceTypeDetailsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListInstanceTypeDetailsOutputResponse`
    public func listInstanceTypeDetailsPaginated(input: ListInstanceTypeDetailsInput) -> ClientRuntime.PaginatorSequence<ListInstanceTypeDetailsInput, ListInstanceTypeDetailsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListInstanceTypeDetailsInput, ListInstanceTypeDetailsOutputResponse>(input: input, inputKey: \ListInstanceTypeDetailsInput.nextToken, outputKey: \ListInstanceTypeDetailsOutputResponse.nextToken, paginationFunction: self.listInstanceTypeDetails(input:))
    }
}

extension ListInstanceTypeDetailsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListInstanceTypeDetailsInput {
        return ListInstanceTypeDetailsInput(
            domainName: self.domainName,
            engineVersion: self.engineVersion,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListPackagesForDomainOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPackagesForDomainInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPackagesForDomainOutputResponse`
    public func listPackagesForDomainPaginated(input: ListPackagesForDomainInput) -> ClientRuntime.PaginatorSequence<ListPackagesForDomainInput, ListPackagesForDomainOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListPackagesForDomainInput, ListPackagesForDomainOutputResponse>(input: input, inputKey: \ListPackagesForDomainInput.nextToken, outputKey: \ListPackagesForDomainOutputResponse.nextToken, paginationFunction: self.listPackagesForDomain(input:))
    }
}

extension ListPackagesForDomainInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPackagesForDomainInput {
        return ListPackagesForDomainInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListScheduledActionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListScheduledActionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListScheduledActionsOutputResponse`
    public func listScheduledActionsPaginated(input: ListScheduledActionsInput) -> ClientRuntime.PaginatorSequence<ListScheduledActionsInput, ListScheduledActionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListScheduledActionsInput, ListScheduledActionsOutputResponse>(input: input, inputKey: \ListScheduledActionsInput.nextToken, outputKey: \ListScheduledActionsOutputResponse.nextToken, paginationFunction: self.listScheduledActions(input:))
    }
}

extension ListScheduledActionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListScheduledActionsInput {
        return ListScheduledActionsInput(
            domainName: self.domainName,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension OpenSearchClient {
    /// Paginate over `[ListVersionsOutputResponse]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListVersionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListVersionsOutputResponse`
    public func listVersionsPaginated(input: ListVersionsInput) -> ClientRuntime.PaginatorSequence<ListVersionsInput, ListVersionsOutputResponse> {
        return ClientRuntime.PaginatorSequence<ListVersionsInput, ListVersionsOutputResponse>(input: input, inputKey: \ListVersionsInput.nextToken, outputKey: \ListVersionsOutputResponse.nextToken, paginationFunction: self.listVersions(input:))
    }
}

extension ListVersionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVersionsInput {
        return ListVersionsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
