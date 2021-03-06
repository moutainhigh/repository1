package controllers.annotation;

import java.io.Serializable;

import com.google.inject.Inject;

import dto.discart.PermissionRes;
import play.Logger;
import play.libs.F;
import play.libs.F.Promise;
import play.libs.Json;
import play.mvc.Action;
import play.mvc.Http.Context;
import play.mvc.Result;
import services.base.utils.StringUtils;
import session.ISessionService;

public class LoginPermissionAction extends Action<LoginPermissionAction> {

	@Inject
	private ISessionService sessionService;

	@Override
	public Promise<Result> call(Context context) throws Throwable {
		// 登陆判断
		try {
			/*
			 * String token = context.request().getHeader("token"); //权限判断 if
			 * (!Strings.isNullOrEmpty(token)) { Configuration config =
			 * Play.application().configuration() .getConfig("safeApi"); String
			 * localToken = config.getString("token"); if
			 * (token.equals(localToken)) { return delegate.call(context); } }
			 */
			// 前台登录判断
			String res = ordinaryUser(context);
			if (!StringUtils.isEmpty(res)) {
				sessionService.set("user", res);
				return delegate.call(context);
			}
		} catch (Exception e) {
			Logger.error("获取用户异常", e);
			;
			return F.Promise.pure(ok(Json.toJson(new PermissionRes(101, "用户未登陆", null))));
		}
		return F.Promise.pure(ok(Json.toJson(new PermissionRes(101, "用户未登陆", null))));
	}

	private String ordinaryUser(Context context) {
		String ltc = context != null ? cookies(context) : "";
		Serializable serializable = sessionService.get(1 + ltc);
		if (serializable == null) {
			return null;
		}
		return serializable.toString();
	}

	/*
	 * private String get(Map<String, String> params, String url, Context
	 * context) { String responString = ""; GetMethod get = new GetMethod(url);
	 * HttpClient client = new HttpClient(); String ltc = context != null ?
	 * cookies(context) : ""; if(!StringUtils.isEmpty(ltc)) {
	 * get.setRequestHeader("Cookie", "TT_LTC=" + ltc); } List<NameValuePair>
	 * nvps = new ArrayList<NameValuePair>(); params.forEach(new
	 * BiConsumer<String, String>() {
	 * 
	 * @Override public void accept(String t, String u) { nvps.add(new
	 * NameValuePair(t, u)); } });
	 * 
	 * NameValuePair[] nvpArr = new NameValuePair[params.size()]; nvpArr =
	 * nvps.toArray(nvpArr); try { // 参数拼接 get.setQueryString(nvpArr);
	 * get.setRequestHeader("content-type", "application/json;charset=utf-8");
	 * // 发送http请求 client.executeMethod(get); // 打印返回的信息 responString = new
	 * String(get.getResponseBody(), "UTF-8");
	 * 
	 * } catch (HttpException e) { Logger.error("", e); } catch (IOException e)
	 * { Logger.error("", e); } finally { // 释放连接 get.releaseConnection(); }
	 * return responString; }
	 */

	private String cookies(Context context) {
		String cookie = "";
		try {
			cookie = context._requestHeader().cookies().get("TT_LTC").get().copy$default$2();
		} catch (Exception e) {
			Logger.info("获取cookie异常", e);
		}
		return cookie;
	}

}
