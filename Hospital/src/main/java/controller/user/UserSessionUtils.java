package controller.user;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class UserSessionUtils {
    public static final String USER_SESSION_KEY = "id";
    private static final Logger logger = LoggerFactory.getLogger(UserSessionUtils.class);

    /* ���� �α����� ������� ID�� ���� */
    public static String getLoginUserId(HttpSession session) {
        String id = (String)session.getAttribute(USER_SESSION_KEY);
        return id;
    }

    /* �α����� ���������� �˻� */
    public static boolean hasLogined(HttpSession session) {
    	logger.debug("����� �̸��� " + getLoginUserId(session));
        if (getLoginUserId(session) != null) {
            return true;
        }
        return false;
    }

    /* ���� �α����� ������� ID�� userId���� �˻� */
    public static boolean isLoginUser(String id, HttpSession session) {
        String loginUser = getLoginUserId(session);
        if (loginUser == null) {
            return false;
        }
        return loginUser.equals(id);
    }
}
