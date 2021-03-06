package service;

import java.io.*;
import java.net.*;
import java.util.*;

import org.json.*;

import model.*;


import dao.impl.*;

public class FlowService {
	private NodeDaoImpl nodeDaoImpl;
	private NetworkDaoImpl networkDaoImpl;
	private SubnetService subnetService;
	private SubnetDaoImpl subnetDaoImpl;
	
	public String getReturnData(String urlString) throws UnsupportedEncodingException {
		String res = ""; //获取JSON文件，字符串形式
		try { 
		URL url = new URL(urlString);
		HttpURLConnection conn = (HttpURLConnection)url.openConnection();
		BufferedReader in = new BufferedReader(new InputStreamReader(conn.getInputStream(),"GBK"));
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
	
	public Map<String,String> decodeJSON(String jsonString) throws JSONException {

        JSONObject jsonObject = new JSONObject(jsonString);//将JSON从字符串解析为哈希
        
        Map<String,String> result = new HashMap<String,String>();
        Iterator iterator = jsonObject.keys();
        String key = null;
        String value = null;
        
        while (iterator.hasNext()) {

            key = (String) iterator.next();
            value = jsonObject.getString(key);
            result.put(key, value);

        }
        return result;

    }
	
	public void save(Map<String,String> map, int node_id) {
		
		Node node = nodeDaoImpl.get(Node.class,node_id);//获取节点的流量，CPU，内存
		
		long icnFlow = Long.parseLong(map.get("icnRecvThroughput"));//获取内容网络吞吐量信息
		long idnFlow = Long.parseLong(map.get("idnSendpacket"))+Long.parseLong(map.get("idnRecvpacket"));
		long ianFlow = Long.parseLong(map.get("ipThroughput"));//获取IP网络吞吐量信息
		long isnFlow = (Long.parseLong(map.get("ipThroughput"))+Long.parseLong(map.get("idnSendpacket")))/2;//获取IP网络吞吐量信息
		long sum = icnFlow+idnFlow+ianFlow+isnFlow;//计算流量总和
		node.setIcnFlow(icnFlow);//流量信息存入数据库
		node.setIdnFlow(idnFlow);
		node.setIanFlow(ianFlow);
		node.setIsnFlow(isnFlow);
		node.setSum(sum);
		
		node.setCpu(Integer.parseInt(map.get("cpuLevel")));//获取CPU信息
		
		double free = Double.parseDouble((String) map.get("freeMemory"));//获取内存信息
		double total = Double.parseDouble((String) map.get("totalMemory"));
		int memory = (int)(((total-free)/total)*100);//计算内存使用率
		node.setMemory(memory);
		
		nodeDaoImpl.update(node);
		
	}

	
	
	public void fetch(int nodeId) { //获取单个节点的信息
		
		Properties props = new Properties();
		try {
			props.load(this.getClass().getClassLoader().getResourceAsStream("config/router.properties"));
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		String name = props.getProperty("name"+nodeId);
		String IP = props.getProperty("IP"+nodeId);
		try {
			String s = getReturnData("http://"+IP+":6666/dataInfo?RouterName="+name+"&method=throughput");
			Map<String,String> map = decodeJSON(s);
			save(map,nodeId);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		} catch (JSONException e) {
			e.printStackTrace();
		}
	}
	
	public void nodesFlowUpdate() {  //依次获取每个节点
		List<Node> nodes = nodeDaoImpl.findAll(Node.class);
		for(Node n:nodes) {
			n.setSum(n.getIcnFlow()+n.getIdnFlow()+n.getIsnFlow()+n.getIanFlow());
			nodeDaoImpl.update(n);
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
