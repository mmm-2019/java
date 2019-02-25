package com.test.substation;


public enum EcpMenu {
	
	ASSETS_TYPE_SUB_CARD(1,"次卡"),
	ASSETS_TYPE_YEAR_CARD(2,"年卡"),
	
	PROJECT_TYPE_RISK_ASSESSMENT(1,"风"),
	PROJECT_TYPE_CONTINGENCY_PLAN(2,"应"),
	
	DEL_NO(0,"未删除"),
	DEL_YES(1,"已删除"),
	
	PROJECT_STATUS_HAVE_IN_HAND(1,"进行中"),
	PROJECT_STATUS_DONE(2,"已完成"),
	PROJECT_STATUS_FROZEN(3,"已冻结"),

	RISK_LEVEL_GENERALLY(1,"一般"),
	RISK_LEVEL_BIGGER(2,"较大"),
	RISK_LEVEL_SIGNIFICANT(3,"重大"),
	
	PROJECT_SCHEDULE_EDITORIAL(1,"编辑中"),
	PROJECT_SCHEDULE_INSPECTION(2,"检查中"),
	PROJECT_SCHEDULE_AUDIT(3,"审核中"),
	PROJECT_SCHEDULE_IN_THE_SECOND_CONFIRMATION(4,"二次确认中"),
	
	USERTYPE_TRIAL_CUSTOMER(1,"试用客户"),
	USERTYPE_PAYMENT_CUSTOMER(2,"付费客户"),
	
	USERGRADE_MAIN_ACCOUNT(1,"主账号"),
	USERGRADE_SUB_ACCOUNT(2,"子账号");
	
	private int value;
	private String explain;
	
	public int getValue() {
		return value;
	}
	public void setValue(int value) {
		this.value = value;
	}
	public String getExplain() {
		return explain;
	}
	public void setExplain(String explain) {
		this.explain = explain;
	}
	
	EcpMenu(int value,String explain) {
		this.value=value;
		this.explain=explain;
	}
	public static String getValue(int value) {
		for (EcpMenu ecpMenu : EcpMenu.values()) {
			if(value==ecpMenu.getValue()) {
				return ecpMenu.getExplain();
			}
		}
		return "";
	}
	

}

