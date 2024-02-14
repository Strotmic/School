namespace Demo.Services;

public interface ICalculatorService{
    int Add(int a, int b);
}

public class CalculatorService : ICalculatorService{
    public int Add(int a, int b){
        return a + b;
    }

}