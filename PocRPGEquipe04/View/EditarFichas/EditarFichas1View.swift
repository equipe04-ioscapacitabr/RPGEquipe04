import SwiftUI

struct EditarFicha1View: View {
    
    @Binding var ficha: FichaModel
    @ObservedObject var fichaViewModel = FichasViewModel.shared
    
    var body: some View {
        VStack {
            VStack(alignment: .center, spacing: 16) {
                
                
                HStack(spacing: 0) {
                    StepCircle(systemImage: "doc", active: true)
                    StepLine(active: false)
                    StepCircle(systemImage: "gift", active: false)
                    StepLine(active: false)
                    StepCircle(systemImage: "eye", active: false)
                    StepLine(active: false)
                    StepCircle(systemImage: "book", active: false)
                }
                .padding(.top, 10)
                
            }
            
            VStack(alignment: .leading, spacing: 16) {
                Text("Informações básicas")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                
                
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text("Nome")
                            .padding(13)
                        Text("Raça")
                            .padding(13)
                        Text("Classe")
                            .padding(13)
                        Text("Elemento")
                            .padding(13)
                    }
                    
                    
                    VStack (alignment: .trailing) {
                        TextField("Nome do personagem", text: $fichaViewModel.nome)
                            .padding(13)
                        TextField("Raça do personagem", text: $fichaViewModel.raça)
                            .padding(13)
                        TextField("Classe do personagem", text: $fichaViewModel.classe)
                            .padding(13)
                        TextField("Elemento do personagem", text: $fichaViewModel.elemento)
                            .padding(13)
                    }
                    .padding(.leading, 30)
                    .cornerRadius(30)
                }
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
                .foregroundColor(.white)
                
            }
            
            Spacer()
            
            NavigationLink(destination: EditarFichas2View(), label: {
                HStack {
                    Spacer()
                    
                    Text("Proximo")
                        .font(.headline)
                    
                    Spacer()
                }
                .padding()
                .background(Color.pink)
                .cornerRadius(10)
            })
            .buttonStyle(PlainButtonStyle())
        }
        .padding()
        .preferredColorScheme(.dark)
        .navigationTitle("Editar Ficha")
        .onAppear {
            fichaViewModel.filltoEdit(ficha: ficha)
        }
    }
}

struct EditarFichaView_Previews: PreviewProvider {
    @State static var fichapreview = FichaModel( nome: "Daniel", descricao: "aaa", classe: "Guerreiro", raça: "Elfo", elemento: "Fogo", itens: ["Espada"], avatar: nil, level: 0, vida: 100, ataque: 0, defesa: 0, mana: 0, velocidade: 0)
    static var previews: some View {
        EditarFicha1View(ficha: $fichapreview)
    }
}
