package service;

import java.util.*;


import dao.impl.*;
import model.Link;

import model.Network;
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
	
	public void virtualization(int networkId, int nodeNum, int subnetId) {
		Network network = NetworkDaoImpl.get(Network.class, networkId);

		List<Node> nodes=null;
		List<Link> links=null;
		Subnet subnet = subnetDaoImpl.get(Subnet.class, subnetId);
		
		switch (nodeNum) {//����Ϊ4--13�ڵ�����⻯
			case 4:
				nodes = nodeDaoImpl.find("from Node where id in (2,3,9,10)");
				links = linkDaoImpl.find("from Link where id in (5,6,8,14)");			
				break;
			case 5:
				nodes = nodeDaoImpl.find("from Node where id in (2,3,8,9,10)");
				links = linkDaoImpl.find("from Link where id in (5,6,8,,9,10,14)");			
				break;
			case 6:
				nodes = nodeDaoImpl.find("from Node where id in (1,3,4,5,7,8)");
				links = linkDaoImpl.find("from Link where id in (3,4,12,13,2,10,11)");			
				break;
			case 7:
				nodes = nodeDaoImpl.find("from Node where id in (1,3,4,5,7,8,10)");
				links = linkDaoImpl.find("from Link where id in (3,4,12,13,2,10,11,9,14)");			
				break;
			case 8:
				nodes = nodeDaoImpl.find("from Node where id in (4,7,8,10,41,42,44,45)");
				links = linkDaoImpl.find("from Link where id in (9,11,13,21,22,24,26,27)");			
				break;
			case 9:
				nodes = nodeDaoImpl.find("from Node where id in (4,7,8,10,41,42,43,44,45)");
				links = linkDaoImpl.find("from Link where id in (9,11,13,21,22,24,26,27,23,25)");			
				break;
			case 10:
				nodes = nodeDaoImpl.find("from Node where id in (1,2,3,4,5,6,7,8,9,10)");
				links = linkDaoImpl.find("from Link where id in (1,2,3,4,5,6,7,8,9,10,11,12,13,14)");			
				break;
			case 11:
				nodes = nodeDaoImpl.find("from Node where id in (4,7,8,10,41,42,43,44,45,9,31)");
				links = linkDaoImpl.find("from Link where id in (9,11,13,21,22,24,26,27,23,25,8,17,28)");			
				break;
			case 12:
				nodes = nodeDaoImpl.find("from Node where id in (4,7,8,10,41,42,43,44,45,9,31,3)");
				links = linkDaoImpl.find("from Link where id in (9,11,13,21,22,24,26,27,23,25,8,17,28,10,14)");			
				break;
			case 13:
				nodes = nodeDaoImpl.find("from Node where id in (4,7,8,10,41,42,43,44,45,9,31,30,32)");
				links = linkDaoImpl.find("from Link where id in (9,11,13,21,22,24,26,27,23,25,8,17,28,18,19,20)");			
				break;
		}
		
		subnet.getNodes().clear();
		subnet.getLinks().clear();
		for(Node n:nodes)
			subnet.getNodes().add(n);
		for(Link l:links)
			subnet.getLinks().add(l);
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