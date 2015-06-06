package service;

import java.util.List;
import java.util.Set;

import dao.*;
import dao.impl.*;

import model.*;

public class NetworkService {
	private NetworkDaoImpl networkDaoImpl;
	private NodeDaoImpl nodeDaoImpl;
	private LinkDaoImpl linkDaoImpl;

	public List<Network> list() {
		
		return networkDaoImpl.findAll(Network.class);
		
	}
	
	public void add(int id) {
		networkDaoImpl.update("update Network n set enable=1 where id ="+id);
	}

	public void delete(int id) {
		networkDaoImpl.update("update Network n set enable=0 where id ="+id);
		
	}
	
	public Network get(int network_id) {		
		return networkDaoImpl.get(Network.class, network_id); 		
	}
	
	public void addNode(int network_id, int node_id) {
		
		Network network = networkDaoImpl.get(Network.class, network_id);
		Node node = nodeDaoImpl.get(Node.class, node_id);
		network.getNodes().add(node);
		networkDaoImpl.update(network);
	}
	
	public void deleteNode(int network_id, int node_id) {
		Network network = networkDaoImpl.get(Network.class, network_id);
		Node node = nodeDaoImpl.get(Node.class, node_id);
		network.getNodes().remove(node);
		networkDaoImpl.update(network);
	}
	
	public Set<Node> getNodes(int network_id) {
		
		Network network = networkDaoImpl.get(Network.class, network_id);
		Set<Node> nodes = network.getNodes();
		return nodes;
	}
	
	public void addLink(int network_id, int link_id) {
		
		Network network = networkDaoImpl.get(Network.class, network_id);
		Link link = linkDaoImpl.get(Link.class, link_id);
		network.getLinks().add(link);
		networkDaoImpl.update(network);
	}
	
	public void deleteLink(int network_id, int link_id) {
		Network network = networkDaoImpl.get(Network.class, network_id);
		Link link = linkDaoImpl.get(Link.class, link_id);
		network.getLinks().remove(link);
		networkDaoImpl.update(network);
	}
	
	public Set<Link> getLinks(int network_id) {
		
		Network network = networkDaoImpl.get(Network.class, network_id);
		Set<Link> links = network.getLinks();
		return links;
	}
	public void save(Network network) {
		networkDaoImpl.update(network);
		
	}
	
	public NetworkDaoImpl getNetworkDaoImpl() {
		return networkDaoImpl;
	}

	public void setNetworkDaoImpl(NetworkDaoImpl networkDaoImpl) {
		this.networkDaoImpl = networkDaoImpl;
	}

	public NodeDaoImpl getNodeDaoImpl() {
		return nodeDaoImpl;
	}

	public void setNodeDaoImpl(NodeDaoImpl nodeDaoImpl) {
		this.nodeDaoImpl = nodeDaoImpl;
	}

	public LinkDaoImpl getLinkDaoImpl() {
		return linkDaoImpl;
	}

	public void setLinkDaoImpl(LinkDaoImpl linkDaoImpl) {
		this.linkDaoImpl = linkDaoImpl;
	}

	



	




	
	

}
