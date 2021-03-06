package action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import model.Link;
import model.Network;
import model.Node;
import service.*;

public class DemonstrationAction extends ActionSupport{
	private TopologyService topologyService;
	private NetworkService networkService;
	private FlowService flowService;
	private Network network;
	
	
	private List<Node> nodes;
	private List<Link> links;
	
	private Node node;
	
	public String nodeList() {
		nodes = topologyService.nodeList();
		return SUCCESS;
	}
	
	public String linkList() {
		links = topologyService.linkList();
		return SUCCESS;
	}
	
	public String node() {
		flowService.nodesFlowUpdate();
		nodes = topologyService.nodeList();
		links = topologyService.linkList();
		
		return SUCCESS;
	}
	
	public String node2() {
		nodes = topologyService.nodeList();
		links = topologyService.linkList();
		
		return SUCCESS;
	}
	
	public String judge() {
		
		network = networkService.get(3);
		
		return SUCCESS;
	}
	
	public String add() {
		topologyService.add(node.getId());
		return SUCCESS;
	}
	
	public String delete() {
		
		topologyService.delete(node.getId());
		return SUCCESS;
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

	public Node getNode() {
		return node;
	}

	public void setNode(Node node) {
		this.node = node;
	}

	public Network getNetwork() {
		return network;
	}

	public void setNetwork(Network network) {
		this.network = network;
	}

	public NetworkService getNetworkService() {
		return networkService;
	}

	public void setNetworkService(NetworkService networkService) {
		this.networkService = networkService;
	}

	public FlowService getFlowService() {
		return flowService;
	}

	public void setFlowService(FlowService flowService) {
		this.flowService = flowService;
	}
	
}
