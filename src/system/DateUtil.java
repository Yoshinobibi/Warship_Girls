package system;

import java.util.Calendar;
import java.util.Date;

/**
 * Created by 95 on 2016/4/5.
 */

public class DateUtil {
    /**
     * 根据日期获取是星期几 （匹配系统数据字典 0 星期天，1 星期一 。。。）
     *
     * @return
     */
    public static int getWeekDay(Date date) {
        Calendar calendar = Calendar.getInstance();
        if(date != null){
            calendar.setTime(date);
        }
        int w = calendar.get(Calendar.DAY_OF_WEEK) - 1;
        if (w < 0){
            w = 0;
        }
        return w;
    }

    /**
     * 得到几天后的时间
     * @param d
     * @param day
     * @return
     */
    public static Date getDateAfter(Date d,int day){
        Calendar now =Calendar.getInstance();
        now.setTime(d);
        now.set(Calendar.DATE,now.get(Calendar.DATE)+day);
        return now.getTime();
    }

    /**
     * 得到几天前的时间
     * @param d
     * @param day
     * @return
     */
    public static Date getDateBefore(Date d,int day){
        Calendar now =Calendar.getInstance();
        now.setTime(d);
        now.set(Calendar.DATE,now.get(Calendar.DATE)-day);
        return now.getTime();
    }

    /**
     * 得到几天后的时间(跳过周末日)
     * @param d
     * @param day
     * @return
     */
    public static Date getDateAfterWithoutWeekend(Date d,int day){
        //判断周末
        int weekDay = getWeekDay(d);
        if(weekDay == 5) {
            //星期五
            day = day + 2;
        } else if(weekDay == 6) {
            //星期六
            day = day + 1;
        }
        Calendar now =Calendar.getInstance();
        now.setTime(d);
        now.set(Calendar.DATE,now.get(Calendar.DATE)+day);
        return now.getTime();
    }
}

