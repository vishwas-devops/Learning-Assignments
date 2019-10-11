@Grab('com.xlson.groovycsv:groovycsv:1.3')
import static com.xlson.groovycsv.CsvParser.parseCsv

def processFile(csvFilePath) {
    csv_file = new File(csvFilePath)
    def csv_content = csv_file.getText('utf-8')
    def data_iterator = parseCsv(csv_content, separator: ',', readFirstLine: false)
    return (data_iterator)    
} 

def getStudentDetails(studentsEntrtryInFile) {
    def studentDetails = [:]
    for (studentRecord in studentsEntrtryInFile) {
        studentDetails[studentRecord[0]] = [
            studentRecord[1],
            studentRecord[2],
            studentRecord[3],
            studentRecord[4],
            studentRecord[5]
        ]
    }
    return(studentDetails)
}

Integer getStudentTotalMarks(studentName, studentDetails) {
    Integer totalMarks = 0
    for (studentMarks in studentDetails[studentName]) {
        totalMarks += studentMarks as Integer
    }
    return(totalMarks)
}

def getStudentDivision(studentDetails) {
    def honours = []
    def first = []
    def second = []
    def third = []
    def fail = []

    for(studentName in studentDetails.keySet()) {
        Integer totalMarks
        totalMarks = getStudentTotalMarks(studentName, studentDetails)
        Float studentPercentage = ((totalMarks/500)*100)
        switch(studentPercentage.toInteger()) {
            case 75..100:
                honours.push(studentName);
                break;
            case 60..74:
                first.push(studentName);
                break;
            case 50..59:
                second.push(studentName);
                break;
            case 40..49:
                third.push(studentName);
                break;
            default:
                fail.push(studentName)
        }
    }
    // Printing the output
    println "\n\nCalculated Data:"
    println "Honors students: " + honours
    println "First divison students: " + first
    println "Second divison students: " + second
    println "Third divison students: " + third
    println "Fail students: " + fail
}

String studentCsv = "./csv/test_file.csv"
def studentsDetailsArray = processFile(studentCsv)
def studentDetails = getStudentDetails(studentsDetailsArray)

calculatStudentDivision(studentDetails)


