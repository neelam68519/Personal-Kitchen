package event.hackerearth.common;

import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.io.FilenameUtils;

public class InputValidator {

	public static void validateImg(final FileItem fileItem) {
		
		final String imgExtension = FilenameUtils.getExtension(fileItem.getName());
		
		//check whether the extension is one of supported formats
		if(!"png".equalsIgnoreCase(imgExtension) && !"jpg".equalsIgnoreCase(imgExtension) && !"jpeg".equalsIgnoreCase(imgExtension)) {
			throw new IllegalArgumentException("Invalid image format. Supported formats are: JPG, JPEG & PNG");
        }
		
		//verify whether the uploaded file is really an image as the users could just rename any files to JPG, JPEG or PNG to bypass client side validation
		InputStream inputStream = null;
		try {
			inputStream = fileItem.getInputStream();
			
			if(ImageIO.read(inputStream) == null) {
				throw new IllegalArgumentException("Uploaded file is not a valid image.");
			}
		} catch (IOException e) {
			throw new IllegalArgumentException("Error while reading the uploaded file.");
		} finally {
			if(inputStream != null) {
				try {
					inputStream.close();
				} catch (IOException e) {
				}
			}
		}
	}
	
	public static void validateWebsiteURL(final String webURL) {
		
		//check whether url starts with either http:// or https://. Additionally the lenght is minimum 9 chars
		if((!webURL.startsWith("http://") && !webURL.startsWith("https://")) || webURL.length() < 9) {
			throw new IllegalArgumentException("Website URL must start with either http:// or https://");
		} else if(webURL.contains(".") && !webURL.endsWith("nagarro.com")) { //for external urls, ensure that it ends with nagarro.com
			throw new IllegalArgumentException("All external URLs must be of nagarro domain");
		}
	}
}
