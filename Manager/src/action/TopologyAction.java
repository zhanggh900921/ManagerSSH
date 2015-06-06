package action;

import java.util.*;

import com.opensymphony.xwork2.ActionSupport;
import model.Link;
import model.Node;
import model.Subnet;
import service.*;

public class TopologyAction extends ActionSupport{
	private TopologyService topologyService;
	

	
	
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
	
	public String list() {
		nodes = topologyService.nodeList();
		links = topologyService.linkList();
		
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

	

	


	
}
