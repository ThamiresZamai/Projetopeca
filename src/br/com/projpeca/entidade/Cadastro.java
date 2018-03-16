package br.com.projpeca.entidade;

public class Cadastro {

	public int id;
	public String Nome;
	public double Peso;
	public String Tipo;
	public String DataCadastro;
	public double Valor;
	
	public Cadastro() {
		this.Peso = 0;
		this.Valor = 0;
	}

	public Cadastro(int id, String Nome, double Peso, String Tipo, String DataCadastro, double Valor) {
		this.id = id;
		this.Nome = Nome;
		this.Peso = Peso;
		this.Tipo = Tipo;
		this.DataCadastro = DataCadastro;
		this.Valor = Valor;
	}
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getNome() {
		return Nome;
	}
	public void setNome(String nome) {
		Nome = nome;
	}
	public double getPeso() {
		return Peso;
	}
	public void setPeso(double peso) {
		Peso = peso;
	}
	public String getTipo() {
		return Tipo;
	}
	public void setTipo(String tipo) {
		Tipo = tipo;
	}
	public String getDataCadastro() {
		return DataCadastro;
	}
	public void setDataCadastro(String dataCadastro) {
		DataCadastro = dataCadastro;
	}
	public double getValor() {
		return Valor;
	}
	public void setValor(double valor) {
		Valor = valor;
	}
	
	
	
}
