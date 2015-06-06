package model;

import javax.persistence.*;


@Entity
public class Node_Network {
	
	@Id
	@GeneratedValue
	private int id;
 	@Column(nullable = false, columnDefinition="double default 0")
	private double flow=0;    //此处为设置对象的默认值，需要先把原来的表删除掉在设置
	
	@ManyToOne(targetEntity=Node.class)
	@JoinColumn(name="node_id" , referencedColumnName="node_id",nullable=false)
	private Node node;
	
	@ManyToOne(targetEntity=Network.class)
	@JoinColumn(name="network_id" , referencedColumnName="network_id",nullable=false)
	private Network network;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getFlow() {
		return flow;
	}

	public void setFlow(double flow) {
		this.flow = flow;
	}

	public Node getNode() {
		return node;
	}

	public void setNode(Node node) {
		this.node = node;
	}

	public Network getNetwork() {
		return network;
	}

	public void setNetwork(Network network) {
		this.network = network;
	}


	
	
}