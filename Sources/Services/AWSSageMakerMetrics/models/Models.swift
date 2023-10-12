// Code generated by smithy-swift-codegen. DO NOT EDIT!
import AWSClientRuntime
import ClientRuntime

extension SageMakerMetricsClientTypes.BatchPutMetricsError: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case code = "Code"
        case metricIndex = "MetricIndex"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let code = self.code {
            try encodeContainer.encode(code.rawValue, forKey: .code)
        }
        if metricIndex != 0 {
            try encodeContainer.encode(metricIndex, forKey: .metricIndex)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let codeDecoded = try containerValues.decodeIfPresent(SageMakerMetricsClientTypes.PutMetricsErrorCode.self, forKey: .code)
        code = codeDecoded
        let metricIndexDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .metricIndex) ?? 0
        metricIndex = metricIndexDecoded
    }
}

extension SageMakerMetricsClientTypes {
    /// An error that occured when putting the metric data.
    public struct BatchPutMetricsError: Swift.Equatable {
        /// The error code of an error that occured when attempting to put metrics.
        ///
        /// * METRIC_LIMIT_EXCEEDED: The maximum amount of metrics per resource is exceeded.
        ///
        /// * INTERNAL_ERROR: An internal error occured.
        ///
        /// * VALIDATION_ERROR: The metric data failed validation.
        ///
        /// * CONFLICT_ERROR: Multiple requests attempted to modify the same data simultaneously.
        public var code: SageMakerMetricsClientTypes.PutMetricsErrorCode?
        /// An index that corresponds to the metric in the request.
        public var metricIndex: Swift.Int

        public init(
            code: SageMakerMetricsClientTypes.PutMetricsErrorCode? = nil,
            metricIndex: Swift.Int = 0
        )
        {
            self.code = code
            self.metricIndex = metricIndex
        }
    }

}

extension BatchPutMetricsInput: Swift.Encodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case metricData = "MetricData"
        case trialComponentName = "TrialComponentName"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let metricData = metricData {
            var metricDataContainer = encodeContainer.nestedUnkeyedContainer(forKey: .metricData)
            for rawmetricdata0 in metricData {
                try metricDataContainer.encode(rawmetricdata0)
            }
        }
        if let trialComponentName = self.trialComponentName {
            try encodeContainer.encode(trialComponentName, forKey: .trialComponentName)
        }
    }
}

extension BatchPutMetricsInput: ClientRuntime.URLPathProvider {
    public var urlPath: Swift.String? {
        return "/BatchPutMetrics"
    }
}

public struct BatchPutMetricsInput: Swift.Equatable {
    /// A list of raw metric values to put.
    /// This member is required.
    public var metricData: [SageMakerMetricsClientTypes.RawMetricData]?
    /// The name of the Trial Component to associate with the metrics.
    /// This member is required.
    public var trialComponentName: Swift.String?

    public init(
        metricData: [SageMakerMetricsClientTypes.RawMetricData]? = nil,
        trialComponentName: Swift.String? = nil
    )
    {
        self.metricData = metricData
        self.trialComponentName = trialComponentName
    }
}

struct BatchPutMetricsInputBody: Swift.Equatable {
    let trialComponentName: Swift.String?
    let metricData: [SageMakerMetricsClientTypes.RawMetricData]?
}

extension BatchPutMetricsInputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case metricData = "MetricData"
        case trialComponentName = "TrialComponentName"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let trialComponentNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .trialComponentName)
        trialComponentName = trialComponentNameDecoded
        let metricDataContainer = try containerValues.decodeIfPresent([SageMakerMetricsClientTypes.RawMetricData?].self, forKey: .metricData)
        var metricDataDecoded0:[SageMakerMetricsClientTypes.RawMetricData]? = nil
        if let metricDataContainer = metricDataContainer {
            metricDataDecoded0 = [SageMakerMetricsClientTypes.RawMetricData]()
            for structure0 in metricDataContainer {
                if let structure0 = structure0 {
                    metricDataDecoded0?.append(structure0)
                }
            }
        }
        metricData = metricDataDecoded0
    }
}

extension BatchPutMetricsOutput: ClientRuntime.HttpResponseBinding {
    public init(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws {
        if let data = try await httpResponse.body.readData(),
            let responseDecoder = decoder {
            let output: BatchPutMetricsOutputBody = try responseDecoder.decode(responseBody: data)
            self.errors = output.errors
        } else {
            self.errors = nil
        }
    }
}

public struct BatchPutMetricsOutput: Swift.Equatable {
    /// Lists any errors that occur when inserting metric data.
    public var errors: [SageMakerMetricsClientTypes.BatchPutMetricsError]?

    public init(
        errors: [SageMakerMetricsClientTypes.BatchPutMetricsError]? = nil
    )
    {
        self.errors = errors
    }
}

struct BatchPutMetricsOutputBody: Swift.Equatable {
    let errors: [SageMakerMetricsClientTypes.BatchPutMetricsError]?
}

extension BatchPutMetricsOutputBody: Swift.Decodable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case errors = "Errors"
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let errorsContainer = try containerValues.decodeIfPresent([SageMakerMetricsClientTypes.BatchPutMetricsError?].self, forKey: .errors)
        var errorsDecoded0:[SageMakerMetricsClientTypes.BatchPutMetricsError]? = nil
        if let errorsContainer = errorsContainer {
            errorsDecoded0 = [SageMakerMetricsClientTypes.BatchPutMetricsError]()
            for structure0 in errorsContainer {
                if let structure0 = structure0 {
                    errorsDecoded0?.append(structure0)
                }
            }
        }
        errors = errorsDecoded0
    }
}

enum BatchPutMetricsOutputError: ClientRuntime.HttpResponseErrorBinding {
    static func makeError(httpResponse: ClientRuntime.HttpResponse, decoder: ClientRuntime.ResponseDecoder? = nil) async throws -> Swift.Error {
        let restJSONError = try await AWSClientRuntime.RestJSONError(httpResponse: httpResponse)
        let requestID = httpResponse.requestId
        switch restJSONError.errorType {
            default: return try await AWSClientRuntime.UnknownAWSHTTPServiceError.makeError(httpResponse: httpResponse, message: restJSONError.errorMessage, requestID: requestID, typeName: restJSONError.errorType)
        }
    }
}

extension SageMakerMetricsClientTypes {
    public enum PutMetricsErrorCode: Swift.Equatable, Swift.RawRepresentable, Swift.CaseIterable, Swift.Codable, Swift.Hashable {
        case conflictError
        case internalError
        case metricLimitExceeded
        case validationError
        case sdkUnknown(Swift.String)

        public static var allCases: [PutMetricsErrorCode] {
            return [
                .conflictError,
                .internalError,
                .metricLimitExceeded,
                .validationError,
                .sdkUnknown("")
            ]
        }
        public init?(rawValue: Swift.String) {
            let value = Self.allCases.first(where: { $0.rawValue == rawValue })
            self = value ?? Self.sdkUnknown(rawValue)
        }
        public var rawValue: Swift.String {
            switch self {
            case .conflictError: return "CONFLICT_ERROR"
            case .internalError: return "INTERNAL_ERROR"
            case .metricLimitExceeded: return "METRIC_LIMIT_EXCEEDED"
            case .validationError: return "VALIDATION_ERROR"
            case let .sdkUnknown(s): return s
            }
        }
        public init(from decoder: Swift.Decoder) throws {
            let container = try decoder.singleValueContainer()
            let rawValue = try container.decode(RawValue.self)
            self = PutMetricsErrorCode(rawValue: rawValue) ?? PutMetricsErrorCode.sdkUnknown(rawValue)
        }
    }
}

extension SageMakerMetricsClientTypes.RawMetricData: Swift.Codable {
    enum CodingKeys: Swift.String, Swift.CodingKey {
        case metricName = "MetricName"
        case step = "Step"
        case timestamp = "Timestamp"
        case value = "Value"
    }

    public func encode(to encoder: Swift.Encoder) throws {
        var encodeContainer = encoder.container(keyedBy: CodingKeys.self)
        if let metricName = self.metricName {
            try encodeContainer.encode(metricName, forKey: .metricName)
        }
        if let step = self.step {
            try encodeContainer.encode(step, forKey: .step)
        }
        if let timestamp = self.timestamp {
            try encodeContainer.encodeTimestamp(timestamp, format: .epochSeconds, forKey: .timestamp)
        }
        if value != 0.0 {
            try encodeContainer.encode(value, forKey: .value)
        }
    }

    public init(from decoder: Swift.Decoder) throws {
        let containerValues = try decoder.container(keyedBy: CodingKeys.self)
        let metricNameDecoded = try containerValues.decodeIfPresent(Swift.String.self, forKey: .metricName)
        metricName = metricNameDecoded
        let timestampDecoded = try containerValues.decodeTimestampIfPresent(.epochSeconds, forKey: .timestamp)
        timestamp = timestampDecoded
        let stepDecoded = try containerValues.decodeIfPresent(Swift.Int.self, forKey: .step)
        step = stepDecoded
        let valueDecoded = try containerValues.decodeIfPresent(Swift.Double.self, forKey: .value) ?? 0.0
        value = valueDecoded
    }
}

extension SageMakerMetricsClientTypes {
    /// The raw metric data to associate with the resource.
    public struct RawMetricData: Swift.Equatable {
        /// The name of the metric.
        /// This member is required.
        public var metricName: Swift.String?
        /// The metric step (epoch).
        public var step: Swift.Int?
        /// The time that the metric was recorded.
        /// This member is required.
        public var timestamp: ClientRuntime.Date?
        /// The metric value.
        /// This member is required.
        public var value: Swift.Double

        public init(
            metricName: Swift.String? = nil,
            step: Swift.Int? = nil,
            timestamp: ClientRuntime.Date? = nil,
            value: Swift.Double = 0.0
        )
        {
            self.metricName = metricName
            self.step = step
            self.timestamp = timestamp
            self.value = value
        }
    }

}
