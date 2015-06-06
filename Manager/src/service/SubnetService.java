package service;

import java.util.*;


import dao.impl.*;
import model.Link;

import model.Node;
import model.Subnet;

public class SubnetService {

	private SubnetDaoImpl subnetDaoImpl;
	private NodeDaoImpl nodeDaoImpl;
	private LinkDaoImpl linkDaoImpl;
	
	private NetworkDaoImpl NetworkDaoImpl;
	
	public void add(Subnet subnet) {
		subnetDaoImpl.save(subnet);
	}

	public List<Subnet> list() {
		return subnetDaoImpl.findAll(Subnet.class);
	}
	
	public List<Subnet> getWithNetwork(int network_id) {
		return subnetDaoImpl.find("from Subnet where network.id="+network_id);
	}
	
	public Subnet get(int id) {
		Subnet subnet = subnetDaoImpl.get(Subnet.class, id);
		return subnet;
	}
	
	public void delete(int id) {
		Subnet subnet = subnetDaoImpl.get(Subnet.class,id);
		subnet.getNodes().clear();
		subnet.getLinks().clear();		
		
		subnetDaoImpl.delete(subnet);
	}
	
	public void addNode(int subnet_id, int node_id) {
		
		Subnet subnet = subnetDaoImpl.get(Subnet.class, subnet_id);
		Node node = nodeDaoImpl.get(Node.class, node_id);
		subnet.getNodes().add(node);
		subnetDaoImpl.update(subnet);
	}
	
	public void deleteNode(int subnet_id, int node_id) {
		Subnet subnet = subnetDaoImpl.get(Subnet.class, subnet_id);
		Node node = nodeDaoImpl.get(Node.class, node_id);
		subnet.getNodes().remove(node);
		subnetDaoImpl.update(subnet);
	}
	
	public void addLink(int subnet_id, int link_id) {
		
		Subnet subnet = subnetDaoImpl.get(Subnet.class, subnet_id);
		Link link = linkDaoImpl.get(Link.class, link_id);
		subnet.getLinks().add(link);
		subnetDaoImpl.update(subnet);
	}
	
	public void deleteLink(int subnet_id, int link_id) {
		
		Subnet subnet = subnetDaoImpl.get(Subnet.class, subnet_id);
		Link link = linkDaoImpl.get(Link.class, link_id);
		subnet.getLinks().remove(link);
		subnetDaoImpl.update(subnet);
	}
	
	public SubnetDaoImpl getSubnetDaoImpl() {
		return subnetDaoImpl;
	}

	public void setSubnetDaoImpl(SubnetDaoImpl subnetDaoImpl) {
		this.subnetDaoImpl = subnetDaoImpl;
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

	public NetworkDaoImpl getNetworkDaoImpl() {
		return NetworkDaoImpl;
	}

	public void setNetworkDaoImpl(NetworkDaoImpl networkDaoImpl) {
		NetworkDaoImpl = networkDaoImpl;
	}



	

	
	
	

}
