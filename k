import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class FindK {
	public static void main(String[] args)throws IOException {
		// TODO Auto-generated method stub
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
        int num = Integer.parseInt(br.readLine());
        int num_k = Integer.parseInt(br.readLine());
        int res = 0;
        int left = 1;
        int right = num_k;
        
        while (true) {
        	if(left <= right) {
        		int cnt=0;
                int mid = (left + right) / 2;
                for (int i = 1; i <= num; i++) {
                    cnt += Math.min(mid / i, num);
                }
                if (cnt >= num_k) {
                    res = mid;
                    right = mid - 1;
                } else {
                    left = mid + 1;
                }
        	}
        	else {
        		break;
        	}
        	
        }
        System.out.println(res);
    }
}
