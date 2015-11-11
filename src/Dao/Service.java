package Dao;

import model.Car;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;

/**
 * Created by Win7uX32 on 2015/7/20.
 */
public class Service {
    public static List<Car> lst;
    public static CarDAO data=null;
    static {
        ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext("spring.xml");

        data = context.getBean(CarDAO.class);
    }
    public static void start(){
        /*if(data!=null) {
            data = new CarDAOImpl();
        }*/
        lst=data.list();
    }
    public static void addCar(String code,String body,String action,
    String category,String board,String region,String board_sh,String c_type,String b_type,String o_character,
String f_color){
        Car c=new Car();
        c.setCode(code);
        c.setBody(body);
        c.setAction(action);
        c.setCategory(category);
        c.setBoard(board);
        c.setRegion(region);
        c.setBoard_sh(board_sh);
        c.setC_type(c_type);
        c.setB_type(b_type);
        c.setO_character(o_character);
        c.setF_color(f_color);
        data.save(c);
    }
    public static Car getCarByIndex(int i){
        return lst.get(i);
    }
    public static void edit(Car c,String code,String body,String action,
                            String category,String board,String region,String board_sh,String c_type,String b_type,String o_character,
                            String f_color){
        c.setCode(code);
        c.setBody(body);
        c.setAction(action);
        c.setCategory(category);
        c.setBoard(board);
        c.setRegion(region);
        c.setBoard_sh(board_sh);
        c.setC_type(c_type);
        c.setB_type(b_type);
        c.setO_character(o_character);
        c.setF_color(f_color);
        data.update(c);
    }
    public static void  deleteCar(Car c){
        data.delete(c);
    }

}
