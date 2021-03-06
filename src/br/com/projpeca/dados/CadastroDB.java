package br.com.projpeca.dados;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.projpeca.entidade.Cadastro;
import br.com.projpeca.util.Conexao;

public class CadastroDB {

	private Connection connection;
	private PreparedStatement ps;
	private ResultSet rs;
	
	public CadastroDB() {
		
		connection = Conexao.getConnection();
	}
	
	public boolean inserir (Cadastro cadastro) throws SQLException{
		
		try {
			PreparedStatement ps = this.connection.prepareStatement("INSERT INTO CADASTRO ( Nome, Peso, Tipo, DataCadastro, Valor) values (?, ?, ?, ?, ?)");

			ps.setString(1, cadastro.getNome());
			ps.setDouble(2, cadastro.getPeso());
			ps.setString(3, cadastro.getTipo());
			ps.setString(4, cadastro.getDataCadastro());
			ps.setDouble(5, cadastro.getValor());

			ps.execute();
			return true;
			
		}catch(SQLException e){
			System.err.println(e.toString());	
		}finally {
			connection.close();
		}
		
		return false;
		
	}
	
	public boolean alterar(Cadastro cadastro) throws SQLException { 
		try { 
			PreparedStatement stmt = this.connection 
					.prepareStatement("UPDATE CADASTRO SET nome= ?, peso= ?, tipo= ?, dataCadastro= ?, valor= ? WHERE id = ?"); 
			stmt.setString(1, cadastro.getNome()); 
			stmt.setDouble(2, cadastro.getPeso()); 
            stmt.setString(3, cadastro.getTipo());
            stmt.setString(4, cadastro.getDataCadastro());
            stmt.setDouble(5, cadastro.getValor());
            stmt.setInt(6, cadastro.getId());
			stmt.execute(); 
			return true; 
		} catch (SQLException e) { 
			System.err.println(e.toString()); 
		} finally { 
			connection.close(); 
		} 
		return false; 
	} 
	
	public List<Cadastro> getAll(){
		
		List<Cadastro> lstcadastro = new ArrayList<>();
		try {
			ps = this.connection.prepareStatement("SELECT id, Nome, Peso, Tipo, DataCadastro, Valor FROM CADASTRO");
			rs = ps.executeQuery();

			while (rs.next()) {
				lstcadastro.add(new Cadastro(rs.getInt("id"), rs.getString("Nome"), rs.getDouble("Peso"), rs.getString("Tipo"), rs.getString("DataCadastro"), rs.getDouble("Valor")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return lstcadastro;
	}
	
	public boolean excluir(int id) throws SQLException { 
		try { 
			PreparedStatement stmt = this.connection 
					.prepareStatement("DELETE FROM CADASTRO WHERE ID =?"); 
			stmt.setInt(1, id); 
			stmt.execute(); 
			return true; 
		} catch (SQLException e) { 
			System.err.println(e.toString()); 
		} finally { 
			connection.close(); 
		} 
		return false; 
	} 
		
}

