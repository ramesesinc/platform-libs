package com.rameses.common;

import java.util.Calendar;
import java.util.Date;
import java.util.List;
import org.ocpsoft.prettytime.Duration;
import org.ocpsoft.prettytime.PrettyTime;

public class PrettyTimeFormatter {

    private static PrettyTimeFormatter instance;

    private PrettyTimeFormatter() {
    }

    public static PrettyTimeFormatter getInstance() {
        if (instance == null) {
            instance = new PrettyTimeFormatter();
        }
        return instance;
    }
    
    public String format(Date previousDate) {
        return format(new Date(), previousDate);
    }
    
    public String format(Date currentDate, Date previousDate) {
        Calendar cal = Calendar.getInstance();
        cal.setTime(previousDate);
        PrettyTime t = new PrettyTime(currentDate);
        return t.format(previousDate);
    }
    
    public String formatPrecise(Date previousDate) {
        return formatPrecise(new Date(), previousDate);
    }
    
    public String formatPrecise(Date currentDate, Date previousDate) {
        Calendar currCal = Calendar.getInstance();
        currCal.setTime(currentDate);
        currCal.set(Calendar.SECOND, 0);
        
        Calendar prevCal = Calendar.getInstance();
        prevCal.setTime(previousDate);
        prevCal.set(Calendar.SECOND, 0);
        
        PrettyTime t = new PrettyTime(currCal.getTime());
        List<Duration> durations = t.calculatePreciseDuration(prevCal.getTime());
        return t.format(durations);
    }
    
}
