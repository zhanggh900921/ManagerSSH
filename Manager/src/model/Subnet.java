package model;


import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;

@Entity
public class Subnet {
	@Id @Column(name="subnet_id")
	@GeneratedValue
	private int id;
	private String name;
	
	private long flow=0;    
	
	private long flowLimit;   
	
	
	@ManyToOne(targetEntity=Network.class)
	@JoinColumn(name="network_id" , referencedColumnName="network_id",nullable=true)
	private Network network;
	
	@ManyToMany(targetEntity=Node.class,fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinTable(name="node_subnet",
	joinColumns=@JoinColumn(name="subnet_id",referencedColumnName="subnet_id"),
	inverseJoinColumns=@JoinColumn(name="node_id",referencedColumnName="node_id")			
			)   //如果相对中间表中的数据进行修改，必须有这些，而不能用mapped by，还要设置cascade
	private Set<Node> nodes = new TreeSet<Node>();
	
	@ManyToMany(targetEntity=Link.class,fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinTable(name="link_subnet",
	joinColumns=@JoinColumn(name="subnet_id",referencedColumnName="subnet_id"),
	inverseJoinColumns=@JoinColumn(name="link_id",referencedColumnName="link_id")			
			)   //如果相对中间表中的数据进行修改，必须有这些，而不能用mapped by，还要设置cascade
	private Set<Link> links = new TreeSet<Link>();

	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public long getFlow() {
		return flow;
	}
	public void setFlow(long flow) {
		this.flow = flow;
	}
	public long getFlowLimit() {
		return flowLimit;
	}
	public void setFlowLimit(long flowLimit) {
		this.flowLimit = flowLimit;
	}

	
	
}
