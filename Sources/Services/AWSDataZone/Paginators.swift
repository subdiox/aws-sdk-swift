// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension DataZoneClient {
    /// Paginate over `[ListAssetRevisionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAssetRevisionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAssetRevisionsOutput`
    public func listAssetRevisionsPaginated(input: ListAssetRevisionsInput) -> ClientRuntime.PaginatorSequence<ListAssetRevisionsInput, ListAssetRevisionsOutput> {
        return ClientRuntime.PaginatorSequence<ListAssetRevisionsInput, ListAssetRevisionsOutput>(input: input, inputKey: \ListAssetRevisionsInput.nextToken, outputKey: \ListAssetRevisionsOutput.nextToken, paginationFunction: self.listAssetRevisions(input:))
    }
}

extension ListAssetRevisionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAssetRevisionsInput {
        return ListAssetRevisionsInput(
            domainIdentifier: self.domainIdentifier,
            identifier: self.identifier,
            maxResults: self.maxResults,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListAssetRevisionsInput, Output == ListAssetRevisionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAssetRevisionsPaginated`
    /// to access the nested member `[DataZoneClientTypes.AssetRevision]`
    /// - Returns: `[DataZoneClientTypes.AssetRevision]`
    public func items() async throws -> [DataZoneClientTypes.AssetRevision] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListDataSourceRunActivitiesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDataSourceRunActivitiesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDataSourceRunActivitiesOutput`
    public func listDataSourceRunActivitiesPaginated(input: ListDataSourceRunActivitiesInput) -> ClientRuntime.PaginatorSequence<ListDataSourceRunActivitiesInput, ListDataSourceRunActivitiesOutput> {
        return ClientRuntime.PaginatorSequence<ListDataSourceRunActivitiesInput, ListDataSourceRunActivitiesOutput>(input: input, inputKey: \ListDataSourceRunActivitiesInput.nextToken, outputKey: \ListDataSourceRunActivitiesOutput.nextToken, paginationFunction: self.listDataSourceRunActivities(input:))
    }
}

extension ListDataSourceRunActivitiesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDataSourceRunActivitiesInput {
        return ListDataSourceRunActivitiesInput(
            domainIdentifier: self.domainIdentifier,
            identifier: self.identifier,
            maxResults: self.maxResults,
            nextToken: token,
            status: self.status
        )}
}

extension PaginatorSequence where Input == ListDataSourceRunActivitiesInput, Output == ListDataSourceRunActivitiesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listDataSourceRunActivitiesPaginated`
    /// to access the nested member `[DataZoneClientTypes.DataSourceRunActivity]`
    /// - Returns: `[DataZoneClientTypes.DataSourceRunActivity]`
    public func items() async throws -> [DataZoneClientTypes.DataSourceRunActivity] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListEnvironmentBlueprintsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEnvironmentBlueprintsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEnvironmentBlueprintsOutput`
    public func listEnvironmentBlueprintsPaginated(input: ListEnvironmentBlueprintsInput) -> ClientRuntime.PaginatorSequence<ListEnvironmentBlueprintsInput, ListEnvironmentBlueprintsOutput> {
        return ClientRuntime.PaginatorSequence<ListEnvironmentBlueprintsInput, ListEnvironmentBlueprintsOutput>(input: input, inputKey: \ListEnvironmentBlueprintsInput.nextToken, outputKey: \ListEnvironmentBlueprintsOutput.nextToken, paginationFunction: self.listEnvironmentBlueprints(input:))
    }
}

extension ListEnvironmentBlueprintsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnvironmentBlueprintsInput {
        return ListEnvironmentBlueprintsInput(
            domainIdentifier: self.domainIdentifier,
            managed: self.managed,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token
        )}
}

extension PaginatorSequence where Input == ListEnvironmentBlueprintsInput, Output == ListEnvironmentBlueprintsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEnvironmentBlueprintsPaginated`
    /// to access the nested member `[DataZoneClientTypes.EnvironmentBlueprintSummary]`
    /// - Returns: `[DataZoneClientTypes.EnvironmentBlueprintSummary]`
    public func items() async throws -> [DataZoneClientTypes.EnvironmentBlueprintSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListEnvironmentProfilesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEnvironmentProfilesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEnvironmentProfilesOutput`
    public func listEnvironmentProfilesPaginated(input: ListEnvironmentProfilesInput) -> ClientRuntime.PaginatorSequence<ListEnvironmentProfilesInput, ListEnvironmentProfilesOutput> {
        return ClientRuntime.PaginatorSequence<ListEnvironmentProfilesInput, ListEnvironmentProfilesOutput>(input: input, inputKey: \ListEnvironmentProfilesInput.nextToken, outputKey: \ListEnvironmentProfilesOutput.nextToken, paginationFunction: self.listEnvironmentProfiles(input:))
    }
}

extension ListEnvironmentProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnvironmentProfilesInput {
        return ListEnvironmentProfilesInput(
            awsAccountId: self.awsAccountId,
            awsAccountRegion: self.awsAccountRegion,
            domainIdentifier: self.domainIdentifier,
            environmentBlueprintIdentifier: self.environmentBlueprintIdentifier,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            projectIdentifier: self.projectIdentifier
        )}
}

extension PaginatorSequence where Input == ListEnvironmentProfilesInput, Output == ListEnvironmentProfilesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEnvironmentProfilesPaginated`
    /// to access the nested member `[DataZoneClientTypes.EnvironmentProfileSummary]`
    /// - Returns: `[DataZoneClientTypes.EnvironmentProfileSummary]`
    public func items() async throws -> [DataZoneClientTypes.EnvironmentProfileSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListEnvironmentsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListEnvironmentsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListEnvironmentsOutput`
    public func listEnvironmentsPaginated(input: ListEnvironmentsInput) -> ClientRuntime.PaginatorSequence<ListEnvironmentsInput, ListEnvironmentsOutput> {
        return ClientRuntime.PaginatorSequence<ListEnvironmentsInput, ListEnvironmentsOutput>(input: input, inputKey: \ListEnvironmentsInput.nextToken, outputKey: \ListEnvironmentsOutput.nextToken, paginationFunction: self.listEnvironments(input:))
    }
}

extension ListEnvironmentsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListEnvironmentsInput {
        return ListEnvironmentsInput(
            awsAccountId: self.awsAccountId,
            awsAccountRegion: self.awsAccountRegion,
            domainIdentifier: self.domainIdentifier,
            environmentBlueprintIdentifier: self.environmentBlueprintIdentifier,
            environmentProfileIdentifier: self.environmentProfileIdentifier,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            projectIdentifier: self.projectIdentifier,
            provider: self.provider,
            status: self.status
        )}
}

extension PaginatorSequence where Input == ListEnvironmentsInput, Output == ListEnvironmentsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listEnvironmentsPaginated`
    /// to access the nested member `[DataZoneClientTypes.EnvironmentSummary]`
    /// - Returns: `[DataZoneClientTypes.EnvironmentSummary]`
    public func items() async throws -> [DataZoneClientTypes.EnvironmentSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListNotificationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListNotificationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListNotificationsOutput`
    public func listNotificationsPaginated(input: ListNotificationsInput) -> ClientRuntime.PaginatorSequence<ListNotificationsInput, ListNotificationsOutput> {
        return ClientRuntime.PaginatorSequence<ListNotificationsInput, ListNotificationsOutput>(input: input, inputKey: \ListNotificationsInput.nextToken, outputKey: \ListNotificationsOutput.nextToken, paginationFunction: self.listNotifications(input:))
    }
}

extension ListNotificationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNotificationsInput {
        return ListNotificationsInput(
            afterTimestamp: self.afterTimestamp,
            beforeTimestamp: self.beforeTimestamp,
            domainIdentifier: self.domainIdentifier,
            maxResults: self.maxResults,
            nextToken: token,
            subjects: self.subjects,
            taskStatus: self.taskStatus,
            type: self.type
        )}
}

extension PaginatorSequence where Input == ListNotificationsInput, Output == ListNotificationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listNotificationsPaginated`
    /// to access the nested member `[DataZoneClientTypes.NotificationOutput]`
    /// - Returns: `[DataZoneClientTypes.NotificationOutput]`
    public func notifications() async throws -> [DataZoneClientTypes.NotificationOutput] {
        return try await self.asyncCompactMap { item in item.notifications }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListProjectMembershipsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectMembershipsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectMembershipsOutput`
    public func listProjectMembershipsPaginated(input: ListProjectMembershipsInput) -> ClientRuntime.PaginatorSequence<ListProjectMembershipsInput, ListProjectMembershipsOutput> {
        return ClientRuntime.PaginatorSequence<ListProjectMembershipsInput, ListProjectMembershipsOutput>(input: input, inputKey: \ListProjectMembershipsInput.nextToken, outputKey: \ListProjectMembershipsOutput.nextToken, paginationFunction: self.listProjectMemberships(input:))
    }
}

extension ListProjectMembershipsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectMembershipsInput {
        return ListProjectMembershipsInput(
            domainIdentifier: self.domainIdentifier,
            maxResults: self.maxResults,
            nextToken: token,
            projectIdentifier: self.projectIdentifier,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where Input == ListProjectMembershipsInput, Output == ListProjectMembershipsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectMembershipsPaginated`
    /// to access the nested member `[DataZoneClientTypes.ProjectMember]`
    /// - Returns: `[DataZoneClientTypes.ProjectMember]`
    public func members() async throws -> [DataZoneClientTypes.ProjectMember] {
        return try await self.asyncCompactMap { item in item.members }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListProjectsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListProjectsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListProjectsOutput`
    public func listProjectsPaginated(input: ListProjectsInput) -> ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput> {
        return ClientRuntime.PaginatorSequence<ListProjectsInput, ListProjectsOutput>(input: input, inputKey: \ListProjectsInput.nextToken, outputKey: \ListProjectsOutput.nextToken, paginationFunction: self.listProjects(input:))
    }
}

extension ListProjectsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListProjectsInput {
        return ListProjectsInput(
            domainIdentifier: self.domainIdentifier,
            groupIdentifier: self.groupIdentifier,
            maxResults: self.maxResults,
            name: self.name,
            nextToken: token,
            userIdentifier: self.userIdentifier
        )}
}

extension PaginatorSequence where Input == ListProjectsInput, Output == ListProjectsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listProjectsPaginated`
    /// to access the nested member `[DataZoneClientTypes.ProjectSummary]`
    /// - Returns: `[DataZoneClientTypes.ProjectSummary]`
    public func items() async throws -> [DataZoneClientTypes.ProjectSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListSubscriptionGrantsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSubscriptionGrantsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSubscriptionGrantsOutput`
    public func listSubscriptionGrantsPaginated(input: ListSubscriptionGrantsInput) -> ClientRuntime.PaginatorSequence<ListSubscriptionGrantsInput, ListSubscriptionGrantsOutput> {
        return ClientRuntime.PaginatorSequence<ListSubscriptionGrantsInput, ListSubscriptionGrantsOutput>(input: input, inputKey: \ListSubscriptionGrantsInput.nextToken, outputKey: \ListSubscriptionGrantsOutput.nextToken, paginationFunction: self.listSubscriptionGrants(input:))
    }
}

extension ListSubscriptionGrantsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSubscriptionGrantsInput {
        return ListSubscriptionGrantsInput(
            domainIdentifier: self.domainIdentifier,
            environmentId: self.environmentId,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            subscribedListingId: self.subscribedListingId,
            subscriptionId: self.subscriptionId,
            subscriptionTargetId: self.subscriptionTargetId
        )}
}

extension PaginatorSequence where Input == ListSubscriptionGrantsInput, Output == ListSubscriptionGrantsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSubscriptionGrantsPaginated`
    /// to access the nested member `[DataZoneClientTypes.SubscriptionGrantSummary]`
    /// - Returns: `[DataZoneClientTypes.SubscriptionGrantSummary]`
    public func items() async throws -> [DataZoneClientTypes.SubscriptionGrantSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListSubscriptionRequestsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSubscriptionRequestsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSubscriptionRequestsOutput`
    public func listSubscriptionRequestsPaginated(input: ListSubscriptionRequestsInput) -> ClientRuntime.PaginatorSequence<ListSubscriptionRequestsInput, ListSubscriptionRequestsOutput> {
        return ClientRuntime.PaginatorSequence<ListSubscriptionRequestsInput, ListSubscriptionRequestsOutput>(input: input, inputKey: \ListSubscriptionRequestsInput.nextToken, outputKey: \ListSubscriptionRequestsOutput.nextToken, paginationFunction: self.listSubscriptionRequests(input:))
    }
}

extension ListSubscriptionRequestsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSubscriptionRequestsInput {
        return ListSubscriptionRequestsInput(
            approverProjectId: self.approverProjectId,
            domainIdentifier: self.domainIdentifier,
            maxResults: self.maxResults,
            nextToken: token,
            owningProjectId: self.owningProjectId,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            status: self.status,
            subscribedListingId: self.subscribedListingId
        )}
}

extension PaginatorSequence where Input == ListSubscriptionRequestsInput, Output == ListSubscriptionRequestsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSubscriptionRequestsPaginated`
    /// to access the nested member `[DataZoneClientTypes.SubscriptionRequestSummary]`
    /// - Returns: `[DataZoneClientTypes.SubscriptionRequestSummary]`
    public func items() async throws -> [DataZoneClientTypes.SubscriptionRequestSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListSubscriptionsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSubscriptionsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSubscriptionsOutput`
    public func listSubscriptionsPaginated(input: ListSubscriptionsInput) -> ClientRuntime.PaginatorSequence<ListSubscriptionsInput, ListSubscriptionsOutput> {
        return ClientRuntime.PaginatorSequence<ListSubscriptionsInput, ListSubscriptionsOutput>(input: input, inputKey: \ListSubscriptionsInput.nextToken, outputKey: \ListSubscriptionsOutput.nextToken, paginationFunction: self.listSubscriptions(input:))
    }
}

extension ListSubscriptionsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSubscriptionsInput {
        return ListSubscriptionsInput(
            approverProjectId: self.approverProjectId,
            domainIdentifier: self.domainIdentifier,
            maxResults: self.maxResults,
            nextToken: token,
            owningProjectId: self.owningProjectId,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder,
            status: self.status,
            subscribedListingId: self.subscribedListingId,
            subscriptionRequestIdentifier: self.subscriptionRequestIdentifier
        )}
}

extension PaginatorSequence where Input == ListSubscriptionsInput, Output == ListSubscriptionsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSubscriptionsPaginated`
    /// to access the nested member `[DataZoneClientTypes.SubscriptionSummary]`
    /// - Returns: `[DataZoneClientTypes.SubscriptionSummary]`
    public func items() async throws -> [DataZoneClientTypes.SubscriptionSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[ListSubscriptionTargetsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListSubscriptionTargetsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListSubscriptionTargetsOutput`
    public func listSubscriptionTargetsPaginated(input: ListSubscriptionTargetsInput) -> ClientRuntime.PaginatorSequence<ListSubscriptionTargetsInput, ListSubscriptionTargetsOutput> {
        return ClientRuntime.PaginatorSequence<ListSubscriptionTargetsInput, ListSubscriptionTargetsOutput>(input: input, inputKey: \ListSubscriptionTargetsInput.nextToken, outputKey: \ListSubscriptionTargetsOutput.nextToken, paginationFunction: self.listSubscriptionTargets(input:))
    }
}

extension ListSubscriptionTargetsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListSubscriptionTargetsInput {
        return ListSubscriptionTargetsInput(
            domainIdentifier: self.domainIdentifier,
            environmentIdentifier: self.environmentIdentifier,
            maxResults: self.maxResults,
            nextToken: token,
            sortBy: self.sortBy,
            sortOrder: self.sortOrder
        )}
}

extension PaginatorSequence where Input == ListSubscriptionTargetsInput, Output == ListSubscriptionTargetsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listSubscriptionTargetsPaginated`
    /// to access the nested member `[DataZoneClientTypes.SubscriptionTargetSummary]`
    /// - Returns: `[DataZoneClientTypes.SubscriptionTargetSummary]`
    public func items() async throws -> [DataZoneClientTypes.SubscriptionTargetSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[SearchOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchOutput`
    public func searchPaginated(input: SearchInput) -> ClientRuntime.PaginatorSequence<SearchInput, SearchOutput> {
        return ClientRuntime.PaginatorSequence<SearchInput, SearchOutput>(input: input, inputKey: \SearchInput.nextToken, outputKey: \SearchOutput.nextToken, paginationFunction: self.search(input:))
    }
}

extension SearchInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchInput {
        return SearchInput(
            additionalAttributes: self.additionalAttributes,
            domainIdentifier: self.domainIdentifier,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            owningProjectIdentifier: self.owningProjectIdentifier,
            searchIn: self.searchIn,
            searchScope: self.searchScope,
            searchText: self.searchText,
            sort: self.sort
        )}
}

extension PaginatorSequence where Input == SearchInput, Output == SearchOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchPaginated`
    /// to access the nested member `[DataZoneClientTypes.SearchInventoryResultItem]`
    /// - Returns: `[DataZoneClientTypes.SearchInventoryResultItem]`
    public func items() async throws -> [DataZoneClientTypes.SearchInventoryResultItem] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[SearchGroupProfilesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchGroupProfilesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchGroupProfilesOutput`
    public func searchGroupProfilesPaginated(input: SearchGroupProfilesInput) -> ClientRuntime.PaginatorSequence<SearchGroupProfilesInput, SearchGroupProfilesOutput> {
        return ClientRuntime.PaginatorSequence<SearchGroupProfilesInput, SearchGroupProfilesOutput>(input: input, inputKey: \SearchGroupProfilesInput.nextToken, outputKey: \SearchGroupProfilesOutput.nextToken, paginationFunction: self.searchGroupProfiles(input:))
    }
}

extension SearchGroupProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchGroupProfilesInput {
        return SearchGroupProfilesInput(
            domainIdentifier: self.domainIdentifier,
            groupType: self.groupType,
            maxResults: self.maxResults,
            nextToken: token,
            searchText: self.searchText
        )}
}

extension PaginatorSequence where Input == SearchGroupProfilesInput, Output == SearchGroupProfilesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchGroupProfilesPaginated`
    /// to access the nested member `[DataZoneClientTypes.GroupProfileSummary]`
    /// - Returns: `[DataZoneClientTypes.GroupProfileSummary]`
    public func items() async throws -> [DataZoneClientTypes.GroupProfileSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[SearchListingsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchListingsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchListingsOutput`
    public func searchListingsPaginated(input: SearchListingsInput) -> ClientRuntime.PaginatorSequence<SearchListingsInput, SearchListingsOutput> {
        return ClientRuntime.PaginatorSequence<SearchListingsInput, SearchListingsOutput>(input: input, inputKey: \SearchListingsInput.nextToken, outputKey: \SearchListingsOutput.nextToken, paginationFunction: self.searchListings(input:))
    }
}

extension SearchListingsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchListingsInput {
        return SearchListingsInput(
            additionalAttributes: self.additionalAttributes,
            domainIdentifier: self.domainIdentifier,
            filters: self.filters,
            maxResults: self.maxResults,
            nextToken: token,
            searchIn: self.searchIn,
            searchText: self.searchText,
            sort: self.sort
        )}
}

extension PaginatorSequence where Input == SearchListingsInput, Output == SearchListingsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchListingsPaginated`
    /// to access the nested member `[DataZoneClientTypes.SearchResultItem]`
    /// - Returns: `[DataZoneClientTypes.SearchResultItem]`
    public func items() async throws -> [DataZoneClientTypes.SearchResultItem] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[SearchTypesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchTypesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchTypesOutput`
    public func searchTypesPaginated(input: SearchTypesInput) -> ClientRuntime.PaginatorSequence<SearchTypesInput, SearchTypesOutput> {
        return ClientRuntime.PaginatorSequence<SearchTypesInput, SearchTypesOutput>(input: input, inputKey: \SearchTypesInput.nextToken, outputKey: \SearchTypesOutput.nextToken, paginationFunction: self.searchTypes(input:))
    }
}

extension SearchTypesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchTypesInput {
        return SearchTypesInput(
            domainIdentifier: self.domainIdentifier,
            filters: self.filters,
            managed: self.managed,
            maxResults: self.maxResults,
            nextToken: token,
            searchIn: self.searchIn,
            searchScope: self.searchScope,
            searchText: self.searchText,
            sort: self.sort
        )}
}

extension PaginatorSequence where Input == SearchTypesInput, Output == SearchTypesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchTypesPaginated`
    /// to access the nested member `[DataZoneClientTypes.SearchTypesResultItem]`
    /// - Returns: `[DataZoneClientTypes.SearchTypesResultItem]`
    public func items() async throws -> [DataZoneClientTypes.SearchTypesResultItem] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
extension DataZoneClient {
    /// Paginate over `[SearchUserProfilesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[SearchUserProfilesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `SearchUserProfilesOutput`
    public func searchUserProfilesPaginated(input: SearchUserProfilesInput) -> ClientRuntime.PaginatorSequence<SearchUserProfilesInput, SearchUserProfilesOutput> {
        return ClientRuntime.PaginatorSequence<SearchUserProfilesInput, SearchUserProfilesOutput>(input: input, inputKey: \SearchUserProfilesInput.nextToken, outputKey: \SearchUserProfilesOutput.nextToken, paginationFunction: self.searchUserProfiles(input:))
    }
}

extension SearchUserProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> SearchUserProfilesInput {
        return SearchUserProfilesInput(
            domainIdentifier: self.domainIdentifier,
            maxResults: self.maxResults,
            nextToken: token,
            searchText: self.searchText,
            userType: self.userType
        )}
}

extension PaginatorSequence where Input == SearchUserProfilesInput, Output == SearchUserProfilesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `searchUserProfilesPaginated`
    /// to access the nested member `[DataZoneClientTypes.UserProfileSummary]`
    /// - Returns: `[DataZoneClientTypes.UserProfileSummary]`
    public func items() async throws -> [DataZoneClientTypes.UserProfileSummary] {
        return try await self.asyncCompactMap { item in item.items }
    }
}
