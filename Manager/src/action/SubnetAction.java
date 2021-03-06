package action;

import java.util.List;
import java.util.Set;

import com.opensymphony.xwork2.ActionSupport;
import service.*;

import model.*;

public class SubnetAction extends ActionSupport{
	private SubnetService subnetService;
	private List<Subnet> subnets;
	private Subnet subnet;
	
	private NetworkService networkService;
	private List<Network> networks;
	private Network network;
	
	private Set<Node> nodes;
	private Set<Link> links;
	
	private String[] addNodes;
	private String[] deleteNodes;
	private String[] addLinks;
	private String[] deleteLinks;
	
	//�������⻯����
	private int nodeNum;
	
	

	public String register() {
		networks = networkService.list();
		return SUCCESS;
	}
	
	public String registerOK() {
		network = networkService.get(subnet.getNetwork().getId());
		subnet.setNetwork(network);
		subnet.setFlowLimit(subnet.getFlowLimit()*1024);
		subnetService.add(subnet);
		return SUCCESS;
	}
	
	public String category() {
		networks = networkService.list();
		
		return SUCCESS;
	}
	
	public String addMessage() {
		subnets = subnetService.list();
		return SUCCESS;
	}
	
	public String list() {
		subnets = subnetService.getWithNetwork(network.getId());
		network = networkService.get(network.getId());
		return SUCCESS;
	}
	
	public String form() {
		int subnetId = subnet.getId();
		subnet = subnetService.get(subnetId);
		network = subnet.getNetwork();
		nodes = networkService.getNodes(network.getId());
		links = networkService.getLinks(network.getId());
		return SUCCESS;
	}
	
	public String intelligentForm() {
		

		int subnetId = subnet.getId();
		subnet = subnetService.get(subnetId);
		network = subnet.getNetwork();
		nodes = network.getNodes();
		links = network.getLinks();
		
		return SUCCESS;
	}
	
	public String virtualization() {
		
		int subnetId = subnet.getId();
		int networkId = network.getId();
				
		subnetService.virtualization(networkId,nodeNum,subnetId);
		return SUCCESS;
	}
	
	public String change() {
		
		if(addNodes!=null)
		for(String nodeId:addNodes)
		subnetService.addNode(subnet.getId(),Integer.parseInt(nodeId));
				
		if(deleteNodes!=null)
		for(String nodeId:deleteNodes)
		subnetService.deleteNode(subnet.getId(),Integer.parseInt(nodeId));
				
		if(addLinks!=null)
		for(String LinkId:addLinks)
		subnetService.addLink(subnet.getId(),Integer.parseInt(LinkId));
				
		if(deleteLinks!=null)
		for(String LinkId:deleteLinks)
		subnetService.deleteLink(subnet.getId(),Integer.parseInt(LinkId));
		
		
				
		return SUCCESS;
	}
	
	public String show() {
		int subnetId = subnet.getId();
		subnet = subnetService.get(subnetId);
		network = subnet.getNetwork();
		return SUCCESS;
	}
	
	public String delete() {
		
		subnetService.delete(subnet.getId());
		return SUCCESS;
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



	public Subnet getSubnet() {
		return subnet;
	}



	public void setSubnet(Subnet subnet) {
		this.subnet = subnet;
	}

	public Network getNetwork() {
		return network;
	}

	public void setNetwork(Network network) {
		this.network = network;
	}

	public Set<Node> getNodes() {
		return nodes;
	}

	public void setNodes(Set<Node> nodes) {
		this.nodes = nodes;
	}

	public Set<Link> getLinks() {
		return links;
	}

	public void setLinks(Set<Link> links) {
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

	public int getNodeNum() {
		return nodeNum;
	}

	public void setNodeNum(int nodeNum) {
		this.nodeNum = nodeNum;
	}








	
	
	
	
}
