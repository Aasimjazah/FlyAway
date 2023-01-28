package com.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Transaction;

import com.entity.*;

public class AirlineService 
{
	
	 
	   public static List<Airlines> getAllAirlines()
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      

 	     List<Airlines> airlines = session.createQuery("from Airlines").list();
 	     
 	   
 	     
 	      
 	      Transaction t = session.beginTransaction();
           
          
    t.commit();
    
    session.close();
    
   return airlines;

       }
	   
	 
}
