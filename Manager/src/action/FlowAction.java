package action;

import java.util.List;


import model.*;
import service.*;


import com.opensymphony.xwork2.ActionSupport;

public class FlowAction extends ActionSupport{
	
	private NetworkService networkService;
	private List<Network> networks;
	private Network network;
	
	private SubnetService subnetService;
	private List<Subnet> subnets;
	private Subnet subnet;
	
	private List<Node> nodes;
	private FlowService flowService;
	
	public String network() {
		
		networks = flowService.networksFlowUpdate();
		
		return SUCCESS;
	}
	
	public String subnet() {
		networks = networkService.list();
		return SUCCESS;
	}
	
	public String subnet2() {
		network = networkService.get(network.getId());
		subnets = flowService.subnetFlowUpdate(network.getId());
			
		return SUCCESS;
	}
	
	public String node() {
		flowService.nodesFlowUpdate();
		nodes = flowService.get();
		
		return SUCCESS;
	}
	
	public String update() {
		flowService.nodesFlowUpdate();
		
		return SUCCESS;
	}

	public NetworkService getNetworkService() {
		return networkService;
	}


	public void setNetworkService(NetworkService networkService) {
		this.networkService = networkService;
	}


	public List<Network> getNetworks() {
		return networks;
	}


	public void setNetworks(List<Network> networks) {
		this.networks = networks;
	}


	public Network getNetwork() {
		return network;
	}


	public void setNetwork(Network network) {
		this.network = network;
	}

	public SubnetService getSubnetService() {
		return subnetService;
	}

	public void setSubnetService(SubnetService subnetService) {
		this.subnetService = subnetService;
	}

	public List<Subnet> getSubnets() {
		return subnets;
	}

	public void setSubnets(List<Subnet> subnets) {
		this.subnets = subnets;
	}

	public Subnet getSubnet() {
		return subnet;
	}

	public void setSubnet(Subnet subnet) {
		this.subnet = subnet;
	}

	public FlowService getFlowService() {
		return flowService;
	}

	public void setFlowService(FlowService flowService) {
		this.flowService = flowService;
	}

	

	public List<Node> getNodes() {
		return nodes;
	}

	public void setNodes(List<Node> nodes) {
		this.nodes = nodes;
	}


	
	
	
}
