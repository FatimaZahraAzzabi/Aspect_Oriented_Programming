package aspects;

public aspect FirstAspect {

    pointcut printMessage() : execution(* net.fz.Main.main(..));

    before() : printMessage() {
        System.out.println(">>> Avant main()");
    }

    after() : printMessage() {
        System.out.println(">>> Après main()");
    }
}