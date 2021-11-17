package controller.user;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserSessionUtils {
    public static final String USER_SESSION_KEY = "id";
    private static final Logger logger = LoggerFactory.getLogger(UserSessionUtils.class);

    /* 현재 로그인한 사용자의 ID를 구함 */
    public static String getLoginUserId(HttpSession session) {
        String id = (String)session.getAttribute(USER_SESSION_KEY);
        return id;
    }

    /* 로그인한 상태인지를 검사 */
    public static boolean hasLogined(HttpSession session) {
    	logger.debug("사용자 이름은 " + getLoginUserId(session));
        if (getLoginUserId(session) != null) {
            return true;
        }
        return false;
    }

    /* 현재 로그인한 사용자의 ID가 userId인지 검사 */
    public static boolean isLoginUser(String id, HttpSession session) {
        String loginUser = getLoginUserId(session);
        if (loginUser == null) {
            return false;
        }
        return loginUser.equals(id);
    }
}
