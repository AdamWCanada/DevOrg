public  class GradeScale {
    public void gradesRank(integer point) {
        String grade = '';

        if (point == 90) {
            grade = 'A';
            
        } else if (point ==85) {
            grade = 'B+';
            
        }else {
            grade = 'F';
        }

    return grade; 
    }
    
}
