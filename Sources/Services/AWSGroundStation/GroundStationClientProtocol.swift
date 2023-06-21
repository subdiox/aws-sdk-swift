// Code generated by smithy-swift-codegen. DO NOT EDIT!

import ClientRuntime

/// Welcome to the AWS Ground Station API Reference. AWS Ground Station is a fully managed service that enables you to control satellite communications, downlink and process satellite data, and scale your satellite operations efficiently and cost-effectively without having to build or manage your own ground station infrastructure.
public protocol GroundStationClientProtocol {
    /// Cancels a contact with a specified contact ID.
    func cancelContact(input: CancelContactInput) async throws -> CancelContactOutputResponse
    /// Creates a Config with the specified configData parameters. Only one type of configData can be specified.
    func createConfig(input: CreateConfigInput) async throws -> CreateConfigOutputResponse
    /// Creates a DataflowEndpoint group containing the specified list of DataflowEndpoint objects. The name field in each endpoint is used in your mission profile DataflowEndpointConfig to specify which endpoints to use during a contact. When a contact uses multiple DataflowEndpointConfig objects, each Config must match a DataflowEndpoint in the same group.
    func createDataflowEndpointGroup(input: CreateDataflowEndpointGroupInput) async throws -> CreateDataflowEndpointGroupOutputResponse
    /// Creates an Ephemeris with the specified EphemerisData.
    func createEphemeris(input: CreateEphemerisInput) async throws -> CreateEphemerisOutputResponse
    /// Creates a mission profile. dataflowEdges is a list of lists of strings. Each lower level list of strings has two elements: a from ARN and a to ARN.
    func createMissionProfile(input: CreateMissionProfileInput) async throws -> CreateMissionProfileOutputResponse
    /// Deletes a Config.
    func deleteConfig(input: DeleteConfigInput) async throws -> DeleteConfigOutputResponse
    /// Deletes a dataflow endpoint group.
    func deleteDataflowEndpointGroup(input: DeleteDataflowEndpointGroupInput) async throws -> DeleteDataflowEndpointGroupOutputResponse
    /// Deletes an ephemeris
    func deleteEphemeris(input: DeleteEphemerisInput) async throws -> DeleteEphemerisOutputResponse
    /// Deletes a mission profile.
    func deleteMissionProfile(input: DeleteMissionProfileInput) async throws -> DeleteMissionProfileOutputResponse
    /// Describes an existing contact.
    func describeContact(input: DescribeContactInput) async throws -> DescribeContactOutputResponse
    /// Describes an existing ephemeris.
    func describeEphemeris(input: DescribeEphemerisInput) async throws -> DescribeEphemerisOutputResponse
    /// For use by AWS Ground Station Agent and shouldn't be called directly. Gets the latest configuration information for a registered agent.
    func getAgentConfiguration(input: GetAgentConfigurationInput) async throws -> GetAgentConfigurationOutputResponse
    /// Returns Config information. Only one Config response can be returned.
    func getConfig(input: GetConfigInput) async throws -> GetConfigOutputResponse
    /// Returns the dataflow endpoint group.
    func getDataflowEndpointGroup(input: GetDataflowEndpointGroupInput) async throws -> GetDataflowEndpointGroupOutputResponse
    /// Returns the number of reserved minutes used by account.
    func getMinuteUsage(input: GetMinuteUsageInput) async throws -> GetMinuteUsageOutputResponse
    /// Returns a mission profile.
    func getMissionProfile(input: GetMissionProfileInput) async throws -> GetMissionProfileOutputResponse
    /// Returns a satellite.
    func getSatellite(input: GetSatelliteInput) async throws -> GetSatelliteOutputResponse
    /// Returns a list of Config objects.
    func listConfigs(input: ListConfigsInput) async throws -> ListConfigsOutputResponse
    /// Returns a list of contacts. If statusList contains AVAILABLE, the request must include groundStation, missionprofileArn, and satelliteArn.
    func listContacts(input: ListContactsInput) async throws -> ListContactsOutputResponse
    /// Returns a list of DataflowEndpoint groups.
    func listDataflowEndpointGroups(input: ListDataflowEndpointGroupsInput) async throws -> ListDataflowEndpointGroupsOutputResponse
    /// List existing ephemerides.
    func listEphemerides(input: ListEphemeridesInput) async throws -> ListEphemeridesOutputResponse
    /// Returns a list of ground stations.
    func listGroundStations(input: ListGroundStationsInput) async throws -> ListGroundStationsOutputResponse
    /// Returns a list of mission profiles.
    func listMissionProfiles(input: ListMissionProfilesInput) async throws -> ListMissionProfilesOutputResponse
    /// Returns a list of satellites.
    func listSatellites(input: ListSatellitesInput) async throws -> ListSatellitesOutputResponse
    /// Returns a list of tags for a specified resource.
    func listTagsForResource(input: ListTagsForResourceInput) async throws -> ListTagsForResourceOutputResponse
    /// For use by AWS Ground Station Agent and shouldn't be called directly. Registers a new agent with AWS Ground Station.
    func registerAgent(input: RegisterAgentInput) async throws -> RegisterAgentOutputResponse
    /// Reserves a contact using specified parameters.
    func reserveContact(input: ReserveContactInput) async throws -> ReserveContactOutputResponse
    /// Assigns a tag to a resource.
    func tagResource(input: TagResourceInput) async throws -> TagResourceOutputResponse
    /// Deassigns a resource tag.
    func untagResource(input: UntagResourceInput) async throws -> UntagResourceOutputResponse
    /// For use by AWS Ground Station Agent and shouldn't be called directly. Update the status of the agent.
    func updateAgentStatus(input: UpdateAgentStatusInput) async throws -> UpdateAgentStatusOutputResponse
    /// Updates the Config used when scheduling contacts. Updating a Config will not update the execution parameters for existing future contacts scheduled with this Config.
    func updateConfig(input: UpdateConfigInput) async throws -> UpdateConfigOutputResponse
    /// Updates an existing ephemeris
    func updateEphemeris(input: UpdateEphemerisInput) async throws -> UpdateEphemerisOutputResponse
    /// Updates a mission profile. Updating a mission profile will not update the execution parameters for existing future contacts.
    func updateMissionProfile(input: UpdateMissionProfileInput) async throws -> UpdateMissionProfileOutputResponse
}

public enum GroundStationClientTypes {}
