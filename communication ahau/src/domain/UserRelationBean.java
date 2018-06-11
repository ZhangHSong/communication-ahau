package domain;

public class UserRelationBean {
	private String relation_number;		//��ϵ���
	private String from_user_id;				//�û�A��ID
	private String to_user_id;					//�û�B��ID
	private String rel_type;						//��ϵ���ţ�����1 ��ע2 ϲ��3��

	public UserRelationBean(String relation_number, String from_user_id, String to_user_id, String rel_type) {
		super();
		this.relation_number = relation_number;
		this.from_user_id = from_user_id;
		this.to_user_id = to_user_id;
		this.rel_type = rel_type;
	}

	public UserRelationBean() {
	}

	public String getRelation_number() {
		return relation_number;
	}

	public void setRelation_number(String relation_number) {
		this.relation_number = relation_number;
	}

	public String getFrom_user_id() {
		return from_user_id;
	}

	public void setFrom_user_id(String from_user_id) {
		this.from_user_id = from_user_id;
	}

	public String getTo_user_id() {
		return to_user_id;
	}

	public void setTo_user_id(String to_user_id) {
		this.to_user_id = to_user_id;
	}

	public String getRel_type() {
		return rel_type;
	}

	public void setRel_type(String rel_type) {
		this.rel_type = rel_type;
	}

}
