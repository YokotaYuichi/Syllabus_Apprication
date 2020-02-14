package javacode;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class SubjectCollection {
	protected List<Subject> subjects;
	private Subject currentSubject;
	private Iterator<Subject> iter;
	private boolean isSearch;
	private String searchKey;

	public SubjectCollection() {
		subjects = new ArrayList<Subject>();
	}

	public void add(Subject s) {
		int index = subjects.indexOf(s);
		if (index == -1) {
			subjects.add(s);
		}
	}

	public Subject getById(int id) {
		Iterator<Subject> localIter = subjects.iterator();

		while (localIter.hasNext()) {
			Subject s = localIter.next();
			if (id == s.getId()) {
				return s;
			}
		}

		System.err.println("SubjectCollection#getById(): subjects に科目ID" + id + "が見つからない。");
		return null;
	}

	public void setCurrentSubject(int id) {
		currentSubject = getById(id);
	}

	public void newIterator() {
		iter = subjects.iterator();
	}

	public boolean nextSubject() {
		if (iter.hasNext() == true) { // あれば
			currentSubject = iter.next();
			return true;
		}
		else if (isSearch == true){
			Subject s = iter.next();
			if (s.getName().indexOf(searchKey) != -1){
				currentSubject = s;
				return true;
			}
			else {
				currentSubject = null;
			    return false;
			}
		}

		else if(isSearch == false)
		{
			if (iter.hasNext() == true) { // あれば
				currentSubject = iter.next();
				return true;
			}
			else { // なければ
				currentSubject = null;
				return false;
			}
		}
		else { // なければ
			currentSubject = null;
			return false;
		}
	}

	public int getCurrentId() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getCurrentId(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return -1;
		}
		return currentSubject.getId();
	}

	public String getCurrentName() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getCurrentName(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return "-1";
		}
		return currentSubject.getName();
	}

	public int getCurrentGrade() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getCurrentGrade(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return -1;
		}
		return currentSubject.getGrade();
	}

	public String getCurrentTerm() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getCurrentTerm(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return "-1";
		}
		return currentSubject.getTerm();
	}

	public String getCurrentDayOfWeek() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getCurrentDayOfWeek(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return "-1";
		}
		return currentSubject.getDayOfWeek();
	}

	public String getCurrentRequire() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getCurrentRequire(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return "-1";
		}
		return currentSubject.getRequire();
	}

	public int getCurrentCredit() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getCredit(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return -1;
		}
		return currentSubject.getCredit();
	}

	public String getCurrentTeacher() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getTeacher(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return "-1";
		}
		return currentSubject.getTeacher();
	}

	public String getCurrentDescription() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getDescription(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return "-1";
		}
		return currentSubject.getDescription();
	}

	public String getCurrentHours() {
		if (currentSubject == null) {
			System.err.println("SubjectCollection#getHours(): エラー (currentSubjectが正しい科目オブジェクトを指していない");
			return "-1";
		}
		return currentSubject.getHours();
	}

	public void remove(Subject s) {
		int index = subjects.indexOf(s);
		subjects.remove(index);
	}

	public void setIsSearch(boolean s)
	{}
	public void setSearchKey(String key)
	{}




}