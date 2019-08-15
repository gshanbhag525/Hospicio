package hms;

import javax.swing.*;
import java.awt.*;
import java.sql.*;
import java.awt.event.*;

public class FrmSearchMCategory extends JInternalFrame
{	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JLabel lblSearch,lblSelect;
	JTextField jtfSearch;
	JComboBox<String> jcbSelect;
	JButton btnSearch,btnCancel;
	DConnection dc;
	ResultSet rst;
	FrmMCategory fmc;
	FrmSearchMCategory(FrmMCategory fmc)
	{
		super("Search",false,true,false,false);
		this.fmc=fmc;
		setLayout(new GridLayout(3,2));
		
	    lblSearch=new JLabel("Search");
	    lblSearch.setForeground(new Color(0,128,64));
     	lblSearch.setFont(new Font(Font.SERIF,Font.ITALIC+Font.BOLD,18));
	    add(lblSearch);
	    
	    jtfSearch=new JTextField();
	    jtfSearch.setForeground(new Color(106,106,106));
     	jtfSearch.setFont(new Font(Font.SERIF,Font.ITALIC+Font.BOLD,18));
	    add(jtfSearch);
	    
	    lblSelect=new JLabel("Select");
	    lblSelect.setForeground(new Color(0,128,64));
     	lblSelect.setFont(new Font(Font.SERIF,Font.ITALIC+Font.BOLD,18));
	    add(lblSelect);

		jcbSelect=new JComboBox<String>();
		jcbSelect.setForeground(new Color(106,106,106));
     	jcbSelect.setFont(new Font(Font.SERIF,Font.ITALIC+Font.BOLD,18));
	    jcbSelect.addItem("ct_name");
	    add(jcbSelect);

		 btnSearch=new JButton("Search");
		 btnSearch.setForeground(Color.white);
		btnSearch.setBackground(Color.blue);
		btnSearch.setFont(new Font(Font.SERIF,Font.ITALIC,22));
	    btnSearch.addActionListener(new ActionListener()
	    {
	       public void actionPerformed(ActionEvent ae)
	       {	
	    	dc=new DConnection();
	    	String select=(String)jcbSelect.getSelectedItem();
	    	String value=jtfSearch.getText();
	    	FrmMCategory.query="from mcategory where "+select+" = '"+value+"'";
     		dispose();
     		fmc.reload();
	      }
	    });add(btnSearch);

		btnCancel=new JButton("Cancel");
		btnCancel.setForeground(Color.white);
		btnCancel.setBackground(Color.red);
		btnCancel.setFont(new Font(Font.SERIF,Font.ITALIC,22));
	    btnCancel.addActionListener(new ActionListener()
	    {
	    	public void actionPerformed(ActionEvent ae)
	    	{
	    		dispose();
	    	}
	    });
	    add(btnCancel);
	    
	    setSize(300,150);
		setLocation(CommonMethods.getCenterPoint(getSize()));
		setDefaultCloseOperation(JInternalFrame.DISPOSE_ON_CLOSE);
		setResizable(false);
		setVisible(true);
	}
}