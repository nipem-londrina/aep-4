package br.com.nipem.security;

public class CPF {

    public static boolean validarCpf(String cpf) {

        int o = 0;
        int sum1 = 0;
        int sum2 = 0;
        boolean rep = true;

        for (int i = 0; i < 13; i++) {
            if (i % 4 != 3) {
                //multiplica e soma os digitos. sum1 não recebe o digito 12
                sum1 += (i != 12) ? ((cpf.charAt(i) - '0') * (10 - i + o)) : 0;
                sum2 += (cpf.charAt(i) - '0') * (11 - i + o);
                //verifica se todos iguais
                rep = rep ? cpf.charAt(0) == cpf.charAt(i) : false;
            } else {
                //pula pontos e traços
                o++;
            }
        }

        //retorna se não é repetido e se as somas batem
        return !rep && sum1 * 10 % 11 % 10 == cpf.charAt(12) - '0' && sum2 * 10 % 11 % 10 == cpf.charAt(13) - '0';
    }
}
