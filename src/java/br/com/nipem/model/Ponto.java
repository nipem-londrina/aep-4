package br.com.nipem.model;

import java.sql.Time;
import java.util.Date;

public class Ponto {
    private int idPonto;
    private int idAluno;
    private int idSupervisor;
    private int idCoordenador;
    private int solicitacaoEstagio;
    private Time entrada;
    private Time saida;
    private Date dia;
    private int validacao;
}
