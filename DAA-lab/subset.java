import java.util.Scanner;

class subset

{

int s[],x[];

int d,n;

subset()

{

s=new int[10];

x=new int[10];

}

void read()

{

int sum=0;Scanner in=new Scanner(System.in);

System.out.println("enter the total number of elements in set");

n=in.nextInt();

System.out.println("enter the set");

for(int i=1;i<=n;i++)

s[i]=in.nextInt();

System.out.println("enter the maximum set value");

d=in.nextInt();

for(int i=1;i<=n;i++)

sum=sum+s[i];

if(sum<d)

System.out.println("subset is not possible");

else

System.out.println("the sets are");

subset_fun(0,1,sum);

in.close();

}

void subset_fun(int S,int k,int r)

{

x[k]=1;

if((S+s[k])==d)

{

for(int i=1;i<=k;i++)

if(x[i]==1)

System.out.println(+s[i]+" ");

System.out.println();

}

else

if(S+s[k]+s[k+1]<=d)

subset_fun(S+s[k],k+1,r-s[k]);

if((S+r-s[k]>=d)&&(S+s[k+1]<=d))

{

x[k]=0;

subset_fun(S,k+1,r-s[k]);

}

}

}

public class subset_demo {

public static void main(String[] args) {

subset st=new subset();

st.read();

}

}
