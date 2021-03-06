package action;

import java.util.*;

import model.*;

import service.*;

import com.opensymphony.xwork2.ActionSupport;

public class NetworkAction extends ActionSupport{
	
	private NetworkService networkService;
	private List<Network> networks;
	private Network network;
	
	private TopologyService topologyService;	
	private List<Node> nodes;
	private List<Link> links;
	
	private FlowService flowService;

	private String[] addNodes;
	private String[] deleteNodes;
	private String[] addLinks;
	private String[] deleteLinks;
	
	private String[] bankwidth;
	private String[] flowLimit;
	
	List<Integer> errorLink;
	
	public String list() {
		
		networks = flowService.networksFlowUpdate();
		
		return SUCCESS;
	}
	
	public String add() {
		networkService.add(network.getId());
		return SUCCESS;
	}
	
	public String delete() {
		
		networkService.delete(network.getId());
		return SUCCESS;
	}

	
	public String form() {
		int networkId = network.getId();
		network = networkService.get(networkId);
		nodes = topologyService.nodeList();
		links = topologyService.linkList();
		return SUCCESS;
	}
	
	public String change() {
		errorLink = topologyService.bankwidthConfig(bankwidth,network.getId());
		
		topologyService.flowLimitConfig(flowLimit,network.getId());
		
		if(addNodes!=null)
		for(String nodeId:addNodes)
		networkService.addNode(network.getId(),Integer.parseInt(nodeId));
				
		if(deleteNodes!=null)
		for(String nodeId:deleteNodes)
		networkService.deleteNode(network.getId(),Integer.parseInt(nodeId));
				
		if(addLinks!=null)
		for(String LinkId:addLinks)
		networkService.addLink(network.getId(),Integer.parseInt(LinkId));
				
		if(deleteLinks!=null)
		for(String LinkId:deleteLinks)
		networkService.deleteLink(network.getId(),Integer.parseInt(LinkId));
				
		if(errorLink.size()!=0)
			return ERROR;
		return SUCCESS;
	}
	
	public String show() {
		int networkId = network.getId();
		network = networkService.get(networkId);
		
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

	public TopologyService getTopologyService() {
		return topologyService;
	}

	public void setTopologyService(TopologyService topologyService) {
		this.topologyService = topologyService;
	}

	public List<Node> getNodes() {
		return nodes;
	}

	public void setNodes(List<Node> nodes) {
		this.nodes = nodes;
	}

	public List<Link> getLinks() {
		return links;
	}

	public void setLinks(List<Link> links) {
		this.links = links;
	}

	public String[] getAddNodes() {
		return addNodes;
	}

	public void setAddNodes(String[] addNodes) {
		this.addNodes = addNodes;
	}

	public String[] getDeleteNodes() {
		return deleteNodes;
	}

	public void setDeleteNodes(String[] deleteNodes) {
		this.deleteNodes = deleteNodes;
	}

	public String[] getAddLinks() {
		return addLinks;
	}

	public void setAddLinks(String[] addLinks) {
		this.addLinks = addLinks;
	}

	public String[] getDeleteLinks() {
		return deleteLinks;
	}

	public void setDeleteLinks(String[] deleteLinks) {
		this.deleteLinks = deleteLinks;
	}

	public FlowService getFlowService() {
		return flowService;
	}

	public void setFlowService(FlowService flowService) {
		this.flowService = flowService;
	}

	public String[] getBankwidth() {
		return bankwidth;
	}

	public void setBankwidth(String[] bankwidth) {
		this.bankwidth = bankwidth;
	}

	public String[] getFlowLimit() {
		return flowLimit;
	}

	public void setFlowLimit(String[] flowLimit) {
		this.flowLimit = flowLimit;
	}

	public List<Integer> getErrorLink() {
		return errorLink;
	}

	public void setErrorLink(List<Integer> errorLink) {
		this.errorLink = errorLink;
	}

	

	

	
}
