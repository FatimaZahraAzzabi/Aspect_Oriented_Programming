package aspects;

import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class SecondAspect {

    @Pointcut("execution(* net.fz.Main.main(..))")
    public void pc1() { }

    @Before("pc1()")
    public void beforeMain(){
        System.out.println("--------------------------------------------------");
        System.out.println("Before main from Aspect with Annotation syntax");
        System.out.println("--------------------------------------------------");
    }
}