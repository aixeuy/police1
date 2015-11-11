package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by Win7uX32 on 2015/7/17.
 */
@Entity
@Table(name="car")
public class Car {
    @Id
    @Column(name="id")
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;
    @Column(name="code")
    private String code;//编号,
    @Column(name="body")
    private String body;//车身
    @Column(name="action")
    private String action;//行为特征(急速移动、缓慢移动、徘徊)
    @Column(name="category")
    private String category;//分类(嫌疑车、受害车),
    @Column(name="board")
    private String board;//车牌,
    @Column(name="region")
    private String region;//属地,
    @Column(name="board_sh")
    private String board_sh;//遮挡车牌物品,
    @Column(name="c_type")
    private String c_type;//车辆类型
    @Column(name="b_type")
    private String b_type;//车牌类型
    @Column(name="o_character")
    private String o_character;//外形特征,
    @Column(name="f_color")
    private String f_color;//贴膜颜色。

    public Car(){

    }
    public String toString(){
        return (id+code+this.action+this.body+this.category);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public String getAction() {
        return action;
    }

    public void setAction(String action) {
        this.action = action;
    }

    public String getCategory(){return category;}

    public void setCategory(String category) {
        this.category = category;
    }

    public String getBoard() {
        return board;
    }

    public void setBoard(String board) {
        this.board = board;
    }

    public String getBoard_sh() {
        return board_sh;
    }

    public void setBoard_sh(String board_sh) {
        this.board_sh = board_sh;
    }

    public String getC_type() {
        return c_type;
    }

    public void setC_type(String c_type) {
        this.c_type = c_type;
    }

    public String getB_type() {
        return b_type;
    }

    public void setB_type(String b_type) {
        this.b_type = b_type;
    }

    public String getO_character() {
        return o_character;
    }

    public void setO_character(String o_character) {
        this.o_character = o_character;
    }

    public String getF_color() {
        return f_color;
    }

    public void setF_color(String f_color) {
        this.f_color = f_color;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }
}
