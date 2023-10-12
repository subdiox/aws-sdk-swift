// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

extension PricingClient {
    /// Paginate over `[DescribeServicesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[DescribeServicesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `DescribeServicesOutput`
    public func describeServicesPaginated(input: DescribeServicesInput) -> ClientRuntime.PaginatorSequence<DescribeServicesInput, DescribeServicesOutput> {
        return ClientRuntime.PaginatorSequence<DescribeServicesInput, DescribeServicesOutput>(input: input, inputKey: \DescribeServicesInput.nextToken, outputKey: \DescribeServicesOutput.nextToken, paginationFunction: self.describeServices(input:))
    }
}

extension DescribeServicesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> DescribeServicesInput {
        return DescribeServicesInput(
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )}
}

extension PaginatorSequence where Input == DescribeServicesInput, Output == DescribeServicesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `describeServicesPaginated`
    /// to access the nested member `[PricingClientTypes.Service]`
    /// - Returns: `[PricingClientTypes.Service]`
    public func services() async throws -> [PricingClientTypes.Service] {
        return try await self.asyncCompactMap { item in item.services }
    }
}
extension PricingClient {
    /// Paginate over `[GetAttributeValuesOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetAttributeValuesInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetAttributeValuesOutput`
    public func getAttributeValuesPaginated(input: GetAttributeValuesInput) -> ClientRuntime.PaginatorSequence<GetAttributeValuesInput, GetAttributeValuesOutput> {
        return ClientRuntime.PaginatorSequence<GetAttributeValuesInput, GetAttributeValuesOutput>(input: input, inputKey: \GetAttributeValuesInput.nextToken, outputKey: \GetAttributeValuesOutput.nextToken, paginationFunction: self.getAttributeValues(input:))
    }
}

extension GetAttributeValuesInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetAttributeValuesInput {
        return GetAttributeValuesInput(
            attributeName: self.attributeName,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )}
}

extension PaginatorSequence where Input == GetAttributeValuesInput, Output == GetAttributeValuesOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getAttributeValuesPaginated`
    /// to access the nested member `[PricingClientTypes.AttributeValue]`
    /// - Returns: `[PricingClientTypes.AttributeValue]`
    public func attributeValues() async throws -> [PricingClientTypes.AttributeValue] {
        return try await self.asyncCompactMap { item in item.attributeValues }
    }
}
extension PricingClient {
    /// Paginate over `[GetProductsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[GetProductsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `GetProductsOutput`
    public func getProductsPaginated(input: GetProductsInput) -> ClientRuntime.PaginatorSequence<GetProductsInput, GetProductsOutput> {
        return ClientRuntime.PaginatorSequence<GetProductsInput, GetProductsOutput>(input: input, inputKey: \GetProductsInput.nextToken, outputKey: \GetProductsOutput.nextToken, paginationFunction: self.getProducts(input:))
    }
}

extension GetProductsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> GetProductsInput {
        return GetProductsInput(
            filters: self.filters,
            formatVersion: self.formatVersion,
            maxResults: self.maxResults,
            nextToken: token,
            serviceCode: self.serviceCode
        )}
}

extension PaginatorSequence where Input == GetProductsInput, Output == GetProductsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `getProductsPaginated`
    /// to access the nested member `[Swift.String]`
    /// - Returns: `[Swift.String]`
    public func priceList() async throws -> [Swift.String] {
        return try await self.asyncCompactMap { item in item.priceList }
    }
}
extension PricingClient {
    /// Paginate over `[ListPriceListsOutput]` results.
    ///
    /// When this operation is called, an `AsyncSequence` is created. AsyncSequences are lazy so no service
    /// calls are made until the sequence is iterated over. This also means there is no guarantee that the request is valid
    /// until then. If there are errors in your request, you will see the failures only after you start iterating.
    /// - Parameters:
    ///     - input: A `[ListPriceListsInput]` to start pagination
    /// - Returns: An `AsyncSequence` that can iterate over `ListPriceListsOutput`
    public func listPriceListsPaginated(input: ListPriceListsInput) -> ClientRuntime.PaginatorSequence<ListPriceListsInput, ListPriceListsOutput> {
        return ClientRuntime.PaginatorSequence<ListPriceListsInput, ListPriceListsOutput>(input: input, inputKey: \ListPriceListsInput.nextToken, outputKey: \ListPriceListsOutput.nextToken, paginationFunction: self.listPriceLists(input:))
    }
}

extension ListPriceListsInput: ClientRuntime.PaginateToken {
    public func usingPaginationToken(_ token: Swift.String) -> ListPriceListsInput {
        return ListPriceListsInput(
            currencyCode: self.currencyCode,
            effectiveDate: self.effectiveDate,
            maxResults: self.maxResults,
            nextToken: token,
            regionCode: self.regionCode,
            serviceCode: self.serviceCode
        )}
}

extension PaginatorSequence where Input == ListPriceListsInput, Output == ListPriceListsOutput {
    /// This paginator transforms the `AsyncSequence` returned by `listPriceListsPaginated`
    /// to access the nested member `[PricingClientTypes.PriceList]`
    /// - Returns: `[PricingClientTypes.PriceList]`
    public func priceLists() async throws -> [PricingClientTypes.PriceList] {
        return try await self.asyncCompactMap { item in item.priceLists }
    }
}
