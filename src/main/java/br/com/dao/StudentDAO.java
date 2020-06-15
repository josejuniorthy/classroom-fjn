package br.com.dao;

import java.util.List;
import javax.persistence.EntityManager;
import br.com.connection.ConnectionFactory;
import br.com.model.Student;
import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.criterion.Criterion;
import org.hibernate.criterion.MatchMode;
import org.hibernate.criterion.Restrictions;

public class StudentDAO {

    public Student save(Student student) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            if (student.getId() == null) {
                em.persist(student);
            } else {
                em.merge(student);
            }
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return student;
    }

    public Student update(Student student) {
        EntityManager em = ConnectionFactory.getConnection();
        try {
            em.getTransaction().begin();
            em.merge(student);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return student;
    }

    public Student findById(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Student student = null;
        try {
            student = em.find(Student.class, id);
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return student;
    }

    public List<Student> findAll() {
        EntityManager em = ConnectionFactory.getConnection();
        List<Student> student = null;

        try {
            student = em.createQuery("from Student").getResultList();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return student;
    }

    public Student remove(Integer id) {
        EntityManager em = ConnectionFactory.getConnection();
        Student student = null;
        try {
            student = em.find(Student.class, id);
            em.getTransaction().begin();
            em.remove(student);
            em.getTransaction().commit();
        } catch (Exception e) {
            System.err.println(e);
            em.getTransaction().rollback();
        } finally {
            em.close();
        }
        return student;
    }

    public List<Student> findByName(String findByName) {
        EntityManager em = ConnectionFactory.getConnection();

        Session session = (Session) em.getDelegate();
        Criteria criteria = session.createCriteria(Student.class);
        Criterion c1 = Restrictions.ilike("name", findByName, MatchMode.ANYWHERE);
        criteria.add(c1);
        List<Student> student = criteria.list();
        em.close();
        return student;
    }
}
