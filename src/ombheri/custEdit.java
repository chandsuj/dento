/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ombheri;

// import com.mysql.jdbc.exceptions.MySQLIntegrityConstraintViolationException;
import java.awt.Dimension;
import java.awt.Toolkit;
import java.awt.event.ActionEvent;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.SQLIntegrityConstraintViolationException;
import java.util.regex.Pattern;
import javax.swing.AbstractAction;
import javax.swing.Action;
import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author Lanaya
 */


public class custEdit extends javax.swing.JFrame {

    /**
     * Creates new form form
     */
    Dimension dim = Toolkit.getDefaultToolkit().getScreenSize();

    sqlConn sqlcon=new sqlConn();
    String regMain;
    JFrame front2;
    private JFrame frameView;
    
    Action action = new AbstractAction()
    {
        @Override
        public void actionPerformed(ActionEvent e)
        {
//            System.out.println("some action");
            saveActionPerformed(e);
            
        }
    };

    public void jFrame2(JFrame v) {
      this.frameView = v;
    }
    public void getFront1(JFrame f){
        front2=f;
    }
    
    public void getData(String d1,String r1,String f1,String l1,String a1,String c1,String ad1){
        date.setText(d1);
        regno.setText(r1);
        regMain=r1;
        regno.setText(regMain);
        firstn.setText(f1);
        lastn.setText(l1);
        age.setText(a1);
        contno.setText(c1);
        addr.setText(ad1);
        
    }

    public custEdit() {
        this.setTitle("Edit");
        
//        this.setLocation(dim.width/2-this.getSize().width/2, dim.height/2-this.getSize().height/2);
        initComponents();
        
        regno.addActionListener(action);
        date.addActionListener(action);
        firstn.addActionListener(action);
        lastn.addActionListener(action);
        addr.addActionListener(action);
        contno.addActionListener(action);
        age.addActionListener(action);
        
        this.addWindowListener(new WindowAdapter() {
            @Override
            public void windowClosing(WindowEvent event) {
                procedureCall();
            }
        });        
    
    }
    public  void procedureCall(){
        this.dispose();
        this.frameView.setVisible(true);

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lastn = new javax.swing.JTextField();
        addr = new javax.swing.JTextField();
        firstn = new javax.swing.JTextField();
        regno = new javax.swing.JTextField();
        contno = new javax.swing.JTextField();
        age = new javax.swing.JTextField();
        date = new javax.swing.JTextField();
        save = new javax.swing.JButton();
        cancel = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel8 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setPreferredSize(new java.awt.Dimension(1100, 650));
        setResizable(false);

        lastn.setText("Last Name");
        lastn.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                lastnFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                lastnFocusLost(evt);
            }
        });
        lastn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                lastnActionPerformed(evt);
            }
        });

        addr.setText("Address");
        addr.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                addrFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                addrFocusLost(evt);
            }
        });

        firstn.setText("First Name");
        firstn.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                firstnFocusGained(evt);
            }
            public void focusLost(java.awt.event.FocusEvent evt) {
                firstnFocusLost(evt);
            }
        });
        firstn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                firstnActionPerformed(evt);
            }
        });

        regno.setEditable(false);
        regno.setToolTipText("");
        regno.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                regnoFocusGained(evt);
            }
        });
        regno.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                regnoActionPerformed(evt);
            }
        });

        contno.setText("Contact no.");
        contno.setToolTipText("");
        contno.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                contnoFocusGained(evt);
            }
        });
        contno.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                contnoActionPerformed(evt);
            }
        });

        age.setText("Age");
        age.setToolTipText("");
        age.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                ageFocusGained(evt);
            }
        });
        age.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                ageActionPerformed(evt);
            }
        });

        date.setToolTipText("");
        date.addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                dateFocusGained(evt);
            }
        });
        date.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                dateActionPerformed(evt);
            }
        });

        save.setText("Save");
        save.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                saveActionPerformed(evt);
            }
        });

        cancel.setText("Cancel");
        cancel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                cancelActionPerformed(evt);
            }
        });

        jLabel1.setForeground(new java.awt.Color(0, 204, 102));
        jLabel1.setText("Registration no.");

        jLabel2.setForeground(new java.awt.Color(0, 204, 102));
        jLabel2.setText("Date Registered");

        jLabel4.setForeground(new java.awt.Color(0, 204, 102));
        jLabel4.setText("First Name");

        jLabel3.setForeground(new java.awt.Color(0, 204, 102));
        jLabel3.setText("Last Name");

        jLabel7.setForeground(new java.awt.Color(0, 204, 102));
        jLabel7.setText("Age");

        jLabel5.setForeground(new java.awt.Color(0, 204, 102));
        jLabel5.setText("Address");

        jLabel6.setForeground(new java.awt.Color(0, 204, 102));
        jLabel6.setText("Contact no.");

        jLabel8.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel8.setForeground(new java.awt.Color(0, 204, 102));
        jLabel8.setText("Edit Pannel");
        jLabel8.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(117, 117, 117)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 896, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addContainerGap(73, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                                        .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)))
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(lastn, javax.swing.GroupLayout.PREFERRED_SIZE, 188, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(age, javax.swing.GroupLayout.PREFERRED_SIZE, 86, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(addr, javax.swing.GroupLayout.PREFERRED_SIZE, 322, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(2, 2, 2)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(regno, javax.swing.GroupLayout.PREFERRED_SIZE, 254, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 104, javax.swing.GroupLayout.PREFERRED_SIZE)
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(firstn, javax.swing.GroupLayout.PREFERRED_SIZE, 209, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(200, 200, 200)
                                .addComponent(save)
                                .addGap(30, 30, 30)
                                .addComponent(cancel))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                    .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 91, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(19, 19, 19)
                                    .addComponent(date, javax.swing.GroupLayout.PREFERRED_SIZE, 242, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 71, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(36, 36, 36)
                                    .addComponent(contno, javax.swing.GroupLayout.PREFERRED_SIZE, 245, javax.swing.GroupLayout.PREFERRED_SIZE))))
                        .addGap(86, 86, 86))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(jLabel8, javax.swing.GroupLayout.PREFERRED_SIZE, 30, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 96, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(regno, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(28, 28, 28)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(firstn, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel4, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(38, 38, 38)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lastn, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(jLabel3, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(44, 44, 44)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel7, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(age, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(27, 27, 27)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(addr, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(221, 221, 221)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                    .addComponent(contno, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(jLabel6, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                                .addComponent(date, javax.swing.GroupLayout.PREFERRED_SIZE, 37, javax.swing.GroupLayout.PREFERRED_SIZE)
                                .addComponent(jLabel2, javax.swing.GroupLayout.PREFERRED_SIZE, 34, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(101, 101, 101)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(cancel)
                            .addComponent(save))))
                .addGap(142, 142, 142))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void lastnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_lastnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_lastnActionPerformed

    private void firstnFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_firstnFocusGained
        // TODO add your handling code here:
       
    }//GEN-LAST:event_firstnFocusGained

    private void lastnFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_lastnFocusGained
        // TODO add your handling code here:
        
    }//GEN-LAST:event_lastnFocusGained

    private void addrFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_addrFocusGained
        // TODO add your handling code here:       
        
    }//GEN-LAST:event_addrFocusGained

    private void firstnFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_firstnFocusLost
        // TODO add your handling code here:
        
    }//GEN-LAST:event_firstnFocusLost

    private void lastnFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_lastnFocusLost
        // TODO add your handling code here:
        
    }//GEN-LAST:event_lastnFocusLost

    private void addrFocusLost(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_addrFocusLost
        // TODO add your handling code here:
        
    }//GEN-LAST:event_addrFocusLost

    private void regnoFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_regnoFocusGained
        // TODO add your handling code here:
    }//GEN-LAST:event_regnoFocusGained

    private void regnoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_regnoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_regnoActionPerformed

    private void ageFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_ageFocusGained
        // TODO add your handling code here:
    }//GEN-LAST:event_ageFocusGained

    private void ageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_ageActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_ageActionPerformed

    private void dateFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_dateFocusGained
        // TODO add your handling code here:
    }//GEN-LAST:event_dateFocusGained

    private void dateActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_dateActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_dateActionPerformed

    private void contnoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_contnoActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_contnoActionPerformed

    private void contnoFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_contnoFocusGained
        // TODO add your handling code here:
    }//GEN-LAST:event_contnoFocusGained

    private void firstnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_firstnActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_firstnActionPerformed

    private void saveActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_saveActionPerformed
        // TODO add your handling code here:
        
        String dt = date.getText().trim();
        if(dt.length() == 0){
            JOptionPane.showMessageDialog(null, "Invalid Date.");
            return;
        }
        
        String fn = firstn.getText().trim();
        if(fn.length() == 0){
            JOptionPane.showMessageDialog(null, "Invalid first name.");
            return;
        }
        
        String ln = lastn.getText().trim();
        if(ln.length() == 0){
            JOptionPane.showMessageDialog(null, "Invalid last name.");
            return;
        }
        
        String agetxt = age.getText().trim();
        int agenum;
        try{
            agenum = Integer.parseInt(agetxt);
        }catch(Exception ex){
            agenum = 0;
        }
        
        if(agenum < 1 || agenum > 120 ){
            JOptionPane.showMessageDialog(null, "Invalid age.");
            return;
        }
        String str=  "^\\s?((\\+[1-9]{1,4}[ \\-]*)|(\\([0-9]{2,3}\\)[ \\-]*)|([0-9]{2,4})[ \\-]*)*?[0-9]{3,4}?[ \\-]*[0-9]{3,4}?\\s?";
        if (!Pattern.compile(str).matcher(contno.getText()).matches() || contno.getText().trim().length() > 13) {
            JOptionPane.showMessageDialog(null, "Invalid Phone number.");
            return;
        } 
        
        String addresstxt= addr.getText().trim();
        if(addresstxt.length() < 5 ){
            JOptionPane.showMessageDialog(null, "Invalid address.");
            return;
        }
        
        
        
        String sql="update customer set date='"+date.getText()+"',regno="+regno.getText()+",firstn='"+firstn.getText()+"',lastn='"+lastn.getText()+"',age="+age.getText()+",contno="+contno.getText()+",addr='"+addr.getText()+"' where regno="+regMain+";";
        //Check for activity for this person
        String sql1="select * from activity where regno="+regMain+";";
        try{
            ResultSet rs1=sqlcon.stmt.executeQuery(sql1);
            if(rs1.next()){
                String sql2="update activity set regno="+regno.getText()+" where regno="+regMain+";";
                System.out.println(sql2);
                sqlcon.stmt.executeUpdate(sql2);
            }
            sqlcon.stmt.executeUpdate(sql);

            System.out.println("Successfully Edited");
            JOptionPane.showMessageDialog(null, "Successfully edited data");
            this.dispose();
            
            front2.dispose();
            front f=new front();
            f.setVisible(true);
            
            //refresh customerView
            sql="select * from customer where regno="+regno.getText()+";";
            try{
                ResultSet rs=sqlcon.stmt.executeQuery(sql);

    //            while(rs.next())  

                if (rs.next()) {
                    System.out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+" "+rs.getString(4)+" "+rs.getString(5)+" "+rs.getString(6)+" "+rs.getString(7));  

                    custView cv=new custView();
                    cv.setVisible(true);
                    cv.getFront(front2);
                    cv.getData(rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4),rs.getString(5),rs.getString(6),rs.getString(7));                  

                }else{
                    System.out.println("error bhayecha hai");
                } 

            }catch(Exception e){
                System.out.println(e);
            }            

        }
//        catch(MySQLIntegrityConstraintViolationException e){
//            System.out.println(e);
//            System.out.println("This registration number is already taken!");
//        }
        catch(SQLIntegrityConstraintViolationException s){
            System.out.println(s);
            String message = "\"Data field is default or empty.\"\n"
            + "\"If above field are correct then Register no may be already taken\"\n";
            JOptionPane.showMessageDialog(new JFrame(), message, "Dialog",
            JOptionPane.ERROR_MESSAGE);
        }
        catch(Exception e){
            System.out.println(e);
            String message = "\"Data entered is incorrect or empty\"\n"
            + "\"Check for default value or wrong data type\"\n";
            JOptionPane.showMessageDialog(new JFrame(), message, "Dialog",
            JOptionPane.ERROR_MESSAGE);
        }
        
        
    }//GEN-LAST:event_saveActionPerformed

    private void cancelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_cancelActionPerformed
        // TODO add your handling code here:
        this.dispose();
        this.frameView.setVisible(true);
    }//GEN-LAST:event_cancelActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(custEdit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(custEdit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(custEdit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(custEdit.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new custEdit().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField addr;
    private javax.swing.JTextField age;
    private javax.swing.JButton cancel;
    private javax.swing.JTextField contno;
    private javax.swing.JTextField date;
    private javax.swing.JTextField firstn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JTextField lastn;
    private javax.swing.JTextField regno;
    private javax.swing.JButton save;
    // End of variables declaration//GEN-END:variables
}