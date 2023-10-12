// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension IoTWirelessClient {
    /// Paginate over `[ListDestinationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDestinationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDestinationsOutput`
    public func listDestinationsPaginated(input: ListDestinationsInput) -> ClientRuntime.PaginatorSequence<ListDestinationsInput, ListDestinationsOutput> {
        return ClientRuntime.PaginatorSequence<ListDestinationsInput, ListDestinationsOutput>(input: input, inputKey: \ListDestinationsInput.nextToken, outputKey: \ListDestinationsOutput.nextToken, paginationFunction: self.listDestinations(input:))
    }
}

extension ListDestinationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDestinationsInput {
        return ListDestinationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListDeviceProfilesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListDeviceProfilesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListDeviceProfilesOutput`
    public func listDeviceProfilesPaginated(input: ListDeviceProfilesInput) -> ClientRuntime.PaginatorSequence<ListDeviceProfilesInput, ListDeviceProfilesOutput> {
        return ClientRuntime.PaginatorSequence<ListDeviceProfilesInput, ListDeviceProfilesOutput>(input: input, inputKey: \ListDeviceProfilesInput.nextToken, outputKey: \ListDeviceProfilesOutput.nextToken, paginationFunction: self.listDeviceProfiles(input:))
    }
}

extension ListDeviceProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListDeviceProfilesInput {
        return ListDeviceProfilesInput(
            deviceProfileType: self.deviceProfileType,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListFuotaTasksOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListFuotaTasksInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListFuotaTasksOutput`
    public func listFuotaTasksPaginated(input: ListFuotaTasksInput) -> ClientRuntime.PaginatorSequence<ListFuotaTasksInput, ListFuotaTasksOutput> {
        return ClientRuntime.PaginatorSequence<ListFuotaTasksInput, ListFuotaTasksOutput>(input: input, inputKey: \ListFuotaTasksInput.nextToken, outputKey: \ListFuotaTasksOutput.nextToken, paginationFunction: self.listFuotaTasks(input:))
    }
}

extension ListFuotaTasksInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListFuotaTasksInput {
        return ListFuotaTasksInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListMulticastGroupsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMulticastGroupsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMulticastGroupsOutput`
    public func listMulticastGroupsPaginated(input: ListMulticastGroupsInput) -> ClientRuntime.PaginatorSequence<ListMulticastGroupsInput, ListMulticastGroupsOutput> {
        return ClientRuntime.PaginatorSequence<ListMulticastGroupsInput, ListMulticastGroupsOutput>(input: input, inputKey: \ListMulticastGroupsInput.nextToken, outputKey: \ListMulticastGroupsOutput.nextToken, paginationFunction: self.listMulticastGroups(input:))
    }
}

extension ListMulticastGroupsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMulticastGroupsInput {
        return ListMulticastGroupsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListMulticastGroupsByFuotaTaskOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListMulticastGroupsByFuotaTaskInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListMulticastGroupsByFuotaTaskOutput`
    public func listMulticastGroupsByFuotaTaskPaginated(input: ListMulticastGroupsByFuotaTaskInput) -> ClientRuntime.PaginatorSequence<ListMulticastGroupsByFuotaTaskInput, ListMulticastGroupsByFuotaTaskOutput> {
        return ClientRuntime.PaginatorSequence<ListMulticastGroupsByFuotaTaskInput, ListMulticastGroupsByFuotaTaskOutput>(input: input, inputKey: \ListMulticastGroupsByFuotaTaskInput.nextToken, outputKey: \ListMulticastGroupsByFuotaTaskOutput.nextToken, paginationFunction: self.listMulticastGroupsByFuotaTask(input:))
    }
}

extension ListMulticastGroupsByFuotaTaskInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListMulticastGroupsByFuotaTaskInput {
        return ListMulticastGroupsByFuotaTaskInput(
            id: self.id,
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListNetworkAnalyzerConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListNetworkAnalyzerConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListNetworkAnalyzerConfigurationsOutput`
    public func listNetworkAnalyzerConfigurationsPaginated(input: ListNetworkAnalyzerConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListNetworkAnalyzerConfigurationsInput, ListNetworkAnalyzerConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListNetworkAnalyzerConfigurationsInput, ListNetworkAnalyzerConfigurationsOutput>(input: input, inputKey: \ListNetworkAnalyzerConfigurationsInput.nextToken, outputKey: \ListNetworkAnalyzerConfigurationsOutput.nextToken, paginationFunction: self.listNetworkAnalyzerConfigurations(input:))
    }
}

extension ListNetworkAnalyzerConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListNetworkAnalyzerConfigurationsInput {
        return ListNetworkAnalyzerConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListPositionConfigurationsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPositionConfigurationsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPositionConfigurationsOutput`
    public func listPositionConfigurationsPaginated(input: ListPositionConfigurationsInput) -> ClientRuntime.PaginatorSequence<ListPositionConfigurationsInput, ListPositionConfigurationsOutput> {
        return ClientRuntime.PaginatorSequence<ListPositionConfigurationsInput, ListPositionConfigurationsOutput>(input: input, inputKey: \ListPositionConfigurationsInput.nextToken, outputKey: \ListPositionConfigurationsOutput.nextToken, paginationFunction: self.listPositionConfigurations(input:))
    }
}

extension ListPositionConfigurationsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPositionConfigurationsInput {
        return ListPositionConfigurationsInput(
            maxResults: self.maxResults,
            nextToken: token,
            resourceType: self.resourceType
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListQueuedMessagesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListQueuedMessagesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListQueuedMessagesOutput`
    public func listQueuedMessagesPaginated(input: ListQueuedMessagesInput) -> ClientRuntime.PaginatorSequence<ListQueuedMessagesInput, ListQueuedMessagesOutput> {
        return ClientRuntime.PaginatorSequence<ListQueuedMessagesInput, ListQueuedMessagesOutput>(input: input, inputKey: \ListQueuedMessagesInput.nextToken, outputKey: \ListQueuedMessagesOutput.nextToken, paginationFunction: self.listQueuedMessages(input:))
    }
}

extension ListQueuedMessagesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListQueuedMessagesInput {
        return ListQueuedMessagesInput(
            id: self.id,
            maxResults: self.maxResults,
            nextToken: token,
            wirelessDeviceType: self.wirelessDeviceType
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListServiceProfilesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListServiceProfilesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListServiceProfilesOutput`
    public func listServiceProfilesPaginated(input: ListServiceProfilesInput) -> ClientRuntime.PaginatorSequence<ListServiceProfilesInput, ListServiceProfilesOutput> {
        return ClientRuntime.PaginatorSequence<ListServiceProfilesInput, ListServiceProfilesOutput>(input: input, inputKey: \ListServiceProfilesInput.nextToken, outputKey: \ListServiceProfilesOutput.nextToken, paginationFunction: self.listServiceProfiles(input:))
    }
}

extension ListServiceProfilesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListServiceProfilesInput {
        return ListServiceProfilesInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListWirelessDevicesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWirelessDevicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWirelessDevicesOutput`
    public func listWirelessDevicesPaginated(input: ListWirelessDevicesInput) -> ClientRuntime.PaginatorSequence<ListWirelessDevicesInput, ListWirelessDevicesOutput> {
        return ClientRuntime.PaginatorSequence<ListWirelessDevicesInput, ListWirelessDevicesOutput>(input: input, inputKey: \ListWirelessDevicesInput.nextToken, outputKey: \ListWirelessDevicesOutput.nextToken, paginationFunction: self.listWirelessDevices(input:))
    }
}

extension ListWirelessDevicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWirelessDevicesInput {
        return ListWirelessDevicesInput(
            destinationName: self.destinationName,
            deviceProfileId: self.deviceProfileId,
            fuotaTaskId: self.fuotaTaskId,
            maxResults: self.maxResults,
            multicastGroupId: self.multicastGroupId,
            nextToken: token,
            serviceProfileId: self.serviceProfileId,
            wirelessDeviceType: self.wirelessDeviceType
        )}
}
extension IoTWirelessClient {
    /// Paginate over `[ListWirelessGatewaysOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListWirelessGatewaysInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListWirelessGatewaysOutput`
    public func listWirelessGatewaysPaginated(input: ListWirelessGatewaysInput) -> ClientRuntime.PaginatorSequence<ListWirelessGatewaysInput, ListWirelessGatewaysOutput> {
        return ClientRuntime.PaginatorSequence<ListWirelessGatewaysInput, ListWirelessGatewaysOutput>(input: input, inputKey: \ListWirelessGatewaysInput.nextToken, outputKey: \ListWirelessGatewaysOutput.nextToken, paginationFunction: self.listWirelessGateways(input:))
    }
}

extension ListWirelessGatewaysInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListWirelessGatewaysInput {
        return ListWirelessGatewaysInput(
            maxResults: self.maxResults,
            nextToken: token
        )}
}
