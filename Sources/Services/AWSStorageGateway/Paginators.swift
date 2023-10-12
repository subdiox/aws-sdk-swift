// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension StorageGatewayClient {
    /// Paginate over `[DescribeTapeArchivesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTapeArchivesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTapeArchivesOutput`
    public func describeTapeArchivesPaginated(input: DescribeTapeArchivesInput) -> ClientRuntime.PaginatorSequence<DescribeTapeArchivesInput, DescribeTapeArchivesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTapeArchivesInput, DescribeTapeArchivesOutput>(input: input, inputKey: \DescribeTapeArchivesInput.marker, outputKey: \DescribeTapeArchivesOutput.marker, paginationFunction: self.describeTapeArchives(input:))
    }
}

extension DescribeTapeArchivesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTapeArchivesInput {
        return DescribeTapeArchivesInput(
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )}
}

extension PaginatorSequence where Input == DescribeTapeArchivesInput, Output == DescribeTapeArchivesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeTapeArchivesPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.TapeArchive]`
    /// - Returns: `[StorageGatewayClientTypes.TapeArchive]`
    public func tapeArchives() async throws -> [StorageGatewayClientTypes.TapeArchive] {
        return try await self.asyncCompactMap { item in item.tapeArchives }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[DescribeTapeRecoveryPointsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTapeRecoveryPointsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTapeRecoveryPointsOutput`
    public func describeTapeRecoveryPointsPaginated(input: DescribeTapeRecoveryPointsInput) -> ClientRuntime.PaginatorSequence<DescribeTapeRecoveryPointsInput, DescribeTapeRecoveryPointsOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTapeRecoveryPointsInput, DescribeTapeRecoveryPointsOutput>(input: input, inputKey: \DescribeTapeRecoveryPointsInput.marker, outputKey: \DescribeTapeRecoveryPointsOutput.marker, paginationFunction: self.describeTapeRecoveryPoints(input:))
    }
}

extension DescribeTapeRecoveryPointsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTapeRecoveryPointsInput {
        return DescribeTapeRecoveryPointsInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where Input == DescribeTapeRecoveryPointsInput, Output == DescribeTapeRecoveryPointsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeTapeRecoveryPointsPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.TapeRecoveryPointInfo]`
    /// - Returns: `[StorageGatewayClientTypes.TapeRecoveryPointInfo]`
    public func tapeRecoveryPointInfos() async throws -> [StorageGatewayClientTypes.TapeRecoveryPointInfo] {
        return try await self.asyncCompactMap { item in item.tapeRecoveryPointInfos }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[DescribeTapesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeTapesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeTapesOutput`
    public func describeTapesPaginated(input: DescribeTapesInput) -> ClientRuntime.PaginatorSequence<DescribeTapesInput, DescribeTapesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeTapesInput, DescribeTapesOutput>(input: input, inputKey: \DescribeTapesInput.marker, outputKey: \DescribeTapesOutput.marker, paginationFunction: self.describeTapes(input:))
    }
}

extension DescribeTapesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeTapesInput {
        return DescribeTapesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )}
}

extension PaginatorSequence where Input == DescribeTapesInput, Output == DescribeTapesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeTapesPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.Tape]`
    /// - Returns: `[StorageGatewayClientTypes.Tape]`
    public func tapes() async throws -> [StorageGatewayClientTypes.Tape] {
        return try await self.asyncCompactMap { item in item.tapes }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[DescribeVTLDevicesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeVTLDevicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeVTLDevicesOutput`
    public func describeVTLDevicesPaginated(input: DescribeVTLDevicesInput) -> ClientRuntime.PaginatorSequence<DescribeVTLDevicesInput, DescribeVTLDevicesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeVTLDevicesInput, DescribeVTLDevicesOutput>(input: input, inputKey: \DescribeVTLDevicesInput.marker, outputKey: \DescribeVTLDevicesOutput.marker, paginationFunction: self.describeVTLDevices(input:))
    }
}

extension DescribeVTLDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeVTLDevicesInput {
        return DescribeVTLDevicesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token,
            vtlDeviceARNs: self.vtlDeviceARNs
        )}
}

extension PaginatorSequence where Input == DescribeVTLDevicesInput, Output == DescribeVTLDevicesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeVTLDevicesPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.VTLDevice]`
    /// - Returns: `[StorageGatewayClientTypes.VTLDevice]`
    public func vtlDevices() async throws -> [StorageGatewayClientTypes.VTLDevice] {
        return try await self.asyncCompactMap { item in item.vtlDevices }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[ListFileSharesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFileSharesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFileSharesOutput`
    public func listFileSharesPaginated(input: ListFileSharesInput) -> ClientRuntime.PaginatorSequence<ListFileSharesInput, ListFileSharesOutput> {
        return ClientRuntime.PaginatorSequence<ListFileSharesInput, ListFileSharesOutput>(input: input, inputKey: \ListFileSharesInput.marker, outputKey: \ListFileSharesOutput.nextMarker, paginationFunction: self.listFileShares(input:))
    }
}

extension ListFileSharesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFileSharesInput {
        return ListFileSharesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where Input == ListFileSharesInput, Output == ListFileSharesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFileSharesPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.FileShareInfo]`
    /// - Returns: `[StorageGatewayClientTypes.FileShareInfo]`
    public func fileShareInfoList() async throws -> [StorageGatewayClientTypes.FileShareInfo] {
        return try await self.asyncCompactMap { item in item.fileShareInfoList }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[ListFileSystemAssociationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFileSystemAssociationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFileSystemAssociationsOutput`
    public func listFileSystemAssociationsPaginated(input: ListFileSystemAssociationsInput) -> ClientRuntime.PaginatorSequence<ListFileSystemAssociationsInput, ListFileSystemAssociationsOutput> {
        return ClientRuntime.PaginatorSequence<ListFileSystemAssociationsInput, ListFileSystemAssociationsOutput>(input: input, inputKey: \ListFileSystemAssociationsInput.marker, outputKey: \ListFileSystemAssociationsOutput.nextMarker, paginationFunction: self.listFileSystemAssociations(input:))
    }
}

extension ListFileSystemAssociationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFileSystemAssociationsInput {
        return ListFileSystemAssociationsInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where Input == ListFileSystemAssociationsInput, Output == ListFileSystemAssociationsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listFileSystemAssociationsPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.FileSystemAssociationSummary]`
    /// - Returns: `[StorageGatewayClientTypes.FileSystemAssociationSummary]`
    public func fileSystemAssociationSummaryList() async throws -> [StorageGatewayClientTypes.FileSystemAssociationSummary] {
        return try await self.asyncCompactMap { item in item.fileSystemAssociationSummaryList }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[ListGatewaysOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListGatewaysInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListGatewaysOutput`
    public func listGatewaysPaginated(input: ListGatewaysInput) -> ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutput> {
        return ClientRuntime.PaginatorSequence<ListGatewaysInput, ListGatewaysOutput>(input: input, inputKey: \ListGatewaysInput.marker, outputKey: \ListGatewaysOutput.marker, paginationFunction: self.listGateways(input:))
    }
}

extension ListGatewaysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListGatewaysInput {
        return ListGatewaysInput(
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where Input == ListGatewaysInput, Output == ListGatewaysOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listGatewaysPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.GatewayInfo]`
    /// - Returns: `[StorageGatewayClientTypes.GatewayInfo]`
    public func gateways() async throws -> [StorageGatewayClientTypes.GatewayInfo] {
        return try await self.asyncCompactMap { item in item.gateways }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[ListTagsForResourceOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTagsForResourceInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTagsForResourceOutput`
    public func listTagsForResourcePaginated(input: ListTagsForResourceInput) -> ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput> {
        return ClientRuntime.PaginatorSequence<ListTagsForResourceInput, ListTagsForResourceOutput>(input: input, inputKey: \ListTagsForResourceInput.marker, outputKey: \ListTagsForResourceOutput.marker, paginationFunction: self.listTagsForResource(input:))
    }
}

extension ListTagsForResourceInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTagsForResourceInput {
        return ListTagsForResourceInput(
            limit: self.limit,
            marker: token,
            resourceARN: self.resourceARN
        )}
}

extension PaginatorSequence where Input == ListTagsForResourceInput, Output == ListTagsForResourceOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTagsForResourcePaginated`
    /// to access the nested member `[StorageGatewayClientTypes.Tag]`
    /// - Returns: `[StorageGatewayClientTypes.Tag]`
    public func tags() async throws -> [StorageGatewayClientTypes.Tag] {
        return try await self.asyncCompactMap { item in item.tags }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[ListTapePoolsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTapePoolsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTapePoolsOutput`
    public func listTapePoolsPaginated(input: ListTapePoolsInput) -> ClientRuntime.PaginatorSequence<ListTapePoolsInput, ListTapePoolsOutput> {
        return ClientRuntime.PaginatorSequence<ListTapePoolsInput, ListTapePoolsOutput>(input: input, inputKey: \ListTapePoolsInput.marker, outputKey: \ListTapePoolsOutput.marker, paginationFunction: self.listTapePools(input:))
    }
}

extension ListTapePoolsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTapePoolsInput {
        return ListTapePoolsInput(
            limit: self.limit,
            marker: token,
            poolARNs: self.poolARNs
        )}
}

extension PaginatorSequence where Input == ListTapePoolsInput, Output == ListTapePoolsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTapePoolsPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.PoolInfo]`
    /// - Returns: `[StorageGatewayClientTypes.PoolInfo]`
    public func poolInfos() async throws -> [StorageGatewayClientTypes.PoolInfo] {
        return try await self.asyncCompactMap { item in item.poolInfos }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[ListTapesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListTapesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListTapesOutput`
    public func listTapesPaginated(input: ListTapesInput) -> ClientRuntime.PaginatorSequence<ListTapesInput, ListTapesOutput> {
        return ClientRuntime.PaginatorSequence<ListTapesInput, ListTapesOutput>(input: input, inputKey: \ListTapesInput.marker, outputKey: \ListTapesOutput.marker, paginationFunction: self.listTapes(input:))
    }
}

extension ListTapesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListTapesInput {
        return ListTapesInput(
            limit: self.limit,
            marker: token,
            tapeARNs: self.tapeARNs
        )}
}

extension PaginatorSequence where Input == ListTapesInput, Output == ListTapesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listTapesPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.TapeInfo]`
    /// - Returns: `[StorageGatewayClientTypes.TapeInfo]`
    public func tapeInfos() async throws -> [StorageGatewayClientTypes.TapeInfo] {
        return try await self.asyncCompactMap { item in item.tapeInfos }
    }
}
extension StorageGatewayClient {
    /// Paginate over `[ListVolumesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListVolumesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListVolumesOutput`
    public func listVolumesPaginated(input: ListVolumesInput) -> ClientRuntime.PaginatorSequence<ListVolumesInput, ListVolumesOutput> {
        return ClientRuntime.PaginatorSequence<ListVolumesInput, ListVolumesOutput>(input: input, inputKey: \ListVolumesInput.marker, outputKey: \ListVolumesOutput.marker, paginationFunction: self.listVolumes(input:))
    }
}

extension ListVolumesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListVolumesInput {
        return ListVolumesInput(
            gatewayARN: self.gatewayARN,
            limit: self.limit,
            marker: token
        )}
}

extension PaginatorSequence where Input == ListVolumesInput, Output == ListVolumesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listVolumesPaginated`
    /// to access the nested member `[StorageGatewayClientTypes.VolumeInfo]`
    /// - Returns: `[StorageGatewayClientTypes.VolumeInfo]`
    public func volumeInfos() async throws -> [StorageGatewayClientTypes.VolumeInfo] {
        return try await self.asyncCompactMap { item in item.volumeInfos }
    }
}
