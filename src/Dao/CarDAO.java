package Dao;

/**
 * Created by Win7uX32 on 2015/7/17.
 */
import model.Car;

import java.util.List;

public interface CarDAO {

    public void save(Car c);

    public List<Car> list();

    public void update(Car c);

    public void delete(Car c);

}
