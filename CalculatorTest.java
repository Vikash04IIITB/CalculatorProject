import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class CalculatorTest {

    @Test
    void testSquareRoot() {
        assertEquals(4.0, Calculator.squareRoot(16));
        assertEquals(5.0, Calculator.squareRoot(25));
    }

    @Test
    void testFactorial() {
        assertEquals(1, Calculator.factorial(0));
        assertEquals(120, Calculator.factorial(5));
    }

    @Test
    void testNaturalLog() {
        assertEquals(0.0, Calculator.naturalLog(1), 0.0001);
        assertEquals(0.6931, Calculator.naturalLog(2), 0.0001);
    }

    @Test
    void testPower() {
        assertEquals(8.0, Calculator.power(2, 3));
        assertEquals(16.0, Calculator.power(4, 2));
    }
}
