package br.com.nipem.model;

import br.com.nipem.security.PasswordAuthentication;

public class Instituicao {

    private String razaoSocial;
    private String cnpj;
    private String tipo;
    private String nomeContato;
    private String cargoContato;
    private String telefone;
    private String ramal;
    private String email;
    private String senha;
    private String token;

    public String getRazaoSocial() {
        return razaoSocial;
    }

    public void setRazaoSocial(String razaoSocial) {
        this.razaoSocial = razaoSocial;
    }

    public String getCnpj() {
        return cnpj;
    }

    public void setCnpj(String cnpj) {
        this.cnpj = cnpj;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getNomeContato() {
        return nomeContato;
    }

    public void setNomeContato(String nomeContato) {
        this.nomeContato = nomeContato;
    }

    public String getCargoContato() {
        return cargoContato;
    }

    public void setCargoContato(String cargoContato) {
        this.cargoContato = cargoContato;
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
