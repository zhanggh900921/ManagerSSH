package model;

import java.util.HashSet;
import java.util.Set;

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
	@Column(nullable = false, columnDefinition="double default 0")
	private double flow=0;    //此处为设置对象的默认值，需要先把原来的表删除掉在设置
	
	@Column(nullable = false, columnDefinition="double default 0")
	private double cost=0;    //此处为设置对象的默认值，需要先把原来的表删除掉在设置
	
	@ManyToOne(targetEntity=Network.class)
	@JoinColumn(name="network_id" , referencedColumnName="network_id",nullable=true)
	private Network network;
	
	@ManyToMany(targetEntity=Node.class,fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinTable(name="node_subnet",
	joinColumns=@JoinColumn(name="subnet_id",referencedColumnName="subnet_id"),
	inverseJoinColumns=@JoinColumn(name="node_id",referencedColumnName="node_id")			
			)   //如果相对中间表中的数据进行修改，必须有这些，而不能用mapped by，还要设置cascade
	private Set<Node> nodes = new HashSet<Node>();
	
	@ManyToMany(targetEntity=Link.class,fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinTable(name="link_subnet",
	joinColumns=@JoinColumn(name="subnet_id",referencedColumnName="subnet_id"),
	inverseJoinColumns=@JoinColumn(name="link_id",referencedColumnName="link_id")			
			)   //如果相对中间表中的数据进行修改，必须有这些，而不能用mapped by，还要设置cascade
	private Set<Link> links = new HashSet<Link>();

	
	
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
	public double getFlow() {
		return flow;
	}
	public void setFlow(double flow) {
		this.flow = flow;
	}
	public double getCost() {
		return cost;
	}
	public void setCost(double cost) {
		this.cost = cost;
	}
	
	
}
