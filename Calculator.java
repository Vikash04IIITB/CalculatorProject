public class Calculator {
    public static double squareRoot(double x) {
        return Math.sqrt(x);
    }

    public static long factorial(int n) {
        if (n == 0) return 1;
        long fact = 1;
        for (int i = 1; i <= n; i++) {
            fact *= i;
        }
        return fact;
    }

    public static double naturalLog(double x) {
        return Math.log(x);
    }

    public static double power(double x, double b) {
        return Math.pow(x, b);
    }

    public static void main(String[] args) {
        if (args.length < 2) {
            System.out.println("Usage: java Calculator <option> <value> [exponent]");
            System.out.println("Options:");
            System.out.println("1. Square Root (√x)");
            System.out.println("2. Factorial (x!)");
            System.out.println("3. Natural Logarithm (ln(x))");
            System.out.println("4. Power Function (x^b)");
            return;
        }

        int option = Integer.parseInt(args[0]);
        double value = Double.parseDouble(args[1]);

        switch (option) {
            case 1:
                System.out.println("Square Root of " + value + " is: " + squareRoot(value));
                break;
            case 2:
                System.out.println("Factorial of " + (int) value + " is: " + factorial((int) value));
                break;
            case 3:
                System.out.println("Natural Logarithm of " + value + " is: " + naturalLog(value));
                break;
            case 4:
                if (args.length < 3) {
                    System.out.println("Usage: java Calculator 4 <base> <exponent>");
                    return;
                }
                double exponent = Double.parseDouble(args[2]);
                System.out.println(value + " raised to the power " + exponent + " is: " + power(value, exponent));
                break;
            default:
                System.out.println("Invalid option!");
        }
    }
}
