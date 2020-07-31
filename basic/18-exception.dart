void test_age(int age){
    if(age < 0){
        throw new FormatException();
    }
}

// custom exceptions
class AmtException implements Exception{
    String errMsg() => 'Amount should be greater than zero';
}

void withdraw_amt(int amt){
    if(amt <= 0){
        throw new AmtException();
    }
}

void main(){
    int x = 12;
    int y = 0;
    int res;

    // /  : return double
    // ~/ : return int

    // way1
    try{
        res = x ~/ y;
    }on IntegerDivisionByZeroException{
        print('Cannot divide by zero');
    }

    // way2
    try{
        res = x ~/ y;
    }catch(e){
        print(e);
    }

    /*
        try{

        } on Exption1 {

        } catch (Exption2) {

        } finally {

        }
    */

    try{
        test_age(-1);
    }catch(e){
        print("${e}");
    }

    try{
        withdraw_amt(-1);
    }catch(e){
        print(e.errMsg());
    }
}
