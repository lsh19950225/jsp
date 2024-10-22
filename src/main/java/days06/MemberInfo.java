package days06;

import java.io.Serializable;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

// 자바 빈 선언
@Getter
@Setter
public class MemberInfo implements Serializable {
									// 고유한 번호
	private static final long serialVersionUID = 9123949164526925578L;
	
	private String id;
  	private String name;
  	private String passwd;
  	private String email;
  	private Date registerDate;
	
} // class
