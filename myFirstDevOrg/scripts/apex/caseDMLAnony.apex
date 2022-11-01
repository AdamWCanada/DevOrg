List<Case> listCase = new List<Case> ();
for (integer i=0; i<500; i++) {
    case c = new case();
    c.Subject ='There is a bug' ;
    c.Description = 'Resolve it';
    c.Status = 'New';
    c.Origin = 'Web';
    listCase.add(c);
    
}
insert listCase;

List<case> listCase = [select id, status from case where status='New'];
for(case c: listCase){
    c.Status = 'Working';
}
update listCase;
