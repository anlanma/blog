package blog;

import org.slf4j.LoggerFactory;

/**
 * Created by Thinkpad on 2015/7/27.
 */
public class Log4jTest {
    private static org.slf4j.Logger log = LoggerFactory.getLogger(Log4jTest.class);
    private static org.slf4j.Logger errLog = LoggerFactory.getLogger("errorLogger");

    public static void main(String[] args){
        log.debug("This is debug log");
        log.info("This is info log");
        errLog.info("This is error log");
        errLog.error("This is real error log");
    }
}
