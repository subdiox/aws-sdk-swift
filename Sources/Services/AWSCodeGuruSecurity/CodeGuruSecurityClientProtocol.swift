// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// This section provides documentation for the [Amazon CodeGuru Security](https://docs.aws.amazon.com/https:/docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html) API operations. CodeGuru Security is a service that uses program analysis and machine learning to detect security policy violations and vulnerabilities, and recommends ways to address these security risks. By proactively detecting and providing recommendations for addressing security risks, CodeGuru Security improves the overall security of your application code. For more information about CodeGuru Security, see the [Amazon CodeGuru Security User Guide](https://docs.aws.amazon.com/codeguru/latest/security-ug/what-is-codeguru-security.html).
public protocol CodeGuruSecurityClientProtocol {
    /// Returns a list of all requested findings.
    func batchGetFindings(input: BatchGetFindingsInput) async throws -> BatchGetFindingsOutputResponse
    /// Use to create a scan using code uploaded to an S3 bucket.
    func createScan(input: CreateScanInput) async throws -> CreateScanOutputResponse
    /// Generates a pre-signed URL and request headers used to upload a code resource. You can upload your code resource to the URL and add the request headers using any HTTP client.
    func createUploadUrl(input: CreateUploadUrlInput) async throws -> CreateUploadUrlOutputResponse
    /// Use to get account level configuration.
    func getAccountConfiguration(input: GetAccountConfigurationInput) async throws -> GetAccountConfigurationOutputResponse
    /// Returns a list of all findings generated by a particular scan.
    func getFindings(input: GetFindingsInput) async throws -> GetFindingsOutputResponse
    /// Returns top level metrics about an account from a specified date, including number of open findings, the categories with most findings, the scans with most open findings, and scans with most open critical findings.
    func getMetricsSummary(input: GetMetricsSummaryInput) async throws -> GetMetricsSummaryOutputResponse
    /// Returns details about a scan, including whether or not a scan has completed.
    func getScan(input: GetScanInput) async throws -> GetScanOutputResponse
    /// Returns metrics about all findings in an account within a specified time range.
    func listFindingsMetrics(input: ListFindingsMetricsInput) async throws -> ListFindingsMetricsOutputResponse
    /// Returns a list of all the scans in an account.
    func listScans(input: ListScansInput) async throws -> ListScansOutputResponse
    /// Returns a list of all tags associated with a scan.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Use to add one or more tags to an existing scan.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Use to remove one or more tags from an existing scan.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Use to update account-level configuration with an encryption key.
    func updateAccountConfiguration(input: UpdateAccountConfigurationInput) async throws -> UpdateAccountConfigurationOutputResponse
}

public enum CodeGuruSecurityClientTypes {}
