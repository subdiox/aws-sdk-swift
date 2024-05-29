// Code generated by smithy-swift-codegen. DO NOT EDIT!
@_spi(UnknownAWSHTTPServiceError) import struct AWSClientRuntime.UnknownAWSHTTPServiceError
import AWSClientRuntime
import ClientRuntime
import SmithyJSON
import SmithyReadWrite

extension AccessDeniedException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> AccessDeniedException {
        let reader = baseError.errorBodyReader
        var value = AccessDeniedException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// You do not have permission to perform this action.
public struct AccessDeniedException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "AccessDeniedException" }
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

public enum ApplicationCostProfilerClientTypes {}

extension DeleteReportDefinitionInput {

    static func urlPathProvider(_ value: DeleteReportDefinitionInput) -> Swift.String? {
        guard let reportId = value.reportId else {
            return nil
        }
        return "/reportDefinition/\(reportId.urlPercentEncoding())"
    }
}

public struct DeleteReportDefinitionInput {
    /// Required. ID of the report to delete.
    /// This member is required.
    public var reportId: Swift.String?

    public init(
        reportId: Swift.String? = nil
    )
    {
        self.reportId = reportId
    }
}

extension DeleteReportDefinitionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> DeleteReportDefinitionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = DeleteReportDefinitionOutput()
        value.reportId = try reader["reportId"].readIfPresent()
        return value
    }
}

public struct DeleteReportDefinitionOutput {
    /// ID of the report that was deleted.
    public var reportId: Swift.String?

    public init(
        reportId: Swift.String? = nil
    )
    {
        self.reportId = reportId
    }
}

enum DeleteReportDefinitionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ApplicationCostProfilerClientTypes {

    public enum Format: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case csv
        case parquet
        case sdkUnknown(Swift.String)

        public static var allCases: [Format] {
            return [
                .csv,
                .parquet,
                .sdkUnknown("")
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .csv: return "CSV"
            case .parquet: return "PARQUET"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension GetReportDefinitionInput {

    static func urlPathProvider(_ value: GetReportDefinitionInput) -> Swift.String? {
        guard let reportId = value.reportId else {
            return nil
        }
        return "/reportDefinition/\(reportId.urlPercentEncoding())"
    }
}

public struct GetReportDefinitionInput {
    /// ID of the report to retrieve.
    /// This member is required.
    public var reportId: Swift.String?

    public init(
        reportId: Swift.String? = nil
    )
    {
        self.reportId = reportId
    }
}

extension GetReportDefinitionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> GetReportDefinitionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = GetReportDefinitionOutput()
        value.createdAt = try reader["createdAt"].readTimestampIfPresent(format: .epochSeconds)
        value.destinationS3Location = try reader["destinationS3Location"].readIfPresent(with: ApplicationCostProfilerClientTypes.S3Location.read(from:))
        value.format = try reader["format"].readIfPresent()
        value.lastUpdated = try reader["lastUpdated"].readTimestampIfPresent(format: .epochSeconds)
        value.reportDescription = try reader["reportDescription"].readIfPresent()
        value.reportFrequency = try reader["reportFrequency"].readIfPresent()
        value.reportId = try reader["reportId"].readIfPresent()
        return value
    }
}

public struct GetReportDefinitionOutput {
    /// Timestamp (milliseconds) when this report definition was created.
    /// This member is required.
    public var createdAt: ClientRuntime.Date?
    /// Amazon Simple Storage Service (Amazon S3) location where the report is uploaded.
    /// This member is required.
    public var destinationS3Location: ApplicationCostProfilerClientTypes.S3Location?
    /// Format of the generated report.
    /// This member is required.
    public var format: ApplicationCostProfilerClientTypes.Format?
    /// Timestamp (milliseconds) when this report definition was last updated.
    /// This member is required.
    public var lastUpdated: ClientRuntime.Date?
    /// Description of the report.
    /// This member is required.
    public var reportDescription: Swift.String?
    /// Cadence used to generate the report.
    /// This member is required.
    public var reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency?
    /// ID of the report retrieved.
    /// This member is required.
    public var reportId: Swift.String?

    public init(
        createdAt: ClientRuntime.Date? = nil,
        destinationS3Location: ApplicationCostProfilerClientTypes.S3Location? = nil,
        format: ApplicationCostProfilerClientTypes.Format? = nil,
        lastUpdated: ClientRuntime.Date? = nil,
        reportDescription: Swift.String? = nil,
        reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency? = nil,
        reportId: Swift.String? = nil
    )
    {
        self.createdAt = createdAt
        self.destinationS3Location = destinationS3Location
        self.format = format
        self.lastUpdated = lastUpdated
        self.reportDescription = reportDescription
        self.reportFrequency = reportFrequency
        self.reportId = reportId
    }
}

enum GetReportDefinitionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ImportApplicationUsageInput {

    static func urlPathProvider(_ value: ImportApplicationUsageInput) -> Swift.String? {
        return "/importApplicationUsage"
    }
}

extension ImportApplicationUsageInput {

    static func write(value: ImportApplicationUsageInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["sourceS3Location"].write(value.sourceS3Location, with: ApplicationCostProfilerClientTypes.SourceS3Location.write(value:to:))
    }
}

public struct ImportApplicationUsageInput {
    /// Amazon S3 location to import application usage data from.
    /// This member is required.
    public var sourceS3Location: ApplicationCostProfilerClientTypes.SourceS3Location?

    public init(
        sourceS3Location: ApplicationCostProfilerClientTypes.SourceS3Location? = nil
    )
    {
        self.sourceS3Location = sourceS3Location
    }
}

extension ImportApplicationUsageOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> ImportApplicationUsageOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = ImportApplicationUsageOutput()
        value.importId = try reader["importId"].readIfPresent()
        return value
    }
}

public struct ImportApplicationUsageOutput {
    /// ID of the import request.
    /// This member is required.
    public var importId: Swift.String?

    public init(
        importId: Swift.String? = nil
    )
    {
        self.importId = importId
    }
}

enum ImportApplicationUsageOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension InternalServerException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> InternalServerException {
        let reader = baseError.errorBodyReader
        var value = InternalServerException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// An internal server error occurred. Retry your request.
public struct InternalServerException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "InternalServerException" }
    public static var fault: ErrorFault { .server }
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

extension ListReportDefinitionsInput {

    static func queryItemProvider(_ value: ListReportDefinitionsInput) throws -> [ClientRuntime.SDKURLQueryItem] {
        var items = [ClientRuntime.SDKURLQueryItem]()
        if let nextToken = value.nextToken {
            let nextTokenQueryItem = ClientRuntime.SDKURLQueryItem(name: "nextToken".urlPercentEncoding(), value: Swift.String(nextToken).urlPercentEncoding())
            items.append(nextTokenQueryItem)
        }
        if let maxResults = value.maxResults {
            let maxResultsQueryItem = ClientRuntime.SDKURLQueryItem(name: "maxResults".urlPercentEncoding(), value: Swift.String(maxResults).urlPercentEncoding())
            items.append(maxResultsQueryItem)
        }
        return items
    }
}

extension ListReportDefinitionsInput {

    static func urlPathProvider(_ value: ListReportDefinitionsInput) -> Swift.String? {
        return "/reportDefinition"
    }
}

public struct ListReportDefinitionsInput {
    /// The maximum number of results to return.
    public var maxResults: Swift.Int?
    /// The token value from a previous call to access the next page of results.
    public var nextToken: Swift.String?

    public init(
        maxResults: Swift.Int? = nil,
        nextToken: Swift.String? = nil
    )
    {
        self.maxResults = maxResults
        self.nextToken = nextToken
    }
}

extension ListReportDefinitionsOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> ListReportDefinitionsOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = ListReportDefinitionsOutput()
        value.nextToken = try reader["nextToken"].readIfPresent()
        value.reportDefinitions = try reader["reportDefinitions"].readListIfPresent(memberReadingClosure: ApplicationCostProfilerClientTypes.ReportDefinition.read(from:), memberNodeInfo: "member", isFlattened: false)
        return value
    }
}

public struct ListReportDefinitionsOutput {
    /// The value of the next token, if it exists. Null if there are no more results.
    public var nextToken: Swift.String?
    /// The retrieved reports.
    public var reportDefinitions: [ApplicationCostProfilerClientTypes.ReportDefinition]?

    public init(
        nextToken: Swift.String? = nil,
        reportDefinitions: [ApplicationCostProfilerClientTypes.ReportDefinition]? = nil
    )
    {
        self.nextToken = nextToken
        self.reportDefinitions = reportDefinitions
    }
}

enum ListReportDefinitionsOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension PutReportDefinitionInput {

    static func urlPathProvider(_ value: PutReportDefinitionInput) -> Swift.String? {
        return "/reportDefinition"
    }
}

extension PutReportDefinitionInput {

    static func write(value: PutReportDefinitionInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["destinationS3Location"].write(value.destinationS3Location, with: ApplicationCostProfilerClientTypes.S3Location.write(value:to:))
        try writer["format"].write(value.format)
        try writer["reportDescription"].write(value.reportDescription)
        try writer["reportFrequency"].write(value.reportFrequency)
        try writer["reportId"].write(value.reportId)
    }
}

public struct PutReportDefinitionInput {
    /// Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the report.
    /// This member is required.
    public var destinationS3Location: ApplicationCostProfilerClientTypes.S3Location?
    /// Required. The format to use for the generated report.
    /// This member is required.
    public var format: ApplicationCostProfilerClientTypes.Format?
    /// Required. Description of the report.
    /// This member is required.
    public var reportDescription: Swift.String?
    /// Required. The cadence to generate the report.
    /// This member is required.
    public var reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency?
    /// Required. ID of the report. You can choose any valid string matching the pattern for the ID.
    /// This member is required.
    public var reportId: Swift.String?

    public init(
        destinationS3Location: ApplicationCostProfilerClientTypes.S3Location? = nil,
        format: ApplicationCostProfilerClientTypes.Format? = nil,
        reportDescription: Swift.String? = nil,
        reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency? = nil,
        reportId: Swift.String? = nil
    )
    {
        self.destinationS3Location = destinationS3Location
        self.format = format
        self.reportDescription = reportDescription
        self.reportFrequency = reportFrequency
        self.reportId = reportId
    }
}

extension PutReportDefinitionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> PutReportDefinitionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = PutReportDefinitionOutput()
        value.reportId = try reader["reportId"].readIfPresent()
        return value
    }
}

public struct PutReportDefinitionOutput {
    /// ID of the report.
    public var reportId: Swift.String?

    public init(
        reportId: Swift.String? = nil
    )
    {
        self.reportId = reportId
    }
}

enum PutReportDefinitionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ServiceQuotaExceededException": return try ServiceQuotaExceededException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ApplicationCostProfilerClientTypes.ReportDefinition {

    static func read(from reader: SmithyJSON.Reader) throws -> ApplicationCostProfilerClientTypes.ReportDefinition {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ApplicationCostProfilerClientTypes.ReportDefinition()
        value.reportId = try reader["reportId"].readIfPresent()
        value.reportDescription = try reader["reportDescription"].readIfPresent()
        value.reportFrequency = try reader["reportFrequency"].readIfPresent()
        value.format = try reader["format"].readIfPresent()
        value.destinationS3Location = try reader["destinationS3Location"].readIfPresent(with: ApplicationCostProfilerClientTypes.S3Location.read(from:))
        value.createdAt = try reader["createdAt"].readTimestampIfPresent(format: .epochSeconds)
        value.lastUpdatedAt = try reader["lastUpdatedAt"].readTimestampIfPresent(format: .epochSeconds)
        return value
    }
}

extension ApplicationCostProfilerClientTypes {
    /// The configuration of a report in AWS Application Cost Profiler.
    public struct ReportDefinition {
        /// Timestamp (milliseconds) when this report definition was created.
        public var createdAt: ClientRuntime.Date?
        /// The location in Amazon Simple Storage Service (Amazon S3) the reports should be saved to.
        public var destinationS3Location: ApplicationCostProfilerClientTypes.S3Location?
        /// The format used for the generated reports.
        public var format: ApplicationCostProfilerClientTypes.Format?
        /// Timestamp (milliseconds) when this report definition was last updated.
        public var lastUpdatedAt: ClientRuntime.Date?
        /// Description of the report
        public var reportDescription: Swift.String?
        /// The cadence at which the report is generated.
        public var reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency?
        /// The ID of the report.
        public var reportId: Swift.String?

        public init(
            createdAt: ClientRuntime.Date? = nil,
            destinationS3Location: ApplicationCostProfilerClientTypes.S3Location? = nil,
            format: ApplicationCostProfilerClientTypes.Format? = nil,
            lastUpdatedAt: ClientRuntime.Date? = nil,
            reportDescription: Swift.String? = nil,
            reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency? = nil,
            reportId: Swift.String? = nil
        )
        {
            self.createdAt = createdAt
            self.destinationS3Location = destinationS3Location
            self.format = format
            self.lastUpdatedAt = lastUpdatedAt
            self.reportDescription = reportDescription
            self.reportFrequency = reportFrequency
            self.reportId = reportId
        }
    }

}

extension ApplicationCostProfilerClientTypes {

    public enum ReportFrequency: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case all
        case daily
        case monthly
        case sdkUnknown(Swift.String)

        public static var allCases: [ReportFrequency] {
            return [
                .all,
                .daily,
                .monthly,
                .sdkUnknown("")
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .all: return "ALL"
            case .daily: return "DAILY"
            case .monthly: return "MONTHLY"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension ApplicationCostProfilerClientTypes {

    public enum S3BucketRegion: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Hashable {
        case afSouth1
        case apEast1
        case euSouth1
        case meSouth1
        case sdkUnknown(Swift.String)

        public static var allCases: [S3BucketRegion] {
            return [
                .afSouth1,
                .apEast1,
                .euSouth1,
                .meSouth1,
                .sdkUnknown("")
            ]
        }

        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }

        public var rawValue: Swift.String {
            switch self {
            case .afSouth1: return "af-south-1"
            case .apEast1: return "ap-east-1"
            case .euSouth1: return "eu-south-1"
            case .meSouth1: return "me-south-1"
            case let .sdkUnknown(s): return s
            }
        }
    }
}

extension ApplicationCostProfilerClientTypes.S3Location {

    static func write(value: ApplicationCostProfilerClientTypes.S3Location?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["bucket"].write(value.bucket)
        try writer["prefix"].write(value.`prefix`)
    }

    static func read(from reader: SmithyJSON.Reader) throws -> ApplicationCostProfilerClientTypes.S3Location {
        guard reader.hasContent else { throw SmithyReadWrite.ReaderError.requiredValueNotPresent }
        var value = ApplicationCostProfilerClientTypes.S3Location()
        value.bucket = try reader["bucket"].readIfPresent()
        value.`prefix` = try reader["prefix"].readIfPresent()
        return value
    }
}

extension ApplicationCostProfilerClientTypes {
    /// Represents the Amazon Simple Storage Service (Amazon S3) location where AWS Application Cost Profiler reports are generated and then written to.
    public struct S3Location {
        /// Name of the S3 bucket.
        /// This member is required.
        public var bucket: Swift.String?
        /// Prefix for the location to write to.
        /// This member is required.
        public var `prefix`: Swift.String?

        public init(
            bucket: Swift.String? = nil,
            `prefix`: Swift.String? = nil
        )
        {
            self.bucket = bucket
            self.`prefix` = `prefix`
        }
    }

}

extension ServiceQuotaExceededException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ServiceQuotaExceededException {
        let reader = baseError.errorBodyReader
        var value = ServiceQuotaExceededException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// Your request exceeds one or more of the service quotas.
public struct ServiceQuotaExceededException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ServiceQuotaExceededException" }
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

extension ApplicationCostProfilerClientTypes.SourceS3Location {

    static func write(value: ApplicationCostProfilerClientTypes.SourceS3Location?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["bucket"].write(value.bucket)
        try writer["key"].write(value.key)
        try writer["region"].write(value.region)
    }
}

extension ApplicationCostProfilerClientTypes {
    /// Represents the Amazon Simple Storage Service (Amazon S3) location where usage data is read from.
    public struct SourceS3Location {
        /// Name of the bucket.
        /// This member is required.
        public var bucket: Swift.String?
        /// Key of the object.
        /// This member is required.
        public var key: Swift.String?
        /// Region of the bucket. Only required for Regions that are disabled by default. For more infomration about Regions that are disabled by default, see [ Enabling a Region](https://docs.aws.amazon.com/general/latest/gr/rande-manage.html#rande-manage-enable) in the AWS General Reference guide.
        public var region: ApplicationCostProfilerClientTypes.S3BucketRegion?

        public init(
            bucket: Swift.String? = nil,
            key: Swift.String? = nil,
            region: ApplicationCostProfilerClientTypes.S3BucketRegion? = nil
        )
        {
            self.bucket = bucket
            self.key = key
            self.region = region
        }
    }

}

extension ThrottlingException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ThrottlingException {
        let reader = baseError.errorBodyReader
        var value = ThrottlingException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The calls to AWS Application Cost Profiler API are throttled. The request was denied.
public struct ThrottlingException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ThrottlingException" }
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

extension UpdateReportDefinitionInput {

    static func urlPathProvider(_ value: UpdateReportDefinitionInput) -> Swift.String? {
        guard let reportId = value.reportId else {
            return nil
        }
        return "/reportDefinition/\(reportId.urlPercentEncoding())"
    }
}

extension UpdateReportDefinitionInput {

    static func write(value: UpdateReportDefinitionInput?, to writer: SmithyJSON.Writer) throws {
        guard let value else { return }
        try writer["destinationS3Location"].write(value.destinationS3Location, with: ApplicationCostProfilerClientTypes.S3Location.write(value:to:))
        try writer["format"].write(value.format)
        try writer["reportDescription"].write(value.reportDescription)
        try writer["reportFrequency"].write(value.reportFrequency)
    }
}

public struct UpdateReportDefinitionInput {
    /// Required. Amazon Simple Storage Service (Amazon S3) location where Application Cost Profiler uploads the report.
    /// This member is required.
    public var destinationS3Location: ApplicationCostProfilerClientTypes.S3Location?
    /// Required. The format to use for the generated report.
    /// This member is required.
    public var format: ApplicationCostProfilerClientTypes.Format?
    /// Required. Description of the report.
    /// This member is required.
    public var reportDescription: Swift.String?
    /// Required. The cadence to generate the report.
    /// This member is required.
    public var reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency?
    /// Required. ID of the report to update.
    /// This member is required.
    public var reportId: Swift.String?

    public init(
        destinationS3Location: ApplicationCostProfilerClientTypes.S3Location? = nil,
        format: ApplicationCostProfilerClientTypes.Format? = nil,
        reportDescription: Swift.String? = nil,
        reportFrequency: ApplicationCostProfilerClientTypes.ReportFrequency? = nil,
        reportId: Swift.String? = nil
    )
    {
        self.destinationS3Location = destinationS3Location
        self.format = format
        self.reportDescription = reportDescription
        self.reportFrequency = reportFrequency
        self.reportId = reportId
    }
}

extension UpdateReportDefinitionOutput {

    static func httpOutput(from httpResponse: ClientRuntime.HttpResponse) async throws -> UpdateReportDefinitionOutput {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let reader = responseReader
        var value = UpdateReportDefinitionOutput()
        value.reportId = try reader["reportId"].readIfPresent()
        return value
    }
}

public struct UpdateReportDefinitionOutput {
    /// ID of the report.
    public var reportId: Swift.String?

    public init(
        reportId: Swift.String? = nil
    )
    {
        self.reportId = reportId
    }
}

enum UpdateReportDefinitionOutputError {

    static func httpError(from httpResponse: ClientRuntime.HttpResponse) async throws -> Swift.Error {
        let data = try await httpResponse.data()
        let responseReader = try SmithyJSON.Reader.from(data: data)
        let baseError = try AWSClientRuntime.RestJSONError(httpResponse: httpResponse, responseReader: responseReader, noErrorWrapping: false)
        if let error = baseError.customError() { return error }
        switch baseError.code {
            case "AccessDeniedException": return try AccessDeniedException.makeError(baseError: baseError)
            case "InternalServerException": return try InternalServerException.makeError(baseError: baseError)
            case "ThrottlingException": return try ThrottlingException.makeError(baseError: baseError)
            case "ValidationException": return try ValidationException.makeError(baseError: baseError)
            default: return try AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(baseError: baseError)
        }
    }
}

extension ValidationException {

    static func makeError(baseError: AWSClientRuntime.RestJSONError) throws -> ValidationException {
        let reader = baseError.errorBodyReader
        var value = ValidationException()
        value.properties.message = try reader["message"].readIfPresent()
        value.httpResponse = baseError.httpResponse
        value.requestID = baseError.requestID
        value.message = baseError.message
        return value
    }
}

/// The input fails to satisfy the constraints for the API.
public struct ValidationException: ClientRuntime.ModeledError, AWSClientRuntime.AWSServiceError, ClientRuntime.HTTPError, Swift.Error {

    public struct Properties {
        public internal(set) var message: Swift.String? = nil
    }

    public internal(set) var properties = Properties()
    public static var typeName: Swift.String { "ValidationException" }
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
