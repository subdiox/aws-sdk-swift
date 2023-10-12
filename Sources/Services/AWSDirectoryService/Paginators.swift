// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DirectoryClient {
    /// Paginate over `[DescribeClientAuthenticationSettingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeClientAuthenticationSettingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeClientAuthenticationSettingsOutput`
    public func describeClientAuthenticationSettingsPaginated(input: DescribeClientAuthenticationSettingsInput) -> ClientRuntime.PaginatorSequence<DescribeClientAuthenticationSettingsInput, DescribeClientAuthenticationSettingsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeClientAuthenticationSettingsInput, DescribeClientAuthenticationSettingsOutput>(input: input, inputKey: \DescribeClientAuthenticationSettingsInput.nextToken, outputKey: \DescribeClientAuthenticationSettingsOutput.nextToken, paginationFunction: self.describeClientAuthenticationSettings(input:))
    }
}

extension DescribeClientAuthenticationSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeClientAuthenticationSettingsInput {
        return DescribeClientAuthenticationSettingsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            type: self.type
        )}
}

extension PaginatorSequence where Input == DescribeClientAuthenticationSettingsInput, Output == DescribeClientAuthenticationSettingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeClientAuthenticationSettingsPaginated`
    /// to access the nested member `[DirectoryClientTypes.ClientAuthenticationSettingInfo]`
    /// - Returns: `[DirectoryClientTypes.ClientAuthenticationSettingInfo]`
    public func clientAuthenticationSettingsInfo() async throws -> [DirectoryClientTypes.ClientAuthenticationSettingInfo] {
        return try await self.asyncCompactMap { item in item.clientAuthenticationSettingsInfo }
    }
}
extension DirectoryClient {
    /// Paginate over `[DescribeDirectoriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDirectoriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDirectoriesOutput`
    public func describeDirectoriesPaginated(input: DescribeDirectoriesInput) -> ClientRuntime.PaginatorSequence<DescribeDirectoriesInput, DescribeDirectoriesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDirectoriesInput, DescribeDirectoriesOutput>(input: input, inputKey: \DescribeDirectoriesInput.nextToken, outputKey: \DescribeDirectoriesOutput.nextToken, paginationFunction: self.describeDirectories(input:))
    }
}

extension DescribeDirectoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDirectoriesInput {
        return DescribeDirectoriesInput(
            directoryIds: self.directoryIds,
            limit: self.limit,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == DescribeDirectoriesInput, Output == DescribeDirectoriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeDirectoriesPaginated`
    /// to access the nested member `[DirectoryClientTypes.DirectoryDescription]`
    /// - Returns: `[DirectoryClientTypes.DirectoryDescription]`
    public func directoryDescriptions() async throws -> [DirectoryClientTypes.DirectoryDescription] {
        return try await self.asyncCompactMap { item in item.directoryDescriptions }
    }
}
extension DirectoryClient {
    /// Paginate over `[DescribeDomainControllersOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeDomainControllersInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeDomainControllersOutput`
    public func describeDomainControllersPaginated(input: DescribeDomainControllersInput) -> ClientRuntime.PaginatorSequence<DescribeDomainControllersInput, DescribeDomainControllersOutput> {
        return ClientRuntime.PaginatorSequence<DescribeDomainControllersInput, DescribeDomainControllersOutput>(input: input, inputKey: \DescribeDomainControllersInput.nextToken, outputKey: \DescribeDomainControllersOutput.nextToken, paginationFunction: self.describeDomainControllers(input:))
    }
}

extension DescribeDomainControllersInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeDomainControllersInput {
        return DescribeDomainControllersInput(
            directoryId: self.directoryId,
            domainControllerIds: self.domainControllerIds,
            limit: self.limit,
            nextToken: token
        )}
}
extension DirectoryClient {
    /// Paginate over `[DescribeLDAPSSettingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeLDAPSSettingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeLDAPSSettingsOutput`
    public func describeLDAPSSettingsPaginated(input: DescribeLDAPSSettingsInput) -> ClientRuntime.PaginatorSequence<DescribeLDAPSSettingsInput, DescribeLDAPSSettingsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeLDAPSSettingsInput, DescribeLDAPSSettingsOutput>(input: input, inputKey: \DescribeLDAPSSettingsInput.nextToken, outputKey: \DescribeLDAPSSettingsOutput.nextToken, paginationFunction: self.describeLDAPSSettings(input:))
    }
}

extension DescribeLDAPSSettingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeLDAPSSettingsInput {
        return DescribeLDAPSSettingsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            type: self.type
        )}
}

extension PaginatorSequence where Input == DescribeLDAPSSettingsInput, Output == DescribeLDAPSSettingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeLDAPSSettingsPaginated`
    /// to access the nested member `[DirectoryClientTypes.LDAPSSettingInfo]`
    /// - Returns: `[DirectoryClientTypes.LDAPSSettingInfo]`
    public func ldapsSettingsInfo() async throws -> [DirectoryClientTypes.LDAPSSettingInfo] {
        return try await self.asyncCompactMap { item in item.ldapsSettingsInfo }
    }
}
extension DirectoryClient {
    /// Paginate over `[DescribeRegionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeRegionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeRegionsOutput`
    public func describeRegionsPaginated(input: DescribeRegionsInput) -> ClientRuntime.PaginatorSequence<DescribeRegionsInput, DescribeRegionsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeRegionsInput, DescribeRegionsOutput>(input: input, inputKey: \DescribeRegionsInput.nextToken, outputKey: \DescribeRegionsOutput.nextToken, paginationFunction: self.describeRegions(input:))
    }
}

extension DescribeRegionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeRegionsInput {
        return DescribeRegionsInput(
            directoryId: self.directoryId,
            nextToken: token,
            regionName: self.regionName
        )}
}

extension PaginatorSequence where Input == DescribeRegionsInput, Output == DescribeRegionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeRegionsPaginated`
    /// to access the nested member `[DirectoryClientTypes.RegionDescription]`
    /// - Returns: `[DirectoryClientTypes.RegionDescription]`
    public func regionsDescription() async throws -> [DirectoryClientTypes.RegionDescription] {
        return try await self.asyncCompactMap { item in item.regionsDescription }
    }
}
extension DirectoryClient {
    /// Paginate over `[DescribeSharedDirectoriesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeSharedDirectoriesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeSharedDirectoriesOutput`
    public func describeSharedDirectoriesPaginated(input: DescribeSharedDirectoriesInput) -> ClientRuntime.PaginatorSequence<DescribeSharedDirectoriesInput, DescribeSharedDirectoriesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeSharedDirectoriesInput, DescribeSharedDirectoriesOutput>(input: input, inputKey: \DescribeSharedDirectoriesInput.nextToken, outputKey: \DescribeSharedDirectoriesOutput.nextToken, paginationFunction: self.describeSharedDirectories(input:))
    }
}

extension DescribeSharedDirectoriesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSharedDirectoriesInput {
        return DescribeSharedDirectoriesInput(
            limit: self.limit,
            nextToken: token,
            ownerDirectoryId: self.ownerDirectoryId,
            sharedDirectoryIds: self.sharedDirectoryIds
        )}
}

extension PaginatorSequence where Input == DescribeSharedDirectoriesInput, Output == DescribeSharedDirectoriesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeSharedDirectoriesPaginated`
    /// to access the nested member `[DirectoryClientTypes.SharedDirectory]`
    /// - Returns: `[DirectoryClientTypes.SharedDirectory]`
    public func sharedDirectories() async throws -> [DirectoryClientTypes.SharedDirectory] {
        return try await self.asyncCompactMap { item in item.sharedDirectories }
    }
}
extension DirectoryClient {
    /// Paginate over `[DescribeSnapshotsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeSnapshotsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeSnapshotsOutput`
    public func describeSnapshotsPaginated(input: DescribeSnapshotsInput) -> ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeSnapshotsInput, DescribeSnapshotsOutput>(input: input, inputKey: \DescribeSnapshotsInput.nextToken, outputKey: \DescribeSnapshotsOutput.nextToken, paginationFunction: self.describeSnapshots(input:))
    }
}

extension DescribeSnapshotsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeSnapshotsInput {
        return DescribeSnapshotsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            snapshotIds: self.snapshotIds
        )}
}

extension PaginatorSequence where Input == DescribeSnapshotsInput, Output == DescribeSnapshotsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeSnapshotsPaginated`
    /// to access the nested member `[DirectoryClientTypes.Snapshot]`
    /// - Returns: `[DirectoryClientTypes.Snapshot]`
    public func snapshots() async throws -> [DirectoryClientTypes.Snapshot] {
        return try await self.asyncCompactMap { item in item.snapshots }
    }
}
extension DirectoryClient {
    /// Paginate over `[DescribeTrustsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTrustsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTrustsOutput`
    public func describeTrustsPaginated(input: DescribeTrustsInput) -> ClientRuntime.PaginatorSequence<DescribeTrustsInput, DescribeTrustsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTrustsInput, DescribeTrustsOutput>(input: input, inputKey: \DescribeTrustsInput.nextToken, outputKey: \DescribeTrustsOutput.nextToken, paginationFunction: self.describeTrusts(input:))
    }
}

extension DescribeTrustsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTrustsInput {
        return DescribeTrustsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token,
            trustIds: self.trustIds
        )}
}

extension PaginatorSequence where Input == DescribeTrustsInput, Output == DescribeTrustsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeTrustsPaginated`
    /// to access the nested member `[DirectoryClientTypes.Trust]`
    /// - Returns: `[DirectoryClientTypes.Trust]`
    public func trusts() async throws -> [DirectoryClientTypes.Trust] {
        return try await self.asyncCompactMap { item in item.trusts }
    }
}
extension DirectoryClient {
    /// Paginate over `[DescribeUpdateDirectoryOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeUpdateDirectoryInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeUpdateDirectoryOutput`
    public func describeUpdateDirectoryPaginated(input: DescribeUpdateDirectoryInput) -> ClientRuntime.PaginatorSequence<DescribeUpdateDirectoryInput, DescribeUpdateDirectoryOutput> {
        return ClientRuntime.PaginatorSequence<DescribeUpdateDirectoryInput, DescribeUpdateDirectoryOutput>(input: input, inputKey: \DescribeUpdateDirectoryInput.nextToken, outputKey: \DescribeUpdateDirectoryOutput.nextToken, paginationFunction: self.describeUpdateDirectory(input:))
    }
}

extension DescribeUpdateDirectoryInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeUpdateDirectoryInput {
        return DescribeUpdateDirectoryInput(
            directoryId: self.directoryId,
            nextToken: token,
            regionName: self.regionName,
            updateType: self.updateType
        )}
}

extension PaginatorSequence where Input == DescribeUpdateDirectoryInput, Output == DescribeUpdateDirectoryOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeUpdateDirectoryPaginated`
    /// to access the nested member `[DirectoryClientTypes.UpdateInfoEntry]`
    /// - Returns: `[DirectoryClientTypes.UpdateInfoEntry]`
    public func updateActivities() async throws -> [DirectoryClientTypes.UpdateInfoEntry] {
        return try await self.asyncCompactMap { item in item.updateActivities }
    }
}
extension DirectoryClient {
    /// Paginate over `[ListCertificatesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListCertificatesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListCertificatesOutput`
    public func listCertificatesPaginated(input: ListCertificatesInput) -> ClientRuntime.PaginatorSequence<ListCertificatesInput, ListCertificatesOutput> {
        return ClientRuntime.PaginatorSequence<ListCertificatesInput, ListCertificatesOutput>(input: input, inputKey: \ListCertificatesInput.nextToken, outputKey: \ListCertificatesOutput.nextToken, paginationFunction: self.listCertificates(input:))
    }
}

extension ListCertificatesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListCertificatesInput {
        return ListCertificatesInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListCertificatesInput, Output == ListCertificatesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listCertificatesPaginated`
    /// to access the nested member `[DirectoryClientTypes.CertificateInfo]`
    /// - Returns: `[DirectoryClientTypes.CertificateInfo]`
    public func certificatesInfo() async throws -> [DirectoryClientTypes.CertificateInfo] {
        return try await self.asyncCompactMap { item in item.certificatesInfo }
    }
}
extension DirectoryClient {
    /// Paginate over `[ListIpRoutesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListIpRoutesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListIpRoutesOutput`
    public func listIpRoutesPaginated(input: ListIpRoutesInput) -> ClientRuntime.PaginatorSequence<ListIpRoutesInput, ListIpRoutesOutput> {
        return ClientRuntime.PaginatorSequence<ListIpRoutesInput, ListIpRoutesOutput>(input: input, inputKey: \ListIpRoutesInput.nextToken, outputKey: \ListIpRoutesOutput.nextToken, paginationFunction: self.listIpRoutes(input:))
    }
}

extension ListIpRoutesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListIpRoutesInput {
        return ListIpRoutesInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListIpRoutesInput, Output == ListIpRoutesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listIpRoutesPaginated`
    /// to access the nested member `[DirectoryClientTypes.IpRouteInfo]`
    /// - Returns: `[DirectoryClientTypes.IpRouteInfo]`
    public func ipRoutesInfo() async throws -> [DirectoryClientTypes.IpRouteInfo] {
        return try await self.asyncCompactMap { item in item.ipRoutesInfo }
    }
}
extension DirectoryClient {
    /// Paginate over `[ListLogSubscriptionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListLogSubscriptionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListLogSubscriptionsOutput`
    public func listLogSubscriptionsPaginated(input: ListLogSubscriptionsInput) -> ClientRuntime.PaginatorSequence<ListLogSubscriptionsInput, ListLogSubscriptionsOutput> {
        return ClientRuntime.PaginatorSequence<ListLogSubscriptionsInput, ListLogSubscriptionsOutput>(input: input, inputKey: \ListLogSubscriptionsInput.nextToken, outputKey: \ListLogSubscriptionsOutput.nextToken, paginationFunction: self.listLogSubscriptions(input:))
    }
}

extension ListLogSubscriptionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListLogSubscriptionsInput {
        return ListLogSubscriptionsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListLogSubscriptionsInput, Output == ListLogSubscriptionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listLogSubscriptionsPaginated`
    /// to access the nested member `[DirectoryClientTypes.LogSubscription]`
    /// - Returns: `[DirectoryClientTypes.LogSubscription]`
    public func logSubscriptions() async throws -> [DirectoryClientTypes.LogSubscription] {
        return try await self.asyncCompactMap { item in item.logSubscriptions }
    }
}
extension DirectoryClient {
    /// Paginate over `[ListSchemaExtensionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSchemaExtensionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSchemaExtensionsOutput`
    public func listSchemaExtensionsPaginated(input: ListSchemaExtensionsInput) -> ClientRuntime.PaginatorSequence<ListSchemaExtensionsInput, ListSchemaExtensionsOutput> {
        return ClientRuntime.PaginatorSequence<ListSchemaExtensionsInput, ListSchemaExtensionsOutput>(input: input, inputKey: \ListSchemaExtensionsInput.nextToken, outputKey: \ListSchemaExtensionsOutput.nextToken, paginationFunction: self.listSchemaExtensions(input:))
    }
}

extension ListSchemaExtensionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSchemaExtensionsInput {
        return ListSchemaExtensionsInput(
            directoryId: self.directoryId,
            limit: self.limit,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListSchemaExtensionsInput, Output == ListSchemaExtensionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSchemaExtensionsPaginated`
    /// to access the nested member `[DirectoryClientTypes.SchemaExtensionInfo]`
    /// - Returns: `[DirectoryClientTypes.SchemaExtensionInfo]`
    public func schemaExtensionsInfo() async throws -> [DirectoryClientTypes.SchemaExtensionInfo] {
        return try await self.asyncCompactMap { item in item.schemaExtensionsInfo }
    }
}
extension DirectoryClient {
    /// Paginate over `[ListTagsForResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutput`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput>(input: input, inputKey: \ListTagsForResourceInput.nextToken, outputKey: \ListTagsForResourceOutput.nextToken, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            limit: self.limit,
            nextToken: token,
            resourceId: self.resourceId
        )}
}

extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[DirectoryClientTypes.Tag]`
    /// - Returns: `[DirectoryClientTypes.Tag]`
    public func tags() async throws -> [DirectoryClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
