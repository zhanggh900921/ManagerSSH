package action;

import java.util.List;


import model.*;
import service.*;


import com.opensymphony.xwork2.ActionSupport;

public class BreakdownAction extends ActionSupport{
	
	private TopologyService topologyService;
	private List<Node> nodes;
	
	public String node() {
		
		nodes = topologyService.nodeList();
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
	



	
	
	
}
