package com.etc.jingjing.client;

import java.awt.Color;
import java.awt.EventQueue;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.FocusEvent;
import java.awt.event.FocusListener;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.net.Socket;

import javax.swing.ButtonGroup;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JPasswordField;
import javax.swing.JRadioButton;
import javax.swing.JTextField;
import javax.swing.SwingUtilities;
import javax.swing.border.EmptyBorder;

import com.etc.jingjing.biz.OnlineUserBiz;
import com.etc.jingjing.biz.UserBiz;
import com.etc.jingjing.biz.impl.OnlineUserBizImpl;
import com.etc.jingjing.biz.impl.UserBizImpl;
import com.etc.jingjing.entity.Message;
import com.etc.jingjing.entity.User;
import com.etc.jingjing.util.MyObjectInputStream;
import com.etc.jingjing.util.MyObjectOutputStream;

import org.jvnet.substance.SubstanceLookAndFeel;
import org.jvnet.substance.skin.*;

import javax.swing.ImageIcon;

import java.awt.Font;

public class Registered extends JFrame {

	private JPanel contentPane;
	private JTextField tfid;
	private JLabel lblNewLabel_3;
	private JLabel lblNewLabel_4;
	private JButton btnNewButton_1;
	private JButton btnNewButton_2;
	private JPasswordField passwf;
	private JPasswordField passwf1;
	private UserBiz userbiz=new UserBizImpl();
	private OnlineUserBiz onlineuserbiz=new OnlineUserBizImpl();
	private JLabel label;
	private Socket socket=null;
	private InputStream is;
	private OutputStream os;
	private MyObjectInputStream ois;
	private MyObjectOutputStream oos;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		JFrame.setDefaultLookAndFeelDecorated(true);
		JDialog.setDefaultLookAndFeelDecorated(true);

		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					SubstanceLookAndFeel.setSkin(new BusinessBlueSteelSkin());
					Registered frame = new Registered();
					frame.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the frame.
	 */
	public Registered() {
		super("xxͨѶע��ҳ��");
		
		Image a=this.getToolkit().getImage("image/feiji.png");
		this.setIconImage(a);
		setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
		setBounds(200, 20, 1500, 938);
		setResizable(false);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("<html>�������û�����</html>");
		lblNewLabel.setFont(new Font("΢���ź�", Font.PLAIN, 15));
		lblNewLabel.setForeground(Color.BLACK);
		lblNewLabel.setBounds(239, 342, 118, 24);
		contentPane.add(lblNewLabel);
		
		tfid = new JTextField();
		tfid.setBounds(390, 344, 154, 24);
		contentPane.add(tfid);
		tfid.addFocusListener(new FocusListener() {
			
			@Override
			public void focusLost(FocusEvent e) {
				 if(userbiz.isexist(tfid.getText())){
					 lblNewLabel_3.setText("<html><strong>�û����Ѵ���</strong></html>");
				 }else{
					 lblNewLabel_3.setText("");
				 }
				// TODO Auto-generated method stub
				
			}
			
			@Override
			public void focusGained(FocusEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		tfid.setColumns(10);
		
		JLabel lblNewLabel_1 = new JLabel("<html>���������룺</html>");
		lblNewLabel_1.setFont(new Font("΢���ź�", Font.PLAIN, 15));
		lblNewLabel_1.setForeground(Color.BLACK);
		lblNewLabel_1.setBounds(239, 417, 108, 27);
		contentPane.add(lblNewLabel_1);
		
		JLabel lblNewLabel_2 = new JLabel("<html>���ظ����룺</html>");
		lblNewLabel_2.setFont(new Font("΢���ź�", Font.PLAIN, 15));
		lblNewLabel_2.setForeground(Color.BLACK);
		lblNewLabel_2.setBounds(239, 457, 108, 24);
		contentPane.add(lblNewLabel_2);
		
		lblNewLabel_3 = new JLabel("");
		lblNewLabel_3.setForeground(Color.RED);
		lblNewLabel_3.setBounds(390, 381, 192, 24);
		contentPane.add(lblNewLabel_3);
		
		lblNewLabel_4 = new JLabel("");
		lblNewLabel_4.setForeground(Color.RED);
		lblNewLabel_4.setBounds(317, 494, 227, 24);
		contentPane.add(lblNewLabel_4);
		
		JButton btnNewButton = new JButton("����Ƿ����");
		btnNewButton.setBackground(Color.CYAN);
		btnNewButton.setContentAreaFilled(false);
		btnNewButton.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				if (tfid.getText().equals("")) {  
					lblNewLabel_3.setText("<html><strong>�û�������Ϊ��</strong></html>");  
	            }else if(userbiz.isexist(tfid.getText())){
					 lblNewLabel_3.setText("<html><strong>�û����Ѵ���</strong></html>");
	            }else{
	            	lblNewLabel_3.setText("<html><strong><font color=green>�û�������ʹ��<font></strong></html>");
	            }
				
				
			}
		});
		btnNewButton.setBounds(239, 377, 134, 27);
		contentPane.add(btnNewButton);
		
		btnNewButton_1 = new JButton("���ص�¼");
		btnNewButton_1.setFont(new Font("��Բ", Font.PLAIN, 15));
		btnNewButton_1.setBackground(Color.CYAN);
		btnNewButton_1.setForeground(Color.BLACK);
		btnNewButton_1.setContentAreaFilled(false);
		btnNewButton_1.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
			dispose();
			}
		});
		btnNewButton_1.setBounds(297, 584, 134, 46);
		contentPane.add(btnNewButton_1);
		
		btnNewButton_2 = new JButton("ȷ��ע��");
		btnNewButton_2.setFont(new Font("��Բ", Font.PLAIN, 15));
		btnNewButton_2.setBackground(Color.CYAN);
		btnNewButton_2.setContentAreaFilled(false);
		btnNewButton_2.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				String pass=new String(passwf.getPassword());
				String pass1=new String(passwf1.getPassword());
				
				if(!pass.equals(pass1)||pass.equals("")||pass.length()<6){
					

					JOptionPane.showMessageDialog(null, "ע��ʧ��");
				}else{
				
				
				User user=new User();
				user.setUser_name(tfid.getText());
				user.setUser_password(new String(passwf.getPassword()));
				
				Message message=new Message();
				message.setFlag("register");
				message.setContain(user);
				try {
					os=socket.getOutputStream();
					oos=new MyObjectOutputStream(os);
					oos.writeObject(message);
				} catch (IOException e1) {
					// TODO Auto-generated catch block
					e1.printStackTrace();
				}
				}
			}
		});

		btnNewButton_2.setBounds(445, 584, 134, 46);
		contentPane.add(btnNewButton_2);
		
		passwf = new JPasswordField();
		passwf.setBounds(390, 420, 154, 24);
		contentPane.add(passwf);
		
		passwf1 = new JPasswordField();
		passwf1.setBounds(390, 459, 154, 24);
		contentPane.add(passwf1);
		
		JRadioButton sex = new JRadioButton("��");
		sex.setFont(new Font("��Բ", Font.PLAIN, 15));
		sex.setBackground(Color.WHITE);
		
		sex.setBounds(390, 533, 54, 27);
		contentPane.add(sex);
		
		JRadioButton sex1 = new JRadioButton("Ů");
		sex1.setFont(new Font("��Բ", Font.PLAIN, 15));
		sex1.setBackground(Color.WHITE);
		sex1.setBounds(475, 533, 53, 27);
		contentPane.add(sex1);
		ButtonGroup bg= new ButtonGroup();
		bg.add(sex);
		bg.add(sex1);
		JLabel lblNewLabel_5 = new JLabel("<html><strong>��ѡ���Ա�</strong></html>");
		lblNewLabel_5.setForeground(Color.BLACK);
		lblNewLabel_5.setBounds(241, 537, 97, 18);
		contentPane.add(lblNewLabel_5);
		
		label = new JLabel("");
		label.setIcon(new ImageIcon("image/11.png"));
		label.setBackground(new Color(0, 204, 153));
		label.setBounds(213, 250, 460, 420);
		contentPane.add(label);
		
		JLabel label_1 = new JLabel("");
		label_1.setIcon(new ImageIcon("image\\jj3.jpg"));
		label_1.setBounds(0, 0, 1500, 938);
		contentPane.add(label_1);
		passwf1.addFocusListener(new FocusListener() {
			
			@Override
			public void focusLost(FocusEvent e) {
				// TODO Auto-generated method stub
				String pass=new String(passwf.getPassword());
				String pass1=new String(passwf1.getPassword());
				
				if(!pass.equals(pass1)){
					lblNewLabel_4.setText("<html><strong>�������벻һ��</strong></html>");
				}else if(pass.length()<6){
					lblNewLabel_4.setText("<html><strong>���볤�Ȳ���С��6λ</strong></html>");	
			    }else{
					lblNewLabel_4.setText("");
				}
			}
			
			@Override
			public void focusGained(FocusEvent e) {
				// TODO Auto-generated method stub
				
			}
		});
		
		new Thread(new Runnable() {
			@Override
			public void run() {
				try {
					socket=new Socket("127.0.0.1",8888);
					while(true){
						is=socket.getInputStream();
						ois=new MyObjectInputStream(is);
						Object obj=ois.readObject();
						if(obj!=null){
							if(obj instanceof Message){
								Message ms=(Message) obj;
								if(ms.getFlag().equals("regist_success")){
									System.out.println("ע��ɹ�");
									SwingUtilities.invokeLater(new Runnable() {
										
										@Override
										public void run() {
											// TODO Auto-generated method stub
											JOptionPane.showMessageDialog(null, "ע��ɹ���3����Զ��ر�");
										}
									});
									try {
										Thread.sleep(3000);
									} catch (InterruptedException e) {
										// TODO Auto-generated catch block
										e.printStackTrace();
									}
									dispose();
//									JOptionPane.showMessageDialog(null, "ע��ɹ�");
//									dispose();

									break;
								}else if(ms.getFlag().equals("regist_fail")){
									SwingUtilities.invokeLater(new Runnable() {
										
										@Override
										public void run() {
											// TODO Auto-generated method stub
											JOptionPane.showMessageDialog(null, "ע��ʧ��");
										}
									});
//									JOptionPane.showMessageDialog(null, "ע��ʧ��");
								}
							}
						}
					}
					
				} catch (IOException e1) {
					e1.printStackTrace();
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}
				
			}
		}).start();
	}
}
