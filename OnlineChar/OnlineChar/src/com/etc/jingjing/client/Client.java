package com.etc.jingjing.client;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Font;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.io.ObjectInputStream;
import java.net.Socket;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import javax.swing.border.EmptyBorder;

import org.jvnet.substance.SubstanceLookAndFeel;
import org.jvnet.substance.skin.BusinessBlueSteelSkin;

import com.etc.jingjing.biz.UserBiz;
import com.etc.jingjing.biz.impl.UserBizImpl;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.entity.User;
import com.etc.jingjing.thread.ClientLoginRead;
import com.etc.jingjing.util.MyInterface;
import com.etc.jingjing.util.MyObjectOutputStream;

public class Client extends JFrame implements MyInterface{

	private JPanel contentPane;
	private JTextField textField;
	private JPasswordField passwordField;
	private JButton login, regist;
	private UserBiz biz = new UserBizImpl();
	private String user_name, user_password;
	private JLabel headimage ;
	private JLabel lblNewLabel_1;
	
	Socket socket;
	
	
	
	
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		
//		EventQueue.invokeLater(new Runnable() {
//			public void run() {
//				try {
//	//				SubstanceLookAndFeel.setSkin(new BusinessBlueSteelSkin());
//					Client frame = new Client();
//					frame.setVisible(true);
//				} catch (Exception e) {
//					e.printStackTrace();
//				}
//			}
//		});
//		JFrame.setDefaultLookAndFeelDecorated(true);
//		JDialog.setDefaultLookAndFeelDecorated(true);
        SwingUtilities.invokeLater(new Runnable() {    
           
            public void run() {   
            	
//			SubstanceLookAndFeel.setSkin(new BusinessBlueSteelSkin());
				Client frame = new Client();
				frame.setVisible(true);
            }    
     });  
	}

	/**
	 * Create the frame.
	 */
	public Client() {
		super("xx通讯系统");
		Image a=this.getToolkit().getImage("image/feiji.png");
		this.setIconImage(a);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setResizable(false);
		setBounds(700, 200, 700, 455);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);

		JLabel lblNewLabel = new JLabel("<html><strong>用&nbsp;户&nbsp;名</strong></html>");
		lblNewLabel.setFont(new Font("幼圆", Font.PLAIN, 18));
		lblNewLabel.setForeground(Color.WHITE);
		lblNewLabel.setBounds(211, 88, 107, 33);
		contentPane.add(lblNewLabel);

		JLabel label = new JLabel("<html><strong>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码</strong></html>");
		label.setFont(new Font("幼圆", Font.PLAIN, 18));
		label.setForeground(Color.WHITE);
		label.setBounds(211, 198, 107, 33);
		contentPane.add(label);

		textField = new JTextField();
		//输入账号之后获得图片
		textField.addFocusListener(new FocusListener() {
			
			@Override
			public void focusLost(FocusEvent e) {
				// TODO Auto-generated method stub
				if(textField.getText().trim().equals("")){
					
				}
			}
			
			@Override
			public void focusGained(FocusEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		textField.setBounds(332, 95, 199, 21);
		contentPane.add(textField);
		textField.setColumns(10);

		login = new JButton("<html><strong>登录</strong></html>");
		login.setForeground(Color.WHITE);
		login.setFont(new Font("幼圆", Font.PLAIN, 20));
		login.setBackground(new Color(9, 163, 220));
//		login.setContentAreaFilled(false);
		login.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				user_name = textField.getText();
				user_password = new String(passwordField.getPassword());
				// 客户端不能直接访问数据库
//				new Thread(new Runnable() {
//					@Override
//					public void run() {
//						
//						try {
//							socket = new Socket("127.0.0.1", 8888);
//							String ip = socket.getLocalAddress().toString().split("/")[1];
//							String name = textField.getText();
//							User user = new User();
//							user.setUser_name(user_name);
//							user.setUser_password(user_password);
//							MyObjectOutputStream oos = new MyObjectOutputStream(socket.getOutputStream());
//							Message message=new Message();
//							message.setFlag("login_Check");
//							message.setContain(user);
//							oos.writeObject(message);
//							oos.flush();
//							System.out.println("客户端发送了登录信息");
//							Thread clientLoginRead=new Thread(new ClientLoginRead(socket,Client.this));
//							clientLoginRead.start();
//						} catch (Exception e) {
//							e.printStackTrace();
//						} 
//					}
//				}).start();
				
				
				
				 SwingUtilities.invokeLater(new Runnable() {
					@Override
					public void run() {
						
						try {
							socket = new Socket("127.0.0.1", 8888);
							String ip = socket.getLocalAddress().toString().split("/")[1];
							String name = textField.getText();
							User user = new User();
							user.setUser_name(user_name);
							user.setUser_password(user_password);
							MyObjectOutputStream oos = new MyObjectOutputStream(socket.getOutputStream());
							Message message=new Message();
							message.setFlag("login_Check");
							message.setContain(user);
							oos.writeObject(message);
							oos.flush();
							System.out.println("客户端发送了登录信息");
							Thread clientLoginRead=new Thread(new ClientLoginRead(socket,Client.this));
							clientLoginRead.start();
						} catch (Exception e) {
							e.printStackTrace();
						} 
					}
				});
			}
		});
		login.setBounds(172, 270, 107, 43);
		contentPane.add(login);
		regist = new JButton("<html><strong>注册</strong></html>");
//		regist.setContentAreaFilled(false);
		regist.setForeground(Color.WHITE);
		regist.setFont(new Font("幼圆", Font.PLAIN, 20));
		regist.setBackground(new Color(9, 163, 220));
		
		regist.addActionListener(new ActionListener() {
			
			public void actionPerformed(ActionEvent e) {
				Registered re = new Registered();
				re.setVisible(true);

			}
		});
		regist.setBounds(393, 270, 107, 43);
		contentPane.add(regist);

		passwordField = new JPasswordField();
		passwordField.setBounds(332, 205, 199, 21);
		contentPane.add(passwordField);
		
		headimage = new JLabel("");
		headimage.setBackground(Color.gray);
		headimage.setVisible(true);
		headimage.setBounds(24, 77, 165, 154);
		contentPane.add(headimage);
		
		lblNewLabel_1 = new JLabel("");
		ImageIcon im =  new ImageIcon("image/bb.jpg");
		im.setImage(im.getImage().getScaledInstance(647,305,Image.SCALE_DEFAULT));
		lblNewLabel_1.setIcon(new ImageIcon("image/123456.jpg")) ;
				
		lblNewLabel_1.setBounds(0, 0, 694, 420);
		contentPane.add(lblNewLabel_1);
	}

	@Override
	public void notiflush() {

		 SwingUtilities.invokeLater(new Runnable() {
			@Override
			public void run() {
				ClientMain cm=new ClientMain(socket);
				cm.setVisible(true);
				Client.this.dispose();
			}
			});
	}
}
