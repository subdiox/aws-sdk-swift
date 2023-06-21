// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Global Accelerator This is the Global Accelerator API Reference. This guide is for developers who need detailed information about Global Accelerator API actions, data types, and errors. For more information about Global Accelerator features, see the [Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html). Global Accelerator is a service in which you create accelerators to improve the performance of your applications for local and global users. Depending on the type of accelerator you choose, you can gain additional benefits.
///
/// * By using a standard accelerator, you can improve availability of your internet applications that are used by a global audience. With a standard accelerator, Global Accelerator directs traffic to optimal endpoints over the Amazon Web Services global network.
///
/// * For other scenarios, you might choose a custom routing accelerator. With a custom routing accelerator, you can use application logic to directly map one or more users to a specific endpoint among many endpoints.
///
///
/// Global Accelerator is a global service that supports endpoints in multiple Amazon Web Services Regions but you must specify the US West (Oregon) Region to create, update, or otherwise work with accelerators. That is, for example, specify --region us-west-2 on AWS CLI commands. By default, Global Accelerator provides you with static IP addresses that you associate with your accelerator. The static IP addresses are anycast from the Amazon Web Services edge network. For IPv4, Global Accelerator provides two static IPv4 addresses. For dual-stack, Global Accelerator provides a total of four addresses: two static IPv4 addresses and two static IPv6 addresses. With a standard accelerator for IPv4, instead of using the addresses that Global Accelerator provides, you can configure these entry points to be IPv4 addresses from your own IP address ranges that you bring toGlobal Accelerator (BYOIP). For a standard accelerator, they distribute incoming application traffic across multiple endpoint resources in multiple Amazon Web Services Regions , which increases the availability of your applications. Endpoints for standard accelerators can be Network Load Balancers, Application Load Balancers, Amazon EC2 instances, or Elastic IP addresses that are located in one Amazon Web Services Region or multiple Amazon Web Services Regions. For custom routing accelerators, you map traffic that arrives to the static IP addresses to specific Amazon EC2 servers in endpoints that are virtual private cloud (VPC) subnets. The static IP addresses remain assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to it, so you can no longer route traffic by using them. You can use IAM policies like tag-based permissions with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see [Tag-based policies](https://docs.aws.amazon.com/global-accelerator/latest/dg/access-control-manage-access-tag-policies.html). For standard accelerators, Global Accelerator uses the Amazon Web Services global network to route traffic to the optimal regional endpoint based on health, client location, and policies that you configure. The service reacts instantly to changes in health or configuration to ensure that internet traffic from clients is always directed to healthy endpoints. For more information about understanding and using Global Accelerator, see the [Global Accelerator Developer Guide](https://docs.aws.amazon.com/global-accelerator/latest/dg/what-is-global-accelerator.html).
public protocol GlobalAcceleratorClientProtocol {
    /// Associate a virtual private cloud (VPC) subnet endpoint with your custom routing accelerator. The listener port range must be large enough to support the number of IP addresses that can be specified in your subnet. The number of ports required is: subnet size times the number of ports per destination EC2 instances. For example, a subnet defined as /24 requires a listener port range of at least 255 ports. Note: You must have enough remaining listener ports available to map to the subnet ports, or the call will fail with a LimitExceededException. By default, all destinations in a subnet in a custom routing accelerator cannot receive traffic. To enable all destinations to receive traffic, or to specify individual port mappings that can receive traffic, see the [ AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html) operation.
    func addCustomRoutingEndpoints(input: AddCustomRoutingEndpointsInput) async throws -> AddCustomRoutingEndpointsOutputResponse
    /// Add endpoints to an endpoint group. The AddEndpoints API operation is the recommended option for adding endpoints. The alternative options are to add endpoints when you create an endpoint group (with the [CreateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_CreateEndpointGroup.html) API) or when you update an endpoint group (with the [UpdateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html) API). There are two advantages to using AddEndpoints to add endpoints:
    ///
    /// * It's faster, because Global Accelerator only has to resolve the new endpoints that you're adding.
    ///
    /// * It's more convenient, because you don't need to specify all of the current endpoints that are already in the endpoint group in addition to the new endpoints that you want to add.
    func addEndpoints(input: AddEndpointsInput) async throws -> AddEndpointsOutputResponse
    /// Advertises an IPv4 address range that is provisioned for use with your Amazon Web Services resources through bring your own IP addresses (BYOIP). It can take a few minutes before traffic to the specified addresses starts routing to Amazon Web Services because of propagation delays. To stop advertising the BYOIP address range, use [ WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html). For more information, see [Bring your own IP addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the Global Accelerator Developer Guide.
    func advertiseByoipCidr(input: AdvertiseByoipCidrInput) async throws -> AdvertiseByoipCidrOutputResponse
    /// Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that can receive traffic for a custom routing accelerator. You can allow traffic to all destinations in the subnet endpoint, or allow traffic to a specified list of destination IP addresses and ports in the subnet. Note that you cannot specify IP addresses or ports outside of the range that you configured for the endpoint group. After you make changes, you can verify that the updates are complete by checking the status of your accelerator: the status changes from IN_PROGRESS to DEPLOYED.
    func allowCustomRoutingTraffic(input: AllowCustomRoutingTrafficInput) async throws -> AllowCustomRoutingTrafficOutputResponse
    /// Create an accelerator. An accelerator includes one or more listeners that process inbound connections and direct traffic to one or more endpoint groups, each of which includes endpoints, such as Network Load Balancers. Global Accelerator is a global service that supports endpoints in multiple Amazon Web Services Regions but you must specify the US West (Oregon) Region to create, update, or otherwise work with accelerators. That is, for example, specify --region us-west-2 on AWS CLI commands.
    func createAccelerator(input: CreateAcceleratorInput) async throws -> CreateAcceleratorOutputResponse
    /// Create a custom routing accelerator. A custom routing accelerator directs traffic to one of possibly thousands of Amazon EC2 instance destinations running in a single or multiple virtual private clouds (VPC) subnet endpoints. Be aware that, by default, all destination EC2 instances in a VPC subnet endpoint cannot receive traffic. To enable all destinations to receive traffic, or to specify individual port mappings that can receive traffic, see the [ AllowCustomRoutingTraffic](https://docs.aws.amazon.com/global-accelerator/latest/api/API_AllowCustomRoutingTraffic.html) operation. Global Accelerator is a global service that supports endpoints in multiple Amazon Web Services Regions but you must specify the US West (Oregon) Region to create, update, or otherwise work with accelerators. That is, for example, specify --region us-west-2 on AWS CLI commands.
    func createCustomRoutingAccelerator(input: CreateCustomRoutingAcceleratorInput) async throws -> CreateCustomRoutingAcceleratorOutputResponse
    /// Create an endpoint group for the specified listener for a custom routing accelerator. An endpoint group is a collection of endpoints in one Amazon Web Services Region.
    func createCustomRoutingEndpointGroup(input: CreateCustomRoutingEndpointGroupInput) async throws -> CreateCustomRoutingEndpointGroupOutputResponse
    /// Create a listener to process inbound connections from clients to a custom routing accelerator. Connections arrive to assigned static IP addresses on the port range that you specify.
    func createCustomRoutingListener(input: CreateCustomRoutingListenerInput) async throws -> CreateCustomRoutingListenerOutputResponse
    /// Create an endpoint group for the specified listener. An endpoint group is a collection of endpoints in one Amazon Web Services Region. A resource must be valid and active when you add it as an endpoint.
    func createEndpointGroup(input: CreateEndpointGroupInput) async throws -> CreateEndpointGroupOutputResponse
    /// Create a listener to process inbound connections from clients to an accelerator. Connections arrive to assigned static IP addresses on a port, port range, or list of port ranges that you specify.
    func createListener(input: CreateListenerInput) async throws -> CreateListenerOutputResponse
    /// Delete an accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups). To disable the accelerator, update the accelerator to set Enabled to false. When you create an accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. Alternatively, you can bring your own IP address ranges to Global Accelerator and assign IP addresses from those ranges. The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them. As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see [Identity and access management](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html) in the Global Accelerator Developer Guide.
    func deleteAccelerator(input: DeleteAcceleratorInput) async throws -> DeleteAcceleratorOutputResponse
    /// Delete a custom routing accelerator. Before you can delete an accelerator, you must disable it and remove all dependent resources (listeners and endpoint groups). To disable the accelerator, update the accelerator to set Enabled to false. When you create a custom routing accelerator, by default, Global Accelerator provides you with a set of two static IP addresses. The IP addresses are assigned to your accelerator for as long as it exists, even if you disable the accelerator and it no longer accepts or routes traffic. However, when you delete an accelerator, you lose the static IP addresses that are assigned to the accelerator, so you can no longer route traffic by using them. As a best practice, ensure that you have permissions in place to avoid inadvertently deleting accelerators. You can use IAM policies with Global Accelerator to limit the users who have permissions to delete an accelerator. For more information, see [Identity and access management](https://docs.aws.amazon.com/global-accelerator/latest/dg/auth-and-access-control.html) in the Global Accelerator Developer Guide.
    func deleteCustomRoutingAccelerator(input: DeleteCustomRoutingAcceleratorInput) async throws -> DeleteCustomRoutingAcceleratorOutputResponse
    /// Delete an endpoint group from a listener for a custom routing accelerator.
    func deleteCustomRoutingEndpointGroup(input: DeleteCustomRoutingEndpointGroupInput) async throws -> DeleteCustomRoutingEndpointGroupOutputResponse
    /// Delete a listener for a custom routing accelerator.
    func deleteCustomRoutingListener(input: DeleteCustomRoutingListenerInput) async throws -> DeleteCustomRoutingListenerOutputResponse
    /// Delete an endpoint group from a listener.
    func deleteEndpointGroup(input: DeleteEndpointGroupInput) async throws -> DeleteEndpointGroupOutputResponse
    /// Delete a listener from an accelerator.
    func deleteListener(input: DeleteListenerInput) async throws -> DeleteListenerOutputResponse
    /// Specify the Amazon EC2 instance (destination) IP addresses and ports for a VPC subnet endpoint that cannot receive traffic for a custom routing accelerator. You can deny traffic to all destinations in the VPC endpoint, or deny traffic to a specified list of destination IP addresses and ports. Note that you cannot specify IP addresses or ports outside of the range that you configured for the endpoint group. After you make changes, you can verify that the updates are complete by checking the status of your accelerator: the status changes from IN_PROGRESS to DEPLOYED.
    func denyCustomRoutingTraffic(input: DenyCustomRoutingTrafficInput) async throws -> DenyCustomRoutingTrafficOutputResponse
    /// Releases the specified address range that you provisioned to use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and deletes the corresponding address pool. Before you can release an address range, you must stop advertising it by using [WithdrawByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/WithdrawByoipCidr.html) and you must not have any accelerators that are using static IP addresses allocated from its address range. For more information, see [Bring your own IP addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the Global Accelerator Developer Guide.
    func deprovisionByoipCidr(input: DeprovisionByoipCidrInput) async throws -> DeprovisionByoipCidrOutputResponse
    /// Describe an accelerator.
    func describeAccelerator(input: DescribeAcceleratorInput) async throws -> DescribeAcceleratorOutputResponse
    /// Describe the attributes of an accelerator.
    func describeAcceleratorAttributes(input: DescribeAcceleratorAttributesInput) async throws -> DescribeAcceleratorAttributesOutputResponse
    /// Describe a custom routing accelerator.
    func describeCustomRoutingAccelerator(input: DescribeCustomRoutingAcceleratorInput) async throws -> DescribeCustomRoutingAcceleratorOutputResponse
    /// Describe the attributes of a custom routing accelerator.
    func describeCustomRoutingAcceleratorAttributes(input: DescribeCustomRoutingAcceleratorAttributesInput) async throws -> DescribeCustomRoutingAcceleratorAttributesOutputResponse
    /// Describe an endpoint group for a custom routing accelerator.
    func describeCustomRoutingEndpointGroup(input: DescribeCustomRoutingEndpointGroupInput) async throws -> DescribeCustomRoutingEndpointGroupOutputResponse
    /// The description of a listener for a custom routing accelerator.
    func describeCustomRoutingListener(input: DescribeCustomRoutingListenerInput) async throws -> DescribeCustomRoutingListenerOutputResponse
    /// Describe an endpoint group.
    func describeEndpointGroup(input: DescribeEndpointGroupInput) async throws -> DescribeEndpointGroupOutputResponse
    /// Describe a listener.
    func describeListener(input: DescribeListenerInput) async throws -> DescribeListenerOutputResponse
    /// List the accelerators for an Amazon Web Services account.
    func listAccelerators(input: ListAcceleratorsInput) async throws -> ListAcceleratorsOutputResponse
    /// Lists the IP address ranges that were specified in calls to [ProvisionByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/ProvisionByoipCidr.html), including the current state and a history of state changes.
    func listByoipCidrs(input: ListByoipCidrsInput) async throws -> ListByoipCidrsOutputResponse
    /// List the custom routing accelerators for an Amazon Web Services account.
    func listCustomRoutingAccelerators(input: ListCustomRoutingAcceleratorsInput) async throws -> ListCustomRoutingAcceleratorsOutputResponse
    /// List the endpoint groups that are associated with a listener for a custom routing accelerator.
    func listCustomRoutingEndpointGroups(input: ListCustomRoutingEndpointGroupsInput) async throws -> ListCustomRoutingEndpointGroupsOutputResponse
    /// List the listeners for a custom routing accelerator.
    func listCustomRoutingListeners(input: ListCustomRoutingListenersInput) async throws -> ListCustomRoutingListenersOutputResponse
    /// Provides a complete mapping from the public accelerator IP address and port to destination EC2 instance IP addresses and ports in the virtual public cloud (VPC) subnet endpoint for a custom routing accelerator. For each subnet endpoint that you add, Global Accelerator creates a new static port mapping for the accelerator. The port mappings don't change after Global Accelerator generates them, so you can retrieve and cache the full mapping on your servers. If you remove a subnet from your accelerator, Global Accelerator removes (reclaims) the port mappings. If you add a subnet to your accelerator, Global Accelerator creates new port mappings (the existing ones don't change). If you add or remove EC2 instances in your subnet, the port mappings don't change, because the mappings are created when you add the subnet to Global Accelerator. The mappings also include a flag for each destination denoting which destination IP addresses and ports are allowed or denied traffic.
    func listCustomRoutingPortMappings(input: ListCustomRoutingPortMappingsInput) async throws -> ListCustomRoutingPortMappingsOutputResponse
    /// List the port mappings for a specific EC2 instance (destination) in a VPC subnet endpoint. The response is the mappings for one destination IP address. This is useful when your subnet endpoint has mappings that span multiple custom routing accelerators in your account, or for scenarios where you only want to list the port mappings for a specific destination instance.
    func listCustomRoutingPortMappingsByDestination(input: ListCustomRoutingPortMappingsByDestinationInput) async throws -> ListCustomRoutingPortMappingsByDestinationOutputResponse
    /// List the endpoint groups that are associated with a listener.
    func listEndpointGroups(input: ListEndpointGroupsInput) async throws -> ListEndpointGroupsOutputResponse
    /// List the listeners for an accelerator.
    func listListeners(input: ListListenersInput) async throws -> ListListenersOutputResponse
    /// List all tags for an accelerator. For more information, see [Tagging in Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html) in the Global Accelerator Developer Guide.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// Provisions an IP address range to use with your Amazon Web Services resources through bring your own IP addresses (BYOIP) and creates a corresponding address pool. After the address range is provisioned, it is ready to be advertised using [ AdvertiseByoipCidr](https://docs.aws.amazon.com/global-accelerator/latest/api/AdvertiseByoipCidr.html). For more information, see [Bring your own IP addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the Global Accelerator Developer Guide.
    func provisionByoipCidr(input: ProvisionByoipCidrInput) async throws -> ProvisionByoipCidrOutputResponse
    /// Remove endpoints from a custom routing accelerator.
    func removeCustomRoutingEndpoints(input: RemoveCustomRoutingEndpointsInput) async throws -> RemoveCustomRoutingEndpointsOutputResponse
    /// Remove endpoints from an endpoint group. The RemoveEndpoints API operation is the recommended option for removing endpoints. The alternative is to remove endpoints by updating an endpoint group by using the [UpdateEndpointGroup](https://docs.aws.amazon.com/global-accelerator/latest/api/API_UpdateEndpointGroup.html) API operation. There are two advantages to using AddEndpoints to remove endpoints instead:
    ///
    /// * It's more convenient, because you only need to specify the endpoints that you want to remove. With the UpdateEndpointGroup API operation, you must specify all of the endpoints in the endpoint group except the ones that you want to remove from the group.
    ///
    /// * It's faster, because Global Accelerator doesn't need to resolve any endpoints. With the UpdateEndpointGroup API operation, Global Accelerator must resolve all of the endpoints that remain in the group.
    func removeEndpoints(input: RemoveEndpointsInput) async throws -> RemoveEndpointsOutputResponse
    /// Add tags to an accelerator resource. For more information, see [Tagging in Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html) in the Global Accelerator Developer Guide.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Remove tags from a Global Accelerator resource. When you specify a tag key, the action removes both that key and its associated value. The operation succeeds even if you attempt to remove tags from an accelerator that was already removed. For more information, see [Tagging in Global Accelerator](https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html) in the Global Accelerator Developer Guide.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// Update an accelerator. Global Accelerator is a global service that supports endpoints in multiple Amazon Web Services Regions but you must specify the US West (Oregon) Region to create, update, or otherwise work with accelerators. That is, for example, specify --region us-west-2 on AWS CLI commands.
    func updateAccelerator(input: UpdateAcceleratorInput) async throws -> UpdateAcceleratorOutputResponse
    /// Update the attributes for an accelerator.
    func updateAcceleratorAttributes(input: UpdateAcceleratorAttributesInput) async throws -> UpdateAcceleratorAttributesOutputResponse
    /// Update a custom routing accelerator.
    func updateCustomRoutingAccelerator(input: UpdateCustomRoutingAcceleratorInput) async throws -> UpdateCustomRoutingAcceleratorOutputResponse
    /// Update the attributes for a custom routing accelerator.
    func updateCustomRoutingAcceleratorAttributes(input: UpdateCustomRoutingAcceleratorAttributesInput) async throws -> UpdateCustomRoutingAcceleratorAttributesOutputResponse
    /// Update a listener for a custom routing accelerator.
    func updateCustomRoutingListener(input: UpdateCustomRoutingListenerInput) async throws -> UpdateCustomRoutingListenerOutputResponse
    /// Update an endpoint group. A resource must be valid and active when you add it as an endpoint.
    func updateEndpointGroup(input: UpdateEndpointGroupInput) async throws -> UpdateEndpointGroupOutputResponse
    /// Update a listener.
    func updateListener(input: UpdateListenerInput) async throws -> UpdateListenerOutputResponse
    /// Stops advertising an address range that is provisioned as an address pool. You can perform this operation at most once every 10 seconds, even if you specify different address ranges each time. It can take a few minutes before traffic to the specified addresses stops routing to Amazon Web Services because of propagation delays. For more information, see [Bring your own IP addresses (BYOIP)](https://docs.aws.amazon.com/global-accelerator/latest/dg/using-byoip.html) in the Global Accelerator Developer Guide.
    func withdrawByoipCidr(input: WithdrawByoipCidrInput) async throws -> WithdrawByoipCidrOutputResponse
}

public enum GlobalAcceleratorClientTypes {}
