package hms;

import java.awt.*;
import javax.swing.*;
class FrmAboutus extends JDialog
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	JLabel lblAboutus;
	FrmAboutus()
	{
		setLayout(new FlowLayout());
		setIconImage(new ImageIcon("src/images/HMS_logo.jpg").getImage());
		setTitle("About HMS");
		
		lblAboutus=new JLabel(new ImageIcon("src/images/AboutUs1.png"));
		lblAboutus.setSize(416,280);
	
		add(lblAboutus);
		setSize(425,290);
		
		setVisible(true);
		setLocation(CommonMethods.getCenterPoint(getSize()));
		setResizable(false);
	}
}