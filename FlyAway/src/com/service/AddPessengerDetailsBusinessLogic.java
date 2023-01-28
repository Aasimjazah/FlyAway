package com.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Transaction;

import com.entity.*;

public class AddPessengerDetailsBusinessLogic 
{
	
	   public static void addPessengerDetails(Pessenger p)
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      Transaction t = session.beginTransaction();
           session.save(p);
          
    t.commit();
    
    session.close();
    
 	     

       } 
	   
	   public static List<Pessenger> getAllPessengers()
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      

 	     List<Pessenger> p = session.createQuery("from Pessenger").list();
 	     
 	   
 	     
 	      
 	      Transaction t = session.beginTransaction();
           
          
    t.commit();
    
    session.close();
    
   return p;

       }
	   

}
