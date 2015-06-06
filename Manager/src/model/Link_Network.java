package model;

import javax.persistence.*;


@Entity
public class Link_Network {
	
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false, columnDefinition="double default 0")
	private double bankwidth;
	
	@ManyToOne(targetEntity=Link.class)
	@JoinColumn(name="link_id" , referencedColumnName="link_id",nullable=false)
	private Link link;
	
	@ManyToOne(targetEntity=Network.class)
	@JoinColumn(name="network_id" , referencedColumnName="network_id",nullable=false)
	private Network network;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public double getBankwidth() {
		return bankwidth;
	}

	public void setBankwidth(double bankwidth) {
		this.bankwidth = bankwidth;
	}

	public Link getLink() {
		return link;
	}

	public void setLink(Link link) {
		this.link = link;
	}

	public Network getNetwork() {
		return network;
	}

	public void setNetwork(Network network) {
		this.network = network;
	}
	
	
	
	
}
