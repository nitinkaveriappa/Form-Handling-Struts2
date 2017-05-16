import java.sql.SQLException;
import java.util.ArrayList;

public class MainAction {
	//Variables to store data from the form
	private int studentid;
	private String name;
	private String streetaddress;
	private String city;
	private String state;
	private int zip;
	private String telephonenumber;
	private String email;
	private String url;
	private String dateofsurvey;
	private String like;
	private String interest;
	private String comments;
	private String month;
	private String year;
	private String recommend;
		
	private String data;
	
	private DataBean cData;
	private StudentBean sData;
	private ArrayList<Integer> list;
	
	
	
	/**
	 * @return the studentid
	 */
	public int getStudentid() {
		return studentid;
	}

	/**
	 * @param studentid the studentid to set
	 */
	public void setStudentid(int studentid) {
		this.studentid = studentid;
	}

	/**
	 * @return the name
	 */
	public String getName() {
		return name;
	}

	/**
	 * @param name the name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/**
	 * @return the streetaddress
	 */
	public String getStreetaddress() {
		return streetaddress;
	}

	/**
	 * @param streetaddress the streetaddress to set
	 */
	public void setStreetaddress(String streetaddress) {
		this.streetaddress = streetaddress;
	}

	/**
	 * @return the city
	 */
	public String getCity() {
		return city;
	}

	/**
	 * @param city the city to set
	 */
	public void setCity(String city) {
		this.city = city;
	}

	/**
	 * @return the state
	 */
	public String getState() {
		return state;
	}

	/**
	 * @param state the state to set
	 */
	public void setState(String state) {
		this.state = state;
	}

	/**
	 * @return the zip
	 */
	public int getZip() {
		return zip;
	}

	/**
	 * @param zip the zip to set
	 */
	public void setZip(int zip) {
		this.zip = zip;
	}

	/**
	 * @return the telephonenumber
	 */
	public String getTelephonenumber() {
		return telephonenumber;
	}

	/**
	 * @param telephonenumber the telephonenumber to set
	 */
	public void setTelephonenumber(String telephonenumber) {
		this.telephonenumber = telephonenumber;
	}

	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}

	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/**
	 * @return the url
	 */
	public String getUrl() {
		return url;
	}

	/**
	 * @param url the url to set
	 */
	public void setUrl(String url) {
		this.url = url;
	}

	/**
	 * @return the dateofsurvey
	 */
	public String getDateofsurvey() {
		return dateofsurvey;
	}

	/**
	 * @param dateofsurvey the dateofsurvey to set
	 */
	public void setDateofsurvey(String dateofsurvey) {
		this.dateofsurvey = dateofsurvey;
	}

	/**
	 * @return the like
	 */
	public String getLike() {
		return like;
	}

	/**
	 * @param like the like to set
	 */
	public void setLike(String like) {
		this.like = like;
	}

	/**
	 * @return the interest
	 */
	public String getInterest() {
		return interest;
	}

	/**
	 * @param interest the interest to set
	 */
	public void setInterest(String interest) {
		this.interest = interest;
	}

	/**
	 * @return the comments
	 */
	public String getComments() {
		return comments;
	}

	/**
	 * @param comments the comments to set
	 */
	public void setComments(String comments) {
		this.comments = comments;
	}

	/**
	 * @return the month
	 */
	public String getMonth() {
		return month;
	}

	/**
	 * @param month the month to set
	 */
	public void setMonth(String month) {
		this.month = month;
	}

	/**
	 * @return the year
	 */
	public String getYear() {
		return year;
	}

	/**
	 * @param year the year to set
	 */
	public void setYear(String year) {
		this.year = year;
	}

	/**
	 * @return the recommend
	 */
	public String getRecommend() {
		return recommend;
	}

	/**
	 * @param recommend the recommend to set
	 */
	public void setRecommend(String recommend) {
		this.recommend = recommend;
	}

	/**
	 * @return the data
	 */
	public String getData() {
		return data;
	}

	/**
	 * @param data the data to set
	 */
	public void setData(String data) {
		this.data = data;
	}

	/**
	 * @return the cData
	 */
	public DataBean getcData() {
		return cData;
	}

	/**
	 * @param cData the cData to set
	 */
	public void setcData(DataBean cData) {
		this.cData = cData;
	}

	/**
	 * @return the sData
	 */
	public StudentBean getsData() {
		return sData;
	}

	/**
	 * @param sData the sData to set
	 */
	public void setsData(StudentBean sData) {
		this.sData = sData;
	}

	/**
	 * @return the list
	 */
	public ArrayList<Integer> getList() {
		return list;
	}

	/**
	 * @param list the list to set
	 */
	public void setList(ArrayList<Integer> list) {
		this.list = list;
	}
	
	/**
	 * Default COnstructor
	 */
	public MainAction() {
	}

	//Executes when submitSurvey action is called
	public String execute()
	{
		//Inserts the student data into the database
		StudentDAO studentDAO = new StudentDAO();
		try {
				studentDAO.addStudent(studentid, name, streetaddress, city, state, zip, telephonenumber, email, url, dateofsurvey, like, interest, comments, month, year, recommend);
			} 
		catch (SQLException e)
		{
			System.out.println("Insert data error");
			e.printStackTrace();
		}
				
		//Calculates the mean and standard deviation of the data and returns a DataBean object
		DataProcessor dataprocessor = new DataProcessor();
		cData = dataprocessor.calculate(data);
		
		//Gets the list of students
		try {
				list = studentDAO.StudentList();
			} 
		catch (SQLException e) 
		{
			System.out.println("Student list retrive error");
			e.printStackTrace();
		}
		
		
		//IF mean is greater than 90 then redirect to winner acknowledgement 
		if(cData.getMean() > 90.00)
		{
			return "winner";
		}
		else
		{
			return "simple";
		}
			
	}
	
	//Executes when getDetails action is called
	public String fetch() {
		
		//Fetch student details and stores it the student bean 		
		StudentDAO studentDAO = new StudentDAO();
		try {
			sData = studentDAO.getStudent(studentid);
		} catch (SQLException e) {
			System.out.println("Student retrive error");
			e.printStackTrace();
		}
		
		//IF student exists then display details 
		if(sData.getStudent_id() == studentid)
		{
			return "success";
		}
		else
		{
			return "failure";
		}
	}
}
