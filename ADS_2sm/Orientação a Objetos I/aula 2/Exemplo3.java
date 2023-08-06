public class Exemplo3{
	public static void main(String[] args){
		String cliente = "Humberto";
		
		Pet pet1 = new Pet();
		pet1.nome = "Pitty";
		pet1.idade = 14;
		
		System.out.println("O cliente " + cliente 
			+ " possui um pet chamado " + pet1.nome
			+ " que tem " + pet1.idade + " anos de idade.");
	}
}
