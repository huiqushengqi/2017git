package com.etc.jingjing.client;

import java.awt.BorderLayout;
import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JPanel;
import javax.swing.border.EmptyBorder;
import javax.swing.table.DefaultTableModel;
import javax.swing.ButtonGroup;
import javax.swing.GroupLayout;
import javax.swing.ImageIcon;
import javax.swing.JLabel;
import javax.swing.JTabbedPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.JTextField;
import javax.swing.JRadioButton;
import javax.swing.JButton;

import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.swing.JCheckBox;

import com.beancore.entity.Score;
import com.beancore.ui.MainFrame;


import java.awt.Font;
import java.awt.SystemColor;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;

import javax.swing.UIManager;
import java.awt.Color;
import javax.swing.JTextArea;

public class GUI1 extends JFrame implements ActionListener{

	private JPanel contentPane;
	private JButton jb1,jb2,jb5,jb6,jb7;
    private JLabel lb1,lb2,lb3,lb4,lb5,lb6,lb7,lb8,lb9,lb13;
   
    private String ip;
    private JLabel jl9;
 
    private  static String score=null;
    private DefaultTableModel dtm;
	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					GUI1 frame = new GUI1();
					frame.setResizable(false);
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
	public GUI1() {
		
		
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setBounds(100, 100, 768, 513);
		contentPane = new JPanel();
		contentPane.setBorder(new EmptyBorder(5, 5, 5, 5));
		setContentPane(contentPane);
		contentPane.setLayout(null);
		
		JLabel lblNewLabel = new JLabel("<html><font size=25 color='green'>            小游戏</font></html>");
		lblNewLabel.setBounds(287, 0, 199, 42);
		contentPane.add(lblNewLabel);
		
		JTabbedPane tabbedPane = new JTabbedPane(JTabbedPane.TOP);
		tabbedPane.setForeground(SystemColor.windowText);
		tabbedPane.setBackground(SystemColor.activeCaption);
		tabbedPane.setBounds(10, 47, 726, 372);
		contentPane.add(tabbedPane);
		ButtonGroup g=new ButtonGroup();
		
		JPanel panel_2 = new JPanel();
		panel_2.setBackground(SystemColor.textHighlightText);
		tabbedPane.addTab(" 飞  机  大  战  ", null, panel_2, null);
		panel_2.setLayout(null);
		
		
		  
		  jb1 = new JButton(" 开 始 游 戏");
		  jb1.setBackground(SystemColor.menu);
		  jb1.setFont(new Font("幼圆", Font.PLAIN, 15));
		  jb1.addActionListener(this);
		  jb1.setBounds(408, 282, 139, 38);
		  panel_2.add(jb1);
		  
		   jb2 = new JButton(" 退 出 ");
		   jb2.setBackground(SystemColor.menu);
		   jb2.setFont(new Font("幼圆", Font.PLAIN, 15));
		   jb2.addActionListener(this);
		   jb2.setBounds(585, 282, 110, 38);
		   panel_2.add(jb2);
		   
		   lb8 = new JLabel("");
		   lb8.setBounds(14, 35, 681, 218);
		   lb8.setIcon(new ImageIcon("image/timg1.jpg"));
		   panel_2.add(lb8);
		
		
		JPanel panel_1 = new JPanel();
		panel_1.setBackground(SystemColor.textHighlightText);
		tabbedPane.addTab("   游  戏  介  绍   ", null, panel_1, null);
		panel_1.setLayout(null);
		
		JLabel jl2 = new JLabel("");
		jl2.setBounds(38, 13, 233, 300);
		panel_1.add(jl2);
		
		JTextArea txtrboss = new JTextArea();
		txtrboss.setForeground(SystemColor.infoText);
		txtrboss.setFont(new Font("幼圆", Font.PLAIN, 20));
		txtrboss.setText(" 1.\u7528\u9F20\u6807\u64CD\u63A7\u98DE\u673A\uFF0C\u98DE\u673A\u4F4D\u7F6E\u968F\u9F20\u6807\u4F4D\u7F6E\r\n   \u79FB\u52A8\uFF0C\u9F20\u6807\u4E0D\u80FD\u79BB\u5F00\u6E38\u620F\u754C\u9762\u3002\r\n 2.\u98DE\u673A\u80FD\u591F\u53D1\u5C04\u5B50\u5F39\uFF0C\u5B50\u5F39\u80FD\u591F\u6D88\u706D\u654C\u65B9\r\n   \u98DE\u673A\uFF0C\u4F46\u4E0D\u80FD\u6D88\u706Dboss\u3002\r\n 3.\u6E38\u620F\u5728\u98DE\u673A\u78B0\u5230\u98DE\u673A\u6216boss\u540E\u624D\u4F1A\u7ED3\u675F\u3002\r\n 4.\u5206\u6570\u53EA\u6709\u8FDB\u5165top10\u624D\u4F1A\u88AB\u6536\u5165\u6392\u884C\u699C\u3002");
		txtrboss.setBounds(312, 13, 395, 288);
		panel_1.add(txtrboss);
		
		
//		Document d=new Document();
//		d.setDocument_address("score.dat");
//		d.setDocument_name("score");
		
		
		
		
		
		lb4 = new JLabel("");
		lb4.setFont(new Font("幼圆", Font.PLAIN, 20));
		new Thread(new Runnable() {
			DateFormat df=new SimpleDateFormat("yyyy/MM/dd HH：mm：ss");
			@Override
			public void run() {
			while(true){	
				Date d=new Date();
				String str=df.format(d);
				lb4.setText("当前系统时间："+str);
				try {
					Thread.sleep(1000);
				} catch (InterruptedException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				}
				
				
				
			}
		}).start();
		lb4.setBounds(347, 417, 377, 30);
		contentPane.add(lb4);
		
		JLabel jl8 = new JLabel("");
		jl8.setBounds(-11, 0, 761, 460);
		jl8.setIcon(new ImageIcon("Image/11.jpg"));
		contentPane.add(jl8);
		
		jl9 = new JLabel("");
		jl9.setBounds(14, 76, 722, 337);
		jl9.setIcon(new ImageIcon("Image/11.jpg"));
		contentPane.add(jl9);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		if(e.getSource()==jb1){
			//开始游戏
			this.setDefaultCloseOperation(2);
			MainFrame mainFrame;
			try {
				mainFrame = new MainFrame();
				mainFrame.stopGame();
				
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}else if(e.getSource()==jb2){
			this.dispose();

	}
	}
}
