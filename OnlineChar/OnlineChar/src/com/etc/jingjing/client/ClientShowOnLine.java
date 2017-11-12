package com.etc.jingjing.client;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JList;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.ListSelectionModel;
import javax.swing.border.EmptyBorder;
import javax.swing.event.ListSelectionEvent;
import javax.swing.event.ListSelectionListener;

import com.etc.jingjing.entity.OnlineUser;
import com.etc.jingjing.thread.ClientMainRead;
import com.etc.jingjing.thread.ClientShowOnLineRead;
import com.etc.jingjing.thread.ReflushOnLineUserList;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;
import com.etc.jingjing.util.MyStaticFrame;
import java.awt.Font;
import java.awt.SystemColor;

public class ClientShowOnLine extends JFrame implements ActionListener {

	private JPanel contentPane;
	private  JList list;
	private JButton back,talk;
	public static DefaultListModel<String> dlm=new DefaultListModel<String>();
	private Map<String, Socket> onLineUserMap=new HashMap<String, Socket>();
	private Socket socket;

	/**
	 * Create the frame.
	 */
	public ClientShowOnLine(Socket socket) {
		this.socket=socket;
		
		setBounds(100, 100, 565, 505);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JScrollPane scrollPane = new JScrollPane();
		scrollPane.setBounds(34, 29, 233, 379);
		contentPane.add(scrollPane);
		
		list = new JList();
		list.setModel(dlm);
		list.getSelectionModel().setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
		list.addListSelectionListener(new ListSelectionListener() {
			@Override
			public void valueChanged(ListSelectionEvent e) {
				//e表示的当前点击的组件对象
				JList checkedlist=(JList) e.getSource();
				ListSelectionModel lsm=checkedlist.getSelectionModel();
				//当我们进行选择时，valueChanged会被多次激活，在操作不停止的情况下，getValueIsAdjusting
				//值都会true，完成最后操作时getValueIsAdjusting返回false，通过这个方法返回值的判断，就可以知道我们
				//当前操作结束后的选择是哪项
				if(e.getValueIsAdjusting()==false&&list.getSelectedIndex()!=-1){
//					System.out.println("当前的选中项是"+list.getSelectedIndex());
					talk.setEnabled(true);
				}
			}
		});
		scrollPane.setViewportView(list);
		
		back = new JButton("返回");
		back.setBackground(SystemColor.textHighlight);
		back.setFont(new Font("微软雅黑 Light", Font.PLAIN, 20));
		back.setBounds(372, 350, 105, 48);
		back.addActionListener(this);
		contentPane.add(back);
		
		talk = new JButton("与TA聊天");
//		talk.setContentAreaFilled(false);
		talk.setBackground(SystemColor.textHighlight);
		talk.setFont(new Font("幼圆", Font.PLAIN, 15));
		talk.setBounds(372, 219, 105, 48);
		talk.addActionListener(ClientShowOnLine.this);
		talk.setEnabled(false);
		contentPane.add(talk);
		
		JLabel lblNewLabel = new JLabel("");
		lblNewLabel.setBounds(0, 0, 547, 458);
		lblNewLabel.setIcon(new ImageIcon("image/27.jpg"));
		contentPane.add(lblNewLabel);
		
		Thread reflushOnLineUserList=new Thread(new ReflushOnLineUserList(socket));
		reflushOnLineUserList.start();
		
//		Thread clientShowOnLineRead=new Thread(new ClientShowOnLineRead(socket));
//		clientShowOnLineRead.start();
	}
	
	
	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==back){
			ClientShowOnLine.this.dispose();
		}else if(e.getSource()==talk){
			if(list.getSelectedIndex()==-1){
				System.out.println("没有选择任何用户");
			}else{
				System.out.println("选择的是"+list.getSelectedValue().toString());
				String ip,name;
				ip=list.getSelectedValue().toString().split("/")[1];
				name=list.getSelectedValue().toString().split("/")[2];
				
				MyStaticFrame.signerClient=new SignerClient(ip,name,socket);
				MyStaticFrame.signerClient.setVisible(true);
//				ClientMain.chatwitchone.put(ip, signerClient);
			}
		}
	}
}