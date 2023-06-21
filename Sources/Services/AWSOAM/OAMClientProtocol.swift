// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Use Amazon CloudWatch Observability Access Manager to create and manage links between source accounts and monitoring accounts by using CloudWatch cross-account observability. With CloudWatch cross-account observability, you can monitor and troubleshoot applications that span multiple accounts within a Region. Seamlessly search, visualize, and analyze your metrics, logs, and traces in any of the linked accounts without account boundaries. Set up one or more Amazon Web Services accounts as monitoring accounts and link them with multiple source accounts. A monitoring account is a central Amazon Web Services account that can view and interact with observability data generated from source accounts. A source account is an individual Amazon Web Services account that generates observability data for the resources that reside in it. Source accounts share their observability data with the monitoring account. The shared observability data can include metrics in Amazon CloudWatch, logs in Amazon CloudWatch Logs, and traces in X-Ray.
public protocol OAMClientProtocol {
    /// Creates a link between a source account and a sink that you have created in a monitoring account. Before you create a link, you must create a sink in the monitoring account and create a sink policy in that account. The sink policy must permit the source account to link to it. You can grant permission to source accounts by granting permission to an entire organization or to individual accounts. For more information, see [CreateSink](https://docs.aws.amazon.com/OAM/latest/APIReference/API_CreateSink.html) and [PutSinkPolicy](https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html). Each monitoring account can be linked to as many as 100,000 source accounts. Each source account can be linked to as many as five monitoring accounts.
    func createLink(input: CreateLinkInput) async throws -> CreateLinkOutputResponse
    /// Use this to create a sink in the current account, so that it can be used as a monitoring account in CloudWatch cross-account observability. A sink is a resource that represents an attachment point in a monitoring account. Source accounts can link to the sink to send observability data. After you create a sink, you must create a sink policy that allows source accounts to attach to it. For more information, see [PutSinkPolicy](https://docs.aws.amazon.com/OAM/latest/APIReference/API_PutSinkPolicy.html). Each account can contain one sink. If you delete a sink, you can then create a new one in that account.
    func createSink(input: CreateSinkInput) async throws -> CreateSinkOutputResponse
    /// Deletes a link between a monitoring account sink and a source account. You must run this operation in the source account.
    func deleteLink(input: DeleteLinkInput) async throws -> DeleteLinkOutputResponse
    /// Deletes a sink. You must delete all links to a sink before you can delete that sink.
    func deleteSink(input: DeleteSinkInput) async throws -> DeleteSinkOutputResponse
    /// Returns complete information about one link. To use this operation, provide the link ARN. To retrieve a list of link ARNs, use [ListLinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html).
    func getLink(input: GetLinkInput) async throws -> GetLinkOutputResponse
    /// Returns complete information about one monitoring account sink. To use this operation, provide the sink ARN. To retrieve a list of sink ARNs, use [ListSinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html).
    func getSink(input: GetSinkInput) async throws -> GetSinkOutputResponse
    /// Returns the current sink policy attached to this sink. The sink policy specifies what accounts can attach to this sink as source accounts, and what types of data they can share.
    func getSinkPolicy(input: GetSinkPolicyInput) async throws -> GetSinkPolicyOutputResponse
    /// Returns a list of source account links that are linked to this monitoring account sink. To use this operation, provide the sink ARN. To retrieve a list of sink ARNs, use [ListSinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListSinks.html). To find a list of links for one source account, use [ListLinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListLinks.html).
    func listAttachedLinks(input: ListAttachedLinksInput) async throws -> ListAttachedLinksOutputResponse
    /// Use this operation in a source account to return a list of links to monitoring account sinks that this source account has. To find a list of links for one monitoring account sink, use [ListAttachedLinks](https://docs.aws.amazon.com/OAM/latest/APIReference/API_ListAttachedLinks.html) from within the monitoring account.
    func listLinks(input: ListLinksInput) async throws -> ListLinksOutputResponse
    /// Use this operation in a monitoring account to return the list of sinks created in that account.
    func listSinks(input: ListSinksInput) async throws -> ListSinksOutputResponse
    /// Displays the tags associated with a resource. Both sinks and links support tagging.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Creates or updates the resource policy that grants permissions to source accounts to link to the monitoring account sink. When you create a sink policy, you can grant permissions to all accounts in an organization or to individual accounts. You can also use a sink policy to limit the types of data that is shared. The three types that you can allow or deny are:
    ///
    /// * Metrics - Specify with AWS::CloudWatch::Metric
    ///
    /// * Log groups - Specify with AWS::Logs::LogGroup
    ///
    /// * Traces - Specify with AWS::XRay::Trace
    ///
    ///
    /// See the examples in this section to see how to specify permitted source accounts and data types.
    func putSinkPolicy(input: PutSinkPolicyInput) async throws -> PutSinkPolicyOutputResponse
    /// Assigns one or more tags (key-value pairs) to the specified resource. Both sinks and links can be tagged. Tags can help you organize and categorize your resources. You can also use them to scope user permissions by granting a user permission to access or change only resources with certain tag values. Tags don't have any semantic meaning to Amazon Web Services and are interpreted strictly as strings of characters. You can use the TagResource action with a resource that already has tags. If you specify a new tag key for the alarm, this tag is appended to the list of tags associated with the alarm. If you specify a tag key that is already associated with the alarm, the new tag value that you specify replaces the previous value for that tag. You can associate as many as 50 tags with a resource. Unlike tagging permissions in other Amazon Web Services services, to tag or untag links and sinks you must have the oam:ResourceTag permission. The iam:ResourceTag permission does not allow you to tag and untag links and sinks.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Removes one or more tags from the specified resource. Unlike tagging permissions in other Amazon Web Services services, to tag or untag links and sinks you must have the oam:ResourceTag permission. The iam:TagResource permission does not allow you to tag and untag links and sinks.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Use this operation to change what types of data are shared from a source account to its linked monitoring account sink. You can't change the sink or change the monitoring account with this operation. To update the list of tags associated with the sink, use [TagResource](https://docs.aws.amazon.com/OAM/latest/APIReference/API_TagResource.html).
    func updateLink(input: UpdateLinkInput) async throws -> UpdateLinkOutputResponse
}

public enum OAMClientTypes {}
