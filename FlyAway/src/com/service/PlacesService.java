package com.service;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.Transaction;

import com.entity.*;

public class PlacesService 
{
	
	 
	   public static List<Places> getAllPlaces()
       {
  
     	  SessionFactory sessionFactory = new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
 	      Session session = sessionFactory.openSession();
 	      
 	      

 	     List<Places> places = session.createQuery("from Places").list();
 	     
 	   
 	     
 	      
 	      Transaction t = session.beginTransaction();
           
          
    t.commit();
    
    session.close();
    
   return places;

       }
	   
	 
}
