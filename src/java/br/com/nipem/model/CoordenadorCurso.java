package br.com.nipem.model;

import br.com.nipem.security.PasswordAuthentication;

public class CoordenadorCurso {
    private int idCoordenadorCurso;
    private String nome;
    private String cpf;
    private String curso;
    private String telefone;
    private String ramal;
    private String email;
    private String senha;
    private String token;

    public int getIdCoordenadorCurso() {
        return idCoordenadorCurso;
    }

    public void setIdCoordenadorCurso(int idCoordenadorCurso) {
        this.idCoordenadorCurso = idCoordenadorCurso;
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

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }
    
    public void setSenhaConfirmar(String senhaConfirmar) {
        if (senha.equals(senhaConfirmar)) {
            PasswordAuthentication pa = new PasswordAuthentication();
            this.setToken(pa.hash(senha));
        } else {
            this.senha = null;
        }
    }
    
    
}
