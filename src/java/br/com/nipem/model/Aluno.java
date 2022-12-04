package br.com.nipem.model;

import br.com.nipem.security.PasswordAuthentication;
import java.util.Date;

public class Aluno {
    private int idAluno;
    private String nome;
    private String cpf;
    private String curso;
    private String telefone;
    private String ramal;
    private String email;
    private int idSupervisor;
    private Date dataIncio;
    private Date dataTermino;
    private String periodo;
    private String senha;
    private String token;


    public int getIdAluno() {
        return idAluno;
    }

    public void setIdAluno(int idAluno) {
        this.idAluno = idAluno;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCpf() {
        return cpf;
    }

    public void setCpf(String cpf) {
        this.cpf = cpf;
    }

    
    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone(String telefone) {
        this.telefone = telefone;
    }

    public String getRamal() {
        return ramal;
    }

    public void setRamal(String ramal) {
        this.ramal = ramal;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getIdSupervisor() {
        return idSupervisor;
    }

    public void setIdSupervisor(int idSupervisor) {
        this.idSupervisor = idSupervisor;
    }

    public Date getDataIncio() {
        return dataIncio;
    }

    public void setDataIncio(Date dataIncio) {
        this.dataIncio = dataIncio;
    }

    public Date getDataTermino() {
        return dataTermino;
    }

    public void setDataTermino(Date dataTermino) {
        this.dataTermino = dataTermino;
    }

    public String getPeriodo() {
        return periodo;
    }

    public void setPeriodo(String periodo) {
        this.periodo = periodo;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }


    public void setSenhaConfirmar(String senhaConfirmar) {
        if (senha.equals(senhaConfirmar)) {
            PasswordAuthentication pa = new PasswordAuthentication();
            this.setToken(pa.hash(senha));
        } else {
            this.senha = null;
        }
    }

    public String getToken() {
        return token;
    }    
    
    public void setToken(String token) {
        this.token = token;
    }
}
