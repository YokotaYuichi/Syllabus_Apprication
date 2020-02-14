package javacode;

public class Subject {
	private int id;
	private String name;
	private int grade;
	private String term;
	private String dayOfWeek;
	private int beginHour;
	private int endHour;
	private String require;
	private int credit;
	private String teacher;
	private String description;

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public int getGrade() {
		return grade;
	}

	public String getTerm() {
		return term;
	}

	public String getDayOfWeek() {
		return dayOfWeek;
	}

	public int getBeginHour() {
		return beginHour;
	}

	public int getEndHour() {
		return endHour;
	}

	public String getRequire() {
		return require;
	}

	public int getCredit() {
		return credit;
	}

	public String getTeacher() {
		return teacher;
	}

	public String getDescription() {
		return description;
	}

	public String getHours() {

		if (beginHour == endHour) {
			return Integer.toString(beginHour);
		} else {
			return Integer.toString(beginHour) + "～" + Integer.toString(endHour);
		}
	}
	public Subject(int i,
            String n,
            int g,
	       String trm,
	       String dow,
	       int b,
	       int e,
	       String r,
	       int c,
	       String tcr,
	       String desc) {
	id = i;
	name = n;
	grade = g;
	term = trm;
	dayOfWeek = dow;
	beginHour = b;
	endHour = e;
	require = r;
	credit = c;
	teacher = tcr;
	description = desc;
    }
}
