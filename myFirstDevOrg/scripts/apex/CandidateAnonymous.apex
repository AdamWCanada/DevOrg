Candidates.companyName = 'Softinnovas';

Candidates c1 = new Candidates();
c1.name = 'Jerry';
c1.gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.name = 'Elaine';
c2.gender = 'Female';
c2.printCandidate();

Candidates c3 = new Candidates();
c3.name = 'George';
c3.gender = 'Male';
c3.printCandidate();

Candidates.companyName = 'CMT';

Candidates c4 = new Candidates();
c4.name = 'Ali';
c4.gender = 'Male';
c4.printCandidate();

system.debug('End candidate count' + Candidates.candidateCount);