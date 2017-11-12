package com.etc.jingjing.client;

import java.awt.BorderLayout;
import java.awt.EventQueue;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.net.UnknownHostException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.DefaultListModel;
import javax.swing.ImageIcon;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;
import javax.swing.JScrollPane;
import javax.swing.JList;
import javax.swing.JButton;
import javax.swing.JLabel;

import com.etc.jingjing.dao.OnlineUserDao;
import com.etc.jingjing.dao.impl.OnlineUserDaoImpl;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.thread.SignerClientRead;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;
import com.etc.jingjing.util.SignerClientToClientMain;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;

import javax.swing.JTextField;

import java.awt.Font;
import java.awt.SystemColor;

public class SignerClient extends JFrame implements ActionListener{
	private Socket socket;
	private OutputStream os;
	private MyObjectOutputStream oos;
	private InputStream is;
	private MyObjectInputStream ois;
	private JPanel contentPane;
	private JTextArea inputArea;
	private JScrollPane inputScroll, messageScroll;
	private JList showmessage;
	private JButton send, sendFile, snake;
	private JLabel adress_info, adress, port_info, port;
	private Message message;
	public static String name = "";
	private String ip;
	private OnlineUserDao ou = new OnlineUserDaoImpl();
	public static DefaultListModel dlmClinetMessage = new DefaultListModel();
	private JLabel lblNewLabel;
	private JLabel lblNewLabel_1;
	/**
	 * Create the frame.
	 */
	public SignerClient(String ip,String name, Socket socket) {
		this.name=name;
		this.ip=ip;
		this.socket=socket;
		setTitle("��" + name + "������");
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 700, 520);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		inputScroll = new JScrollPane();
		inputScroll.setBounds(10, 357, 392, 97);
		contentPane.add(inputScroll);

		inputArea = new JTextArea();
		inputScroll.setViewportView(inputArea);

		messageScroll = new JScrollPane();
		messageScroll.setBounds(10, 10, 392, 291);
		contentPane.add(messageScroll);

		showmessage = new JList(dlmClinetMessage);
		messageScroll.setViewportView(showmessage);
		
		send = new JButton("������Ϣ");
//		send.setContentAreaFilled(false);
		send.setBackground(SystemColor.activeCaption);
		send.setFont(new Font("��Բ", Font.PLAIN, 15));
		send.addActionListener(this);
		send.setBounds(416, 402, 127, 52);
		contentPane.add(send);

		adress_info = new JLabel("�Է�IP��");
		adress_info.setBounds(412, 12, 108, 21);
		contentPane.add(adress_info);

		adress = new JLabel("");
		adress.setBounds(412, 43, 108, 21);
		contentPane.add(adress);

		port_info = new JLabel("�Է��˿ڣ�");
		port_info.setBounds(412, 74, 108, 21);
		contentPane.add(port_info);

		port = new JLabel("");
		port.setBounds(412, 105, 108, 21);
		contentPane.add(port);

		sendFile = new JButton("�����ļ�");
	//	sendFile.setContentAreaFilled(false);
		sendFile.setBackground(SystemColor.info);
		sendFile.setFont(new Font("��Բ", Font.PLAIN, 15));
		sendFile.addActionListener(this);
		sendFile.setBounds(136, 314, 108, 35);
		contentPane.add(sendFile);

		snake = new JButton("���ڶ���");
		snake.setBackground(SystemColor.info);
//		snake.setBackground(SystemColor.activeCaption);
		snake.setFont(new Font("��Բ", Font.PLAIN, 15));
//		snake.setContentAreaFilled(false);
		snake.setBounds(10, 314, 108, 35);
		contentPane.add(snake);
		
		lblNewLabel = new JLabel("");
		lblNewLabel.setIcon(new ImageIcon("image/38.jpg"));
		lblNewLabel.setBounds(0, 0, 694, 493);
		contentPane.add(lblNewLabel);
		
		lblNewLabel_1 = new JLabel("New label");
		lblNewLabel_1.setBounds(547, 10, 121, 83);
		contentPane.add(lblNewLabel_1);

		try {
//			socket = new Socket("127.0.0.1", 8888);
			dlmClinetMessage.addElement("���ӳɹ������Կ�ʼ�����ˣ�");
			os = socket.getOutputStream();
			oos = new MyObjectOutputStream(os);
		} catch (UnknownHostException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		// �������߳�
//		Thread th1=new Thread(new SignerClientRead(socket, message, ip, name, this));
//		th1.start();

	}
	
	@Override
	public void actionPerformed(ActionEvent e) {
		// TODO Auto-generated method stub
		if(e.getSource()==send){
			if (inputArea.getText() != null || inputArea.getText() != "") {
				message = new Message();
				// message.setIp(adress.getText());
				// message.setPort(port.getText());
				message.setContain(inputArea.getText());
				message.setFlag("single_chat");
				message.setIp(ip);
				message.setPort("");

				try {
					os = socket.getOutputStream();
					oos = new MyObjectOutputStream(os);
					oos.writeObject(message);
					oos.flush();

					Thread.sleep(200);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				} catch (InterruptedException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				dlmClinetMessage.addElement(message.getContain());
				inputArea.setText("");
			} else {
				JOptionPane.showMessageDialog(null, "������Ϣ����Ϊ�գ�", "����",
						JOptionPane.ERROR_MESSAGE);
			}
		}else if(e.getSource()==sendFile){
			JFileChooser jfc = new JFileChooser();
			jfc.setFileSelectionMode(JFileChooser.FILES_ONLY);
			jfc.showDialog(new JLabel(), "ѡ��");
			File file = jfc.getSelectedFile();

			if (file != null) {
				name = ou.queryOnlineUserNameByIp("/" + ip
						 );
				setTitle("��" + name + "������");

				message = new Message();
				// message.setIp(adress.getText());
				// message.setPort(port.getText());
				message.setFlag("send_File");
				message.setContain(file.getName());
				System.out.println(file.getFreeSpace());
				System.out.println(file.getTotalSpace());
				System.out.println(file.getUsableSpace());
				
				message.setIp(ip);
				message.setPort("");
				
				try {
					os = socket.getOutputStream();
					oos = new MyObjectOutputStream(os);
					oos.writeObject(message);
					oos.flush();
					DataInputStream dis=new DataInputStream(new FileInputStream(file));  
		            DataOutputStream dos=new DataOutputStream(socket.getOutputStream());  
		            //ObjectOutputStream oos=new ObjectOutputStream(s.getOutputStream());  
		            //oos.writeObject(f);  
		            dos.writeLong(file.length());  
		            dos.writeUTF(file.getName());  
		            System.out.println("���ȣ�"+file.length());  
		            int count=-1,sum=0;
		            byte[] buffer=new byte[1024*1024];  
		            while((count=dis.read(buffer))!=-1){  
		                dos.write(buffer,0,count);  
		                sum+=count;  
		                System.out.println("�Դ���"+sum+"byte");  
		            } 
		            System.out.println("������ϣ�");  
		            dos.flush();
				} catch (IOException e2) {
					// TODO: handle exception
					e2.printStackTrace();
				}
				
				
//				byte[] buffer = new byte[1024];
//				FileInputStream fis = null;
//
//				// ����Ҫ����newһ��os
//
//				try {
//					os = socket.getOutputStream();
//					oos = new MyObjectOutputStream(os);
//					oos.writeObject(message);
//					oos.flush();
//
//					fis = new FileInputStream(file);
//
//					while (fis.read(buffer) > 0) {
//						os.write(buffer);
//						os.flush();
//					}
//					
//				} catch (IOException e1) {
//					// TODO Auto-generated catch block
//					e1.printStackTrace();
//				}
//				dlmClinetMessage.addElement("�ɹ����ͣ�" + file.getName());
			}
		}else if(e.getSource()==snake){
			new Thread(new Runnable() {
				
				@Override
				public void run() {
					for (int i = 0; i < 20; i++) {// ʹ��forѭ���ô�����20��
						int newPoint = (int) (100 + Math.pow(-1, i) * 10);// ����ѭ�����������µ��λ��
						setLocation(newPoint, newPoint);// ���ô������ʾλ��
						try {
							Thread.sleep(50);// �߳�����0.05����ʵ�ֶ�̬Ч��
						} catch (InterruptedException e) {
							e.printStackTrace();
						}
					}	
				}
			}).start();// �������߳�
			
			message = new Message();
			// message.setIp(adress.getText());
			// message.setPort(port.getText());
			message.setContain("������һ��������");
			message.setFlag("snake");
			message.setIp(ip);
			message.setPort("");

			try {
				os = socket.getOutputStream();
				oos = new MyObjectOutputStream(os);
				oos.writeObject(message);
				oos.flush();

				Thread.sleep(200);
			} catch (IOException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			} catch (InterruptedException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			dlmClinetMessage.addElement("�㷢����һ��������");
		}
	}

}
