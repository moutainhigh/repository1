package utils.purchase;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class RegExpValidatorUtils {
	/**
	 * 验证输入两位小数
	 * @param 待验证的字符串
	 * @return 如果是符合格式的字符串,返回 <b>true </b>,否则为 <b>false </b>
	 */
	public static boolean isDecimal(String str) {
		String regex = "^[0-9]+(.[0-9]{2})?$";
		return match(regex, str);
	}

	public static boolean isMoney(String str){
		String regex = "^(([1-9]{1}\\d*)|([0]{1}))(\\.(\\d){0,2})?$";
		return match(regex, str);
	}

	/**
	 * @param regex
	 *            正则表达式字符串
	 * @param str
	 *            要匹配的字符串
	 * @return 如果str 符合 regex的正则表达式格式,返回true, 否则返回 false;
	 */
	private static boolean match(String regex, String str) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		return matcher.matches();
	}
}