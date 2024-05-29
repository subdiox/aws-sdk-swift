// Code generated by smithy-swift-codegen. DO NOT EDIT!
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import AWSClientRuntime
import ClientRuntime
import SmithyJSON
import SmithyReadWrite

extension ForecastqueryClientTypes.DataPoint {

    static func read(from reader: SmithyJSON.Reader) throws -> ForecastqueryClientTypes.DataPoint {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ForecastqueryClientTypes.DataPoint()
        value.timestamp = try reader["Timestamp"].readIfPresent()
        value.value = try reader["Value"].readIfPresent()
        return value
    }
}

extension ForecastqueryClientTypes {
    /// The forecast value for a specific date. Part of the [Forecast] object.
    public struct DataPoint {
        /// The timestamp of the specific forecast.
        public var timestamp: Swift.String?
        /// The forecast value.
        public var value: Swift.Double?

        public init(
            timestamp: Swift.String? = nil,
            value: Swift.Double? = nil
        )
        {
            self.timestamp = timestamp
            self.value = value
        }
    }

}

extension ForecastqueryClientTypes.Forecast {

    static func read(from reader: SmithyJSON.Reader) throws -> ForecastqueryClientTypes.Forecast {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ForecastqueryClientTypes.Forecast()
        value.predictions = try reader["Predictions"].readMapIfPresent(valueReadingClosure: listReadingClosure(memberReadingClosure: ForecastqueryClientTypes.DataPoint.read(from:), memberNodeInfo: "member", isFlattened: false), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        return value
    }
}

extension ForecastqueryClientTypes {
    /// Provides information about a forecast. Returned as part of the [QueryForecast] response.
    public struct Forecast {
        /// The forecast. The string of the string-to-array map is one of the following values:
        ///
        /// * p10
        ///
        /// * p50
        ///
        /// * p90
        ///
        ///
        /// The default setting is ["0.1", "0.5", "0.9"]. Use the optional ForecastTypes parameter of the [CreateForecast](https://docs.aws.amazon.com/forecast/latest/dg/API_CreateForecast.html) operation to change the values. The values will vary depending on how this is set, with a minimum of 1 and a maximum of 5.
        public var predictions: [Swift.String:[ForecastqueryClientTypes.DataPoint]]?

        public init(
            predictions: [Swift.String:[ForecastqueryClientTypes.DataPoint]]? = nil
        )
        {
            self.predictions = predictions
        }
    }

}

public enum ForecastqueryClientTypes {}

extension InvalidInputException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> InvalidInputException {
        let reader = baseError.errorBodyReader
        var value = InvalidInputException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The value is invalid or is too long.
public struct InvalidInputException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidInputException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension InvalidNextTokenException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> InvalidNextTokenException {
        let reader = baseError.errorBodyReader
        var value = InvalidNextTokenException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The token is not valid. Tokens expire after 24 hours.
public struct InvalidNextTokenException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InvalidNextTokenException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension LimitExceededException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> LimitExceededException {
        let reader = baseError.errorBodyReader
        var value = LimitExceededException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The limit on the number of requests per second has been exceeded.
public struct LimitExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "LimitExceededException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension QueryForecastInput {

    static func urlPathProvider(_ value: QueryForecastInput) -> Swift.String? {
        return "/"
    }
}

extension QueryForecastInput {

    static func write(value: QueryForecastInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["EndDate"].write(value.endDate)
        try writer["Filters"].writeMap(value.filters, valueWritingClosure: Swift.String.write(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["ForecastArn"].write(value.forecastArn)
        try writer["NextToken"].write(value.nextToken)
        try writer["StartDate"].write(value.startDate)
    }
}

public struct QueryForecastInput {
    /// The end date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T20:00:00.
    public var endDate: Swift.String?
    /// The filtering criteria to apply when retrieving the forecast. For example, to get the forecast for client_21 in the electricity usage dataset, specify the following: {"item_id" : "client_21"} To get the full forecast, use the [CreateForecastExportJob](https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateForecastExportJob.html) operation.
    /// This member is required.
    public var filters: [Swift.String:Swift.String]?
    /// The Amazon Resource Name (ARN) of the forecast to query.
    /// This member is required.
    public var forecastArn: Swift.String?
    /// If the result of the previous request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.
    public var nextToken: Swift.String?
    /// The start date for the forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T08:00:00.
    public var startDate: Swift.String?

    public init(
        endDate: Swift.String? = nil,
        filters: [Swift.String:Swift.String]? = nil,
        forecastArn: Swift.String? = nil,
        nextToken: Swift.String? = nil,
        startDate: Swift.String? = nil
    )
    {
        self.endDate = endDate
        self.filters = filters
        self.forecastArn = forecastArn
        self.nextToken = nextToken
        self.startDate = startDate
    }
}

extension QueryForecastOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> QueryForecastOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = QueryForecastOutput()
        value.forecast = try reader["Forecast"].readIfPresent(with: ForecastqueryClientTypes.Forecast.read(from:))
        return value
    }
}

public struct QueryForecastOutput {
    /// The forecast.
    public var forecast: ForecastqueryClientTypes.Forecast?

    public init(
        forecast: ForecastqueryClientTypes.Forecast? = nil
    )
    {
        self.forecast = forecast
    }
}

enum QueryForecastOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "InvalidInputException": return try InvalidInputException.makeError(baseError: baseError)
            case "InvalidNextTokenException": return try InvalidNextTokenException.makeError(baseError: baseError)
            case "LimitExceededException": return try LimitExceededException.makeError(baseError: baseError)
            case "ResourceInUseException": return try ResourceInUseException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension QueryWhatIfForecastInput {

    static func urlPathProvider(_ value: QueryWhatIfForecastInput) -> Swift.String? {
        return "/"
    }
}

extension QueryWhatIfForecastInput {

    static func write(value: QueryWhatIfForecastInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["EndDate"].write(value.endDate)
        try writer["Filters"].writeMap(value.filters, valueWritingClosure: Swift.String.write(value:to:), keyNodeInfo: "key", valueNodeInfo: "value", isFlattened: false)
        try writer["NextToken"].write(value.nextToken)
        try writer["StartDate"].write(value.startDate)
        try writer["WhatIfForecastArn"].write(value.whatIfForecastArn)
    }
}

public struct QueryWhatIfForecastInput {
    /// The end date for the what-if forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T20:00:00.
    public var endDate: Swift.String?
    /// The filtering criteria to apply when retrieving the forecast. For example, to get the forecast for client_21 in the electricity usage dataset, specify the following: {"item_id" : "client_21"} To get the full what-if forecast, use the [CreateForecastExportJob](https://docs.aws.amazon.com/en_us/forecast/latest/dg/API_CreateWhatIfForecastExport.html) operation.
    /// This member is required.
    public var filters: [Swift.String:Swift.String]?
    /// If the result of the previous request was truncated, the response includes a NextToken. To retrieve the next set of results, use the token in the next request. Tokens expire after 24 hours.
    public var nextToken: Swift.String?
    /// The start date for the what-if forecast. Specify the date using this format: yyyy-MM-dd'T'HH:mm:ss (ISO 8601 format). For example, 2015-01-01T08:00:00.
    public var startDate: Swift.String?
    /// The Amazon Resource Name (ARN) of the what-if forecast to query.
    /// This member is required.
    public var whatIfForecastArn: Swift.String?

    public init(
        endDate: Swift.String? = nil,
        filters: [Swift.String:Swift.String]? = nil,
        nextToken: Swift.String? = nil,
        startDate: Swift.String? = nil,
        whatIfForecastArn: Swift.String? = nil
    )
    {
        self.endDate = endDate
        self.filters = filters
        self.nextToken = nextToken
        self.startDate = startDate
        self.whatIfForecastArn = whatIfForecastArn
    }
}

extension QueryWhatIfForecastOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> QueryWhatIfForecastOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = QueryWhatIfForecastOutput()
        value.forecast = try reader["Forecast"].readIfPresent(with: ForecastqueryClientTypes.Forecast.read(from:))
        return value
    }
}

public struct QueryWhatIfForecastOutput {
    /// Provides information about a forecast. Returned as part of the [QueryForecast] response.
    public var forecast: ForecastqueryClientTypes.Forecast?

    public init(
        forecast: ForecastqueryClientTypes.Forecast? = nil
    )
    {
        self.forecast = forecast
    }
}

enum QueryWhatIfForecastOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.AWSJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "InvalidInputException": return try InvalidInputException.makeError(baseError: baseError)
            case "InvalidNextTokenException": return try InvalidNextTokenException.makeError(baseError: baseError)
            case "LimitExceededException": return try LimitExceededException.makeError(baseError: baseError)
            case "ResourceInUseException": return try ResourceInUseException.makeError(baseError: baseError)
            case "ResourceNotFoundException": return try ResourceNotFoundException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ResourceInUseException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ResourceInUseException {
        let reader = baseError.errorBodyReader
        var value = ResourceInUseException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The specified resource is in use.
public struct ResourceInUseException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceInUseException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}

extension ResourceNotFoundException {

    static func makeError(baseError: AWSClientRuntime.AWSJSONError) throws -> ResourceNotFoundException {
        let reader = baseError.errorBodyReader
        var value = ResourceNotFoundException()
        value.properties.message = try reader["Message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// We can't find that resource. Check the information that you've provided and try again.
public struct ResourceNotFoundException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ResourceNotFoundException" }
    public static var fault: ErrorFault { .client }
    public static var isRetryable: Swift.Bool { false }
    public static var isThrottling: Swift.Bool { false }
    public internal(set) var httpResponse = HttpResponse()
    public internal(set) var message: Swift.String?
    public internal(set) var requestID: Swift.String?

    public init(
        message: Swift.String? = nil
    )
    {
        self.properties.message = message
    }
}
