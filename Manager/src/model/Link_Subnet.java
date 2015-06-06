package model;

import javax.persistence.*;


@Entity
public class Link_Subnet {
	
	@Id
	@GeneratedValue
	private int id;
	@Column(nullable = false, columnDefinition="double default 0")
	private double bankwidth=0;    //此处为设置对象的默认值，需要先把原来的表删除掉在设置
	
	@ManyToOne(targetEntity=Link.class)
	@JoinColumn(name="link_id" , referencedColumnName="link_id",nullable=false)
	private Link link;
	
	@ManyToOne(targetEntity=Subnet.class)
	@JoinColumn(name="subnet_id" , referencedColumnName="subnet_id",nullable=false)
	private Subnet subnet;

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

	public Subnet getSubnet() {
		return subnet;
	}

	public void setSubnet(Subnet subnet) {
		this.subnet = subnet;
	}
	
	
}