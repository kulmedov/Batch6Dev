public class RankHandler {
    public string rankPrize(integer rank) {
        string prize = '';
        //if-else if
        if (rank == 1) {
            prize = 'Gold';
        } else if (rank == 2){
            prize = 'Silver'; 
        } else if (rank == 3){
            prize = 'Bronze';
        } else {
            //nested ifs
            if(rank <= 10) 
                prize = 'Top 10 certificate';
            else {
                prize = 'Participation certificate';
            } 
        }
        return prize;
    }
    
    public string rankPrizeSwitch(integer rank) {
        string prize = 'Via switch';
        switch on rank {
            when 1 {
                prize += ' Gold';
            } when 2 {
                prize += ' Silver';
            } when 3 {
                prize += ' Bronze';
            } when else {
                if(rank <= 10)
                prize += ' Top 10 Certificate';
                else {
                    prize += ' Participation certificate';
                }
            }
        }
        return prize;
    }


}
