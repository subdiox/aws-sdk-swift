// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// DAX is a managed caching service engineered for Amazon DynamoDB. DAX dramatically speeds up database reads by caching frequently-accessed data from DynamoDB, so applications can access that data with sub-millisecond latency. You can create a DAX cluster easily, using the AWS Management Console. With a few simple modifications to your code, your application can begin taking advantage of the DAX cluster and realize significant improvements in read performance.
public protocol DAXClientProtocol {
    /// Creates a DAX cluster. All nodes in the cluster run the same DAX caching software.
    ///
    /// - Parameter CreateClusterInput : [no documentation found]
    ///
    /// - Returns: `CreateClusterOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterAlreadyExistsFault` : You already have a DAX cluster with the given identifier.
    /// - `ClusterQuotaForCustomerExceededFault` : You have attempted to exceed the maximum number of DAX clusters for your AWS account.
    /// - `InsufficientClusterCapacityFault` : There are not enough system resources to create the cluster you requested (or to resize an already-existing cluster).
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterGroupStateFault` : One or more parameters in a parameter group are in an invalid state.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `InvalidVPCNetworkStateFault` : The VPC network is in an invalid state.
    /// - `NodeQuotaForClusterExceededFault` : You have attempted to exceed the maximum number of nodes for a DAX cluster.
    /// - `NodeQuotaForCustomerExceededFault` : You have attempted to exceed the maximum number of nodes for your AWS account.
    /// - `ParameterGroupNotFoundFault` : The specified parameter group does not exist.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    /// - `ServiceQuotaExceededException` : You have reached the maximum number of x509 certificates that can be created for encrypted clusters in a 30 day period. Contact AWS customer support to discuss options for continuing to create encrypted clusters.
    /// - `SubnetGroupNotFoundFault` : The requested subnet group name does not refer to an existing subnet group.
    /// - `TagQuotaPerResourceExceeded` : You have exceeded the maximum number of tags for this DAX cluster.
    func createCluster(input: CreateClusterInput) async throws -> CreateClusterOutput
    /// Creates a new parameter group. A parameter group is a collection of parameters that you apply to all of the nodes in a DAX cluster.
    ///
    /// - Parameter CreateParameterGroupInput : [no documentation found]
    ///
    /// - Returns: `CreateParameterGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterGroupStateFault` : One or more parameters in a parameter group are in an invalid state.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ParameterGroupAlreadyExistsFault` : The specified parameter group already exists.
    /// - `ParameterGroupQuotaExceededFault` : You have attempted to exceed the maximum number of parameter groups.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func createParameterGroup(input: CreateParameterGroupInput) async throws -> CreateParameterGroupOutput
    /// Creates a new subnet group.
    ///
    /// - Parameter CreateSubnetGroupInput : [no documentation found]
    ///
    /// - Returns: `CreateSubnetGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidSubnet` : An invalid subnet identifier was specified.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    /// - `SubnetGroupAlreadyExistsFault` : The specified subnet group already exists.
    /// - `SubnetGroupQuotaExceededFault` : The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.
    /// - `SubnetQuotaExceededFault` : The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.
    func createSubnetGroup(input: CreateSubnetGroupInput) async throws -> CreateSubnetGroupOutput
    /// Removes one or more nodes from a DAX cluster. You cannot use DecreaseReplicationFactor to remove the last node in a DAX cluster. If you need to do this, use DeleteCluster instead.
    ///
    /// - Parameter DecreaseReplicationFactorInput : [no documentation found]
    ///
    /// - Returns: `DecreaseReplicationFactorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `NodeNotFoundFault` : None of the nodes in the cluster have the given node ID.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func decreaseReplicationFactor(input: DecreaseReplicationFactorInput) async throws -> DecreaseReplicationFactorOutput
    /// Deletes a previously provisioned DAX cluster. DeleteCluster deletes all associated nodes, node endpoints and the DAX cluster itself. When you receive a successful response from this action, DAX immediately begins deleting the cluster; you cannot cancel or revert this action.
    ///
    /// - Parameter DeleteClusterInput : [no documentation found]
    ///
    /// - Returns: `DeleteClusterOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func deleteCluster(input: DeleteClusterInput) async throws -> DeleteClusterOutput
    /// Deletes the specified parameter group. You cannot delete a parameter group if it is associated with any DAX clusters.
    ///
    /// - Parameter DeleteParameterGroupInput : [no documentation found]
    ///
    /// - Returns: `DeleteParameterGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterGroupStateFault` : One or more parameters in a parameter group are in an invalid state.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ParameterGroupNotFoundFault` : The specified parameter group does not exist.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func deleteParameterGroup(input: DeleteParameterGroupInput) async throws -> DeleteParameterGroupOutput
    /// Deletes a subnet group. You cannot delete a subnet group if it is associated with any DAX clusters.
    ///
    /// - Parameter DeleteSubnetGroupInput : [no documentation found]
    ///
    /// - Returns: `DeleteSubnetGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    /// - `SubnetGroupInUseFault` : The specified subnet group is currently in use.
    /// - `SubnetGroupNotFoundFault` : The requested subnet group name does not refer to an existing subnet group.
    func deleteSubnetGroup(input: DeleteSubnetGroupInput) async throws -> DeleteSubnetGroupOutput
    /// Returns information about all provisioned DAX clusters if no cluster identifier is specified, or about a specific DAX cluster if a cluster identifier is supplied. If the cluster is in the CREATING state, only cluster level information will be displayed until all of the nodes are successfully provisioned. If the cluster is in the DELETING state, only cluster level information will be displayed. If nodes are currently being added to the DAX cluster, node endpoint information and creation time for the additional nodes will not be displayed until they are completely provisioned. When the DAX cluster state is available, the cluster is ready for use. If nodes are currently being removed from the DAX cluster, no endpoint information for the removed nodes is displayed.
    ///
    /// - Parameter DescribeClustersInput : [no documentation found]
    ///
    /// - Returns: `DescribeClustersOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func describeClusters(input: DescribeClustersInput) async throws -> DescribeClustersOutput
    /// Returns the default system parameter information for the DAX caching software.
    ///
    /// - Parameter DescribeDefaultParametersInput : [no documentation found]
    ///
    /// - Returns: `DescribeDefaultParametersOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func describeDefaultParameters(input: DescribeDefaultParametersInput) async throws -> DescribeDefaultParametersOutput
    /// Returns events related to DAX clusters and parameter groups. You can obtain events specific to a particular DAX cluster or parameter group by providing the name as a parameter. By default, only the events occurring within the last 24 hours are returned; however, you can retrieve up to 14 days' worth of events if necessary.
    ///
    /// - Parameter DescribeEventsInput : [no documentation found]
    ///
    /// - Returns: `DescribeEventsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func describeEvents(input: DescribeEventsInput) async throws -> DescribeEventsOutput
    /// Returns a list of parameter group descriptions. If a parameter group name is specified, the list will contain only the descriptions for that group.
    ///
    /// - Parameter DescribeParameterGroupsInput : [no documentation found]
    ///
    /// - Returns: `DescribeParameterGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ParameterGroupNotFoundFault` : The specified parameter group does not exist.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func describeParameterGroups(input: DescribeParameterGroupsInput) async throws -> DescribeParameterGroupsOutput
    /// Returns the detailed parameter list for a particular parameter group.
    ///
    /// - Parameter DescribeParametersInput : [no documentation found]
    ///
    /// - Returns: `DescribeParametersOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ParameterGroupNotFoundFault` : The specified parameter group does not exist.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func describeParameters(input: DescribeParametersInput) async throws -> DescribeParametersOutput
    /// Returns a list of subnet group descriptions. If a subnet group name is specified, the list will contain only the description of that group.
    ///
    /// - Parameter DescribeSubnetGroupsInput : [no documentation found]
    ///
    /// - Returns: `DescribeSubnetGroupsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    /// - `SubnetGroupNotFoundFault` : The requested subnet group name does not refer to an existing subnet group.
    func describeSubnetGroups(input: DescribeSubnetGroupsInput) async throws -> DescribeSubnetGroupsOutput
    /// Adds one or more nodes to a DAX cluster.
    ///
    /// - Parameter IncreaseReplicationFactorInput : [no documentation found]
    ///
    /// - Returns: `IncreaseReplicationFactorOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InsufficientClusterCapacityFault` : There are not enough system resources to create the cluster you requested (or to resize an already-existing cluster).
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `InvalidVPCNetworkStateFault` : The VPC network is in an invalid state.
    /// - `NodeQuotaForClusterExceededFault` : You have attempted to exceed the maximum number of nodes for a DAX cluster.
    /// - `NodeQuotaForCustomerExceededFault` : You have attempted to exceed the maximum number of nodes for your AWS account.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func increaseReplicationFactor(input: IncreaseReplicationFactorInput) async throws -> IncreaseReplicationFactorOutput
    /// List all of the tags for a DAX cluster. You can call ListTags up to 10 times per second, per account.
    ///
    /// - Parameter ListTagsInput : [no documentation found]
    ///
    /// - Returns: `ListTagsOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidARNFault` : The Amazon Resource Name (ARN) supplied in the request is not valid.
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func listTags(input: ListTagsInput) async throws -> ListTagsOutput
    /// Reboots a single node of a DAX cluster. The reboot action takes place as soon as possible. During the reboot, the node status is set to REBOOTING. RebootNode restarts the DAX engine process and does not remove the contents of the cache.
    ///
    /// - Parameter RebootNodeInput : [no documentation found]
    ///
    /// - Returns: `RebootNodeOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `NodeNotFoundFault` : None of the nodes in the cluster have the given node ID.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func rebootNode(input: RebootNodeInput) async throws -> RebootNodeOutput
    /// Associates a set of tags with a DAX resource. You can call TagResource up to 5 times per second, per account.
    ///
    /// - Parameter TagResourceInput : [no documentation found]
    ///
    /// - Returns: `TagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidARNFault` : The Amazon Resource Name (ARN) supplied in the request is not valid.
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    /// - `TagQuotaPerResourceExceeded` : You have exceeded the maximum number of tags for this DAX cluster.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutput
    /// Removes the association of tags from a DAX resource. You can call UntagResource up to 5 times per second, per account.
    ///
    /// - Parameter UntagResourceInput : [no documentation found]
    ///
    /// - Returns: `UntagResourceOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidARNFault` : The Amazon Resource Name (ARN) supplied in the request is not valid.
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    /// - `TagNotFoundFault` : The tag does not exist.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutput
    /// Modifies the settings for a DAX cluster. You can use this action to change one or more cluster configuration parameters by specifying the parameters and the new values.
    ///
    /// - Parameter UpdateClusterInput : [no documentation found]
    ///
    /// - Returns: `UpdateClusterOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `ClusterNotFoundFault` : The requested cluster ID does not refer to an existing DAX cluster.
    /// - `InvalidClusterStateFault` : The requested DAX cluster is not in the available state.
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterGroupStateFault` : One or more parameters in a parameter group are in an invalid state.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ParameterGroupNotFoundFault` : The specified parameter group does not exist.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func updateCluster(input: UpdateClusterInput) async throws -> UpdateClusterOutput
    /// Modifies the parameters of a parameter group. You can modify up to 20 parameters in a single request by submitting a list parameter name and value pairs.
    ///
    /// - Parameter UpdateParameterGroupInput : [no documentation found]
    ///
    /// - Returns: `UpdateParameterGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidParameterCombinationException` : Two or more incompatible parameters were specified.
    /// - `InvalidParameterGroupStateFault` : One or more parameters in a parameter group are in an invalid state.
    /// - `InvalidParameterValueException` : The value for a parameter is invalid.
    /// - `ParameterGroupNotFoundFault` : The specified parameter group does not exist.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    func updateParameterGroup(input: UpdateParameterGroupInput) async throws -> UpdateParameterGroupOutput
    /// Modifies an existing subnet group.
    ///
    /// - Parameter UpdateSubnetGroupInput : [no documentation found]
    ///
    /// - Returns: `UpdateSubnetGroupOutput` : [no documentation found]
    ///
    /// - Throws: One of the exceptions listed below __Possible Exceptions__.
    ///
    /// __Possible Exceptions:__
    /// - `InvalidSubnet` : An invalid subnet identifier was specified.
    /// - `ServiceLinkedRoleNotFoundFault` : The specified service linked role (SLR) was not found.
    /// - `SubnetGroupNotFoundFault` : The requested subnet group name does not refer to an existing subnet group.
    /// - `SubnetInUse` : The requested subnet is being used by another subnet group.
    /// - `SubnetQuotaExceededFault` : The request cannot be processed because it would exceed the allowed number of subnets in a subnet group.
    func updateSubnetGroup(input: UpdateSubnetGroupInput) async throws -> UpdateSubnetGroupOutput
}

public enum DAXClientTypes {}
