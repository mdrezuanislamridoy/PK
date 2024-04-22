package king.dao.pk;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public class ImgHelper {

    public static boolean deleteFile(String path) {
        boolean f = false;

        try {
            File fi = new File(path);
            f = fi.delete();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }

    public static boolean saveeFile(InputStream is, String path) {
        boolean f = false;

        try {
            byte b[] = new byte[is.available()];
            is.read(b);

            FileOutputStream fos = new FileOutputStream(path);
            fos.write(b);

        } catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
