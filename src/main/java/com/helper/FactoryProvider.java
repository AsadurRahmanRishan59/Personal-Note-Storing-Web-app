package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import com.entities.Note;

public class FactoryProvider {
	public static SessionFactory factory;

	public static SessionFactory getFactory() {

		if (factory == null) {
			factory = new Configuration().configure().addAnnotatedClass(Note.class).buildSessionFactory();
		}

		return factory;
	}

	public static void closeFactory() {
		if (factory.isOpen()) {
			factory.close();
		}
	}
}
