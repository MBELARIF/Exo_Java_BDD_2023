import java.util.Scanner;

public class SquareOfStars {
    public static void main(String[] args) {
        // Scanner for user input
        Scanner scanner = new Scanner(System.in);

        // Prompt the user to enter the number of stars
        System.out.print("Saisir le nombre d'étoiles : ");
        int numberOfStars = scanner.nextInt();

        // Close the scanner to prevent resource leak
        scanner.close();

        // Generate the square of stars
        for (int i = 0; i < numberOfStars; i++) {
            for (int j = 0; j < numberOfStars; j++) {
                System.out.print("* ");
            }
            System.out.println(); // Move to the next line after each row
        }
    }
}
