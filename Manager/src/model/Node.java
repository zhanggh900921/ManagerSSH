package model;

import java.util.*;


import javax.persistence.*;

@Entity
public class Node {
	
	@Id @Column(name="node_id")
	
	private int id;   /*id没有设为递增，因为id要与名字对应，并且从1开始，这样做是为了画拓扑*/
	private String name;
	
	private boolean enable;

	
	@ManyToMany(targetEntity=Network.class,fetch=FetchType.EAGER)
	@JoinTable(name="node_network",
	joinColumns=@JoinColumn(name="node_id",referencedColumnName="node_id"),
	inverseJoinColumns=@JoinColumn(name="network_id",referencedColumnName="network_id")			
			)
	private Set<Network> networks = new HashSet<Network>();
	
	@ManyToMany(targetEntity=Subnet.class,fetch=FetchType.EAGER)
	@JoinTable(name="node_subnet",
	joinColumns=@JoinColumn(name="node_id",referencedColumnName="node_id"),
	inverseJoinColumns=@JoinColumn(name="subnet_id",referencedColumnName="subnet_id")			
			)
	private Set<Subnet> subnets = new HashSet<Subnet>();
	
	
	@ManyToMany(targetEntity=Link.class)
	@JoinTable(name="node_link",
	joinColumns=@JoinColumn(name="node_id",referencedColumnName="node_id"),
	inverseJoinColumns=@JoinColumn(name="link_id",referencedColumnName="link_id")			
			)
	private List<Link> links = new ArrayList<Link>();   //这里改为List，因为Ognl提取set的值不方便
	
	
	private long icnFlow;
	private long idnFlow;
	private long ianFlow;
	private long isnFlow;
	private long sum;
	
	private long icnFlowLimit;
	private long idnFlowLimit;
	private long ianFlowLimit;
	private long isnFlowLimit;
	
	private short cpu;
	private short memory;
	
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
	public Set<Network> getNetworks() {
		return networks;
	}
	public void setNetworks(Set<Network> networks) {
		this.networks = networks;
	}
	public Set<Subnet> getSubnets() {
		return subnets;
	}
	public void setSubnets(Set<Subnet> subnets) {
		this.subnets = subnets;
	}
	
	
	public List<Link> getLinks() {
		return links;
	}
	public void setLinks(List<Link> links) {
		this.links = links;
	}

	public boolean isEnable() {
		return enable;
	}
	public void setEnable(boolean enable) {
		this.enable = enable;
	}
	public long getIcnFlow() {
		return icnFlow;
	}
	public long getIdnFlow() {
		return idnFlow;
	}
	public void setIdnFlow(long idnFlow) {
		this.idnFlow = idnFlow;
	}
	public long getIanFlow() {
		return ianFlow;
	}
	public void setIanFlow(long ianFlow) {
		this.ianFlow = ianFlow;
	}
	public long getIsnFlow() {
		return isnFlow;
	}
	public void setIsnFlow(long isnFlow) {
		this.isnFlow = isnFlow;
	}
	public long getSum() {
		return sum;
	}
	public void setSum(long sum) {
		this.sum = sum;
	}
	public void setIcnFlow(long icnFlow) {
		this.icnFlow = icnFlow;
	}
	public long getIcnFlowLimit() {
		return icnFlowLimit;
	}
	public void setIcnFlowLimit(long icnFlowLimit) {
		this.icnFlowLimit = icnFlowLimit;
	}
	public long getIdnFlowLimit() {
		return idnFlowLimit;
	}
	public void setIdnFlowLimit(long idnFlowLimit) {
		this.idnFlowLimit = idnFlowLimit;
	}
	public long getIanFlowLimit() {
		return ianFlowLimit;
	}
	public void setIanFlowLimit(long ianFlowLimit) {
		this.ianFlowLimit = ianFlowLimit;
	}
	public long getIsnFlowLimit() {
		return isnFlowLimit;
	}
	public void setIsnFlowLimit(long isnFlowLimit) {
		this.isnFlowLimit = isnFlowLimit;
	}
	public short getCpu() {
		return cpu;
	}
	public void setCpu(short cpu) {
		this.cpu = cpu;
	}
	public short getMemory() {
		return memory;
	}
	public void setMemory(short memory) {
		this.memory = memory;
	}
	

	
	
	
}
