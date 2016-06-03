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
import javax.persistence.OneToMany;

@Entity
public class Network {
	@Id @Column(name="network_id")
	
	private int id;
	private String name;
	private long flow;
	private boolean enable;
	
	@OneToMany(targetEntity=Subnet.class,mappedBy="network",fetch=FetchType.EAGER)
	private Set<Subnet> subnets = new HashSet<Subnet>();
	
	@ManyToMany(targetEntity=Node.class,fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinTable(name="node_network",
	joinColumns=@JoinColumn(name="network_id",referencedColumnName="network_id"),
	inverseJoinColumns=@JoinColumn(name="node_id",referencedColumnName="node_id")			
			)   //如果相对中间表中的数据进行修改，必须有这些，而不能用mapped by，还要设置cascade
	private Set<Node> nodes = new HashSet<Node>();
	
	@ManyToMany(targetEntity=Link.class,fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	@JoinTable(name="link_network",
	joinColumns=@JoinColumn(name="network_id",referencedColumnName="network_id"),
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
	public Set<Subnet> getSubnets() {
		return subnets;
	}
	public void setSubnets(Set<Subnet> subnets) {
		this.subnets = subnets;
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
	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	
	
	
	
}
