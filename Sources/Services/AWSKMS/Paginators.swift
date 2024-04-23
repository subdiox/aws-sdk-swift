// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension KMSClient {
    /// Paginate over `[DescribeCustomKeyStoresOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeCustomKeyStoresInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeCustomKeyStoresOutput`
    public func describeCustomKeyStoresPaginated(input: DescribeCustomKeyStoresInput) -> ClientRuntime.PaginatorSequence<DescribeCustomKeyStoresInput, DescribeCustomKeyStoresOutput> {
        return ClientRuntime.PaginatorSequence<DescribeCustomKeyStoresInput, DescribeCustomKeyStoresOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.describeCustomKeyStores(input:))
    }
}

extension DescribeCustomKeyStoresInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeCustomKeyStoresInput {
        return DescribeCustomKeyStoresInput(
            customKeyStoreId: self.customKeyStoreId,
            customKeyStoreName: self.customKeyStoreName,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == DescribeCustomKeyStoresInput, OperationStackOutput == DescribeCustomKeyStoresOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeCustomKeyStoresPaginated`
    /// to access the nested member `[KMSClientTypes.CustomKeyStoresListEntry]`
    /// - Returns: `[KMSClientTypes.CustomKeyStoresListEntry]`
    public func customKeyStores() async throws -> [KMSClientTypes.CustomKeyStoresListEntry] {
        return try await self.asyncCompactMap { item in item.customKeyStores }
    }
}
extension KMSClient {
    /// Paginate over `[ListAliasesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListAliasesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListAliasesOutput`
    public func listAliasesPaginated(input: ListAliasesInput) -> ClientRuntime.PaginatorSequence<ListAliasesInput, ListAliasesOutput> {
        return ClientRuntime.PaginatorSequence<ListAliasesInput, ListAliasesOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.listAliases(input:))
    }
}

extension ListAliasesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListAliasesInput {
        return ListAliasesInput(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListAliasesInput, OperationStackOutput == ListAliasesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listAliasesPaginated`
    /// to access the nested member `[KMSClientTypes.AliasListEntry]`
    /// - Returns: `[KMSClientTypes.AliasListEntry]`
    public func aliases() async throws -> [KMSClientTypes.AliasListEntry] {
        return try await self.asyncCompactMap { item in item.aliases }
    }
}
extension KMSClient {
    /// Paginate over `[ListGrantsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGrantsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGrantsOutput`
    public func listGrantsPaginated(input: ListGrantsInput) -> ClientRuntime.PaginatorSequence<ListGrantsInput, ListGrantsOutput> {
        return ClientRuntime.PaginatorSequence<ListGrantsInput, ListGrantsOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.listGrants(input:))
    }
}

extension ListGrantsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGrantsInput {
        return ListGrantsInput(
            grantId: self.grantId,
            granteePrincipal: self.granteePrincipal,
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListGrantsInput, OperationStackOutput == ListGrantsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listGrantsPaginated`
    /// to access the nested member `[KMSClientTypes.GrantListEntry]`
    /// - Returns: `[KMSClientTypes.GrantListEntry]`
    public func grants() async throws -> [KMSClientTypes.GrantListEntry] {
        return try await self.asyncCompactMap { item in item.grants }
    }
}
extension KMSClient {
    /// Paginate over `[ListKeyPoliciesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKeyPoliciesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKeyPoliciesOutput`
    public func listKeyPoliciesPaginated(input: ListKeyPoliciesInput) -> ClientRuntime.PaginatorSequence<ListKeyPoliciesInput, ListKeyPoliciesOutput> {
        return ClientRuntime.PaginatorSequence<ListKeyPoliciesInput, ListKeyPoliciesOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.listKeyPolicies(input:))
    }
}

extension ListKeyPoliciesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKeyPoliciesInput {
        return ListKeyPoliciesInput(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListKeyPoliciesInput, OperationStackOutput == ListKeyPoliciesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listKeyPoliciesPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func policyNames() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.policyNames }
    }
}
extension KMSClient {
    /// Paginate over `[ListKeyRotationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKeyRotationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKeyRotationsOutput`
    public func listKeyRotationsPaginated(input: ListKeyRotationsInput) -> ClientRuntime.PaginatorSequence<ListKeyRotationsInput, ListKeyRotationsOutput> {
        return ClientRuntime.PaginatorSequence<ListKeyRotationsInput, ListKeyRotationsOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.listKeyRotations(input:))
    }
}

extension ListKeyRotationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKeyRotationsInput {
        return ListKeyRotationsInput(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListKeyRotationsInput, OperationStackOutput == ListKeyRotationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listKeyRotationsPaginated`
    /// to access the nested member `[KMSClientTypes.RotationsListEntry]`
    /// - Returns: `[KMSClientTypes.RotationsListEntry]`
    public func rotations() async throws -> [KMSClientTypes.RotationsListEntry] {
        return try await self.asyncCompactMap { item in item.rotations }
    }
}
extension KMSClient {
    /// Paginate over `[ListKeysOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListKeysInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListKeysOutput`
    public func listKeysPaginated(input: ListKeysInput) -> ClientRuntime.PaginatorSequence<ListKeysInput, ListKeysOutput> {
        return ClientRuntime.PaginatorSequence<ListKeysInput, ListKeysOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.listKeys(input:))
    }
}

extension ListKeysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListKeysInput {
        return ListKeysInput(
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListKeysInput, OperationStackOutput == ListKeysOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listKeysPaginated`
    /// to access the nested member `[KMSClientTypes.KeyListEntry]`
    /// - Returns: `[KMSClientTypes.KeyListEntry]`
    public func keys() async throws -> [KMSClientTypes.KeyListEntry] {
        return try await self.asyncCompactMap { item in item.keys }
    }
}
extension KMSClient {
    /// Paginate over `[ListResourceTagsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListResourceTagsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListResourceTagsOutput`
    public func listResourceTagsPaginated(input: ListResourceTagsInput) -> ClientRuntime.PaginatorSequence<ListResourceTagsInput, ListResourceTagsOutput> {
        return ClientRuntime.PaginatorSequence<ListResourceTagsInput, ListResourceTagsOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.listResourceTags(input:))
    }
}

extension ListResourceTagsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListResourceTagsInput {
        return ListResourceTagsInput(
            keyId: self.keyId,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where OperationStackInput == ListResourceTagsInput, OperationStackOutput == ListResourceTagsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listResourceTagsPaginated`
    /// to access the nested member `[KMSClientTypes.Tag]`
    /// - Returns: `[KMSClientTypes.Tag]`
    public func tags() async throws -> [KMSClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
extension KMSClient {
    /// Paginate over `[ListRetirableGrantsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListRetirableGrantsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListRetirableGrantsOutput`
    public func listRetirableGrantsPaginated(input: ListRetirableGrantsInput) -> ClientRuntime.PaginatorSequence<ListRetirableGrantsInput, ListRetirableGrantsOutput> {
        return ClientRuntime.PaginatorSequence<ListRetirableGrantsInput, ListRetirableGrantsOutput>(input: input, inputKey: \.marker, outputKey: \.nextMarker, paginationFunction: self.listRetirableGrants(input:))
    }
}

extension ListRetirableGrantsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListRetirableGrantsInput {
        return ListRetirableGrantsInput(
            limit: self.limit,
            marker: token,
            retiringPrincipal: self.retiringPrincipal
        )}
}

extension PaginatorSequence where OperationStackInput == ListRetirableGrantsInput, OperationStackOutput == ListRetirableGrantsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listRetirableGrantsPaginated`
    /// to access the nested member `[KMSClientTypes.GrantListEntry]`
    /// - Returns: `[KMSClientTypes.GrantListEntry]`
    public func grants() async throws -> [KMSClientTypes.GrantListEntry] {
        return try await self.asyncCompactMap { item in item.grants }
    }
}
