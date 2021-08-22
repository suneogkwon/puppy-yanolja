package co.yedam.puppy.common;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class Sha256 {
    public String encrypt(String text) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(text.getBytes());
        return byteToHex(messageDigest.digest());
    }

    private String byteToHex(byte[] bytes){
        StringBuilder builder = new StringBuilder();

        for (byte bt : bytes){
            builder.append(String.format("%02x", bt));
        }
        return builder.toString();
    }
}
