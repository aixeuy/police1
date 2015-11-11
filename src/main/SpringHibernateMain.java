package main;

/**
 * Created by Win7uX32 on 2015/7/20.
 */
import java.util.List;

import Dao.CarDAO;
import model.Car;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringHibernateMain {
    public static void main(String[] args) {

        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");

        CarDAO personDAO = context.getBean(CarDAO.class);

        Car person = new Car();
        person.setCode("123456");

        personDAO.save(person);

        System.out.println("Person::"+person);

        List<Car> list = personDAO.list();

        for(Car p : list){
            System.out.println("Person List::"+p);
        }
        //close resources
        context.close();
    }
}
