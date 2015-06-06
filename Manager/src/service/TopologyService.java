package service;


import java.util.*;

import model.*;

import dao.impl.*;


public class TopologyService {
	private NodeDaoImpl nodeDaoImpl;
	private LinkDaoImpl linkDaoImpl;
	
	
	public List<Node> nodeList() {
		
		return nodeDaoImpl.findAll(Node.class);
		
	}
	
	public List<Link> linkList() {
		
		return linkDaoImpl.findAll(Link.class);
		
	}
	
	
	public void add(int id) {
		nodeDaoImpl.update("update Node n set enable=1 where id ="+id);
	}

	public void delete(int id) {
		nodeDaoImpl.update("update Node n set enable=0 where id ="+id);
		
	}
	
	public List<Integer> bankwidthConfig(String[] bankwidth, int networkId) {
		List<Integer> rs = new ArrayList<Integer>();
		for(int i=1;i<bankwidth.length;i++) {
			if(bankwidth[i-1]!="") {
				int m = Integer.parseInt(bankwidth[i-1]);
				Link l = linkDaoImpl.get(Link.class, i);
				long icn = l.getIcnBw();
				long idn = l.getIcnBw();
				long ian = l.getIcnBw();
				long isn = l.getIcnBw();
				long sum = l.getSum();
				if(networkId==1) {
					if(idn+ian+isn+m>sum) {
						rs.add(i);
						continue;
					}
					l.setIcnBw(m);
				}
				else if(networkId==2) {
					if(icn+ian+isn+m>sum) {
						rs.add(i);
						continue;
					}
					l.setIdnBw(m);
				}
				else if(networkId==3) {
					if(idn+icn+isn+m>sum) {
						rs.add(i);
						continue;
					}
					l.setIanBw(m);
				}
				else if(networkId==4) {
					if(idn+ian+icn+m>sum) {
						rs.add(i);
						continue;
					}
					l.setIsnBw(m);
				}
				linkDaoImpl.update(l);
			}
		}
		return rs;
	}
	
	public void flowLimitConfig(String[] flowLimit, int networkId) {
		for(int i=1;i<flowLimit.length;i++) {
			if(flowLimit[i-1]!="") {
				long m = Integer.parseInt(flowLimit[i-1]);
				Node n = nodeDaoImpl.get(Node.class, i);
				if(networkId==1)
					n.setIcnFlowLimit(m);
				else if(networkId==2)
					n.setIdnFlowLimit(m);
				else if(networkId==3)
					n.setIanFlowLimit(m);
				else if(networkId==4)
					n.setIsnFlowLimit(m);
				nodeDaoImpl.update(n);
			}
		}
		
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
