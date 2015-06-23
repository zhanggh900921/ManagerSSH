package service;

import java.io.*;
import java.net.*;
import java.util.List;
import java.util.Properties;

import model.*;


import dao.impl.*;

public class FlowService {
	private NodeDaoImpl nodeDaoImpl;
	private NetworkDaoImpl networkDaoImpl;
	private SubnetService subnetService;
	private SubnetDaoImpl subnetDaoImpl;
	
	public static String getReturnData(String urlString) throws UnsupportedEncodingException {
		String res = ""; 
		try { 
		URL url = new URL(urlString);
		java.net.HttpURLConnection conn = (java.net.HttpURLConnection)url.openConnection();
		java.io.BufferedReader in = new java.io.BufferedReader(new java.io.InputStreamReader(conn.getInputStream(),"GBK"));
		String line;
		while ((line = in.readLine()) != null) {
		res += line;
		}
		in.close();
		} catch (Exception e) {
		System.out.println(e);
		}
		return res;
	}
	
	public long[] flowDecode(String s) {
		String[]ss = s.split("&");
		long[] rs = new long[ss.length];
		for(int i=0;i<20;i++) {
			rs[i] = Long.parseLong(ss[i]);
		}
		return rs;
	}
	
	public void save(long[] flows,int node_id) {
		
		Node node = nodeDaoImpl.get(Node.class,node_id);
		node.setIcnFlow(flows[5]+flows[7]);
		node.setIdnFlow(flows[12]+flows[14]);
		node.setIanFlow(flows[18]+flows[19]);
		node.setSum(flows[5]+flows[7]+flows[12]+flows[14]+flows[18]+flows[19]);
		nodeDaoImpl.update(node);
		
	}

	
	
	public void fetch(int i) {
		
		Properties props = new Properties();
		try {
			props.load(this.getClass().getClassLoader().getResourceAsStream("config/router.properties"));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		String name = props.getProperty("name"+i);
		String IP = props.getProperty("IP"+i);
		try {
			String s = getReturnData("http://"+IP+":6666/dataInfo?RouterName=/pku/217/"+name+"&method=throughput");
			long[] flows = flowDecode(s);
			save(flows,i);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
	}
	
	public void nodesFlowUpdate() {
		List<Node> nodes = nodeDaoImpl.findAll(Node.class);
		for(Node n:nodes) {
			if(n.isEnable()) {			
				fetch(n.getId());
			}
		}
	}
	
	public List<Network> networksFlowUpdate() {
		List<Network> networks = networkDaoImpl.findAll(Network.class);
		int icn=0,idn=0,ian=0,isn=0;
		for(Network n:networks) {
			if(n.getId()==1) {
				for(Node nn:n.getNodes()) {
					icn+=nn.getIcnFlow();
				}
				n.setFlow(icn);
			}
			else if(n.getId()==2) {
				for(Node nn:n.getNodes()) {
					idn+=nn.getIdnFlow();
				}
				n.setFlow(idn);
			}
			else if(n.getId()==3) {
				for(Node nn:n.getNodes()) {
					ian+=nn.getIanFlow();
				}
				n.setFlow(ian);
			}
			else if(n.getId()==4) {
				for(Node nn:n.getNodes()) {
					isn+=nn.getIsnFlow();
				}
				n.setFlow(isn);
			}
			networkDaoImpl.update(n);
		}
		return networks;
	}
	
	public List<Subnet> subnetFlowUpdate(int networkId) {
		List<Subnet> subnets = subnetService.getWithNetwork(networkId);
		
		if(networkId==1) {
			for(Subnet subnet:subnets) {
				int flow=0;
				for(Node n:subnet.getNodes())
					flow+=n.getIcnFlow();
				subnet.setFlow(flow);
				subnetDaoImpl.update(subnet);
			}
		}
		else if(networkId==2) {
			for(Subnet subnet:subnets) {
				int flow=0;
				for(Node n:subnet.getNodes())
					flow+=n.getIdnFlow();
				subnet.setFlow(flow);
				subnetDaoImpl.update(subnet);
			}
		}
		else if(networkId==3) {
			for(Subnet subnet:subnets) {
				int flow=0;
				for(Node n:subnet.getNodes())
					flow+=n.getIanFlow();
				subnet.setFlow(flow);
				subnetDaoImpl.update(subnet);
			}
		}
		else if(networkId==4) {
			for(Subnet subnet:subnets) {
				int flow=0;
				for(Node n:subnet.getNodes())
					flow+=n.getIsnFlow();
				subnet.setFlow(flow);
				subnetDaoImpl.update(subnet);
			}
		}
		return subnets;
	}

	public List<Node> get() {
		return nodeDaoImpl.findAll(Node.class);
	}
	
	public Node getById(int id) {
		return nodeDaoImpl.get(Node.class, id);
	}


	public NodeDaoImpl getNodeDaoImpl() {
		return nodeDaoImpl;
	}

	public void setNodeDaoImpl(NodeDaoImpl nodeDaoImpl) {
		this.nodeDaoImpl = nodeDaoImpl;
	}

	public NetworkDaoImpl getNetworkDaoImpl() {
		return networkDaoImpl;
	}

	public void setNetworkDaoImpl(NetworkDaoImpl networkDaoImpl) {
		this.networkDaoImpl = networkDaoImpl;
	}

	public SubnetService getSubnetService() {
		return subnetService;
	}

	public void setSubnetService(SubnetService subnetService) {
		this.subnetService = subnetService;
	}

	public SubnetDaoImpl getSubnetDaoImpl() {
		return subnetDaoImpl;
	}

	public void setSubnetDaoImpl(SubnetDaoImpl subnetDaoImpl) {
		this.subnetDaoImpl = subnetDaoImpl;
	}

	

	

	

	
	
	
	
	
}
