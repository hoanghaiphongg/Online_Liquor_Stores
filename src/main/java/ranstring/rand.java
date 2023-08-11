package ranstring;


import java.util.Random;

public class rand {
	public rand() {
	}

    public static String generateRandomString(int length) {
        // Ký tự được sử dụng trong chuỗi ngẫu nhiên
        String characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

        StringBuilder sb = new StringBuilder();
        Random random = new Random();

        // Tạo chuỗi ngẫu nhiên bằng cách chọn ngẫu nhiên ký tự từ danh sách characters
        for (int i = 0; i < length; i++) {
            int index = random.nextInt(characters.length());
            char randomChar = characters.charAt(index);
            sb.append(randomChar);
        }

        return sb.toString();
    }
}