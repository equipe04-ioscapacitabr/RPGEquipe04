import SwiftUI

struct CriarFichaView: View {
    @State private var nome: String = ""
    @State private var raça: String = ""
    @State private var classe: String = ""
    @State private var elemento: String = ""
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                
                // Indicador de etapas
                HStack(spacing: 0) {
                    StepCircle(systemImage: "doc.text", active: true)
                    StepLine()
                    StepCircle(systemImage: "gift", active: false)
                    StepLine()
                    StepCircle(systemImage: "eye", active: false)
                    StepLine()
                    StepCircle(systemImage: "book", active: false)
                }
                .padding(.top, 10)
                
                
                // Título "Itens"
                Text("Informações básicas")
                    .font(.headline)
                    .foregroundColor(.white)
                
                HStack {
                    VStack {
                        HStack {
                            Text("Nome")
                                .padding(.trailing, 45)
                            TextField("Nome do personagem", text: $nome)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        HStack {
                            Text("Raça")
                                .padding(.trailing, 55)
                            TextField("Raça do personagem", text: $raça)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        HStack {
                            Text("Classe")
                                .padding(.trailing, 46)
                            TextField("Classe do personagem", text: $classe)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                        HStack {
                            Text("Elemento")
                                .padding(.trailing, 30)
                            TextField("Elemento do personagem", text: $elemento)
                        }
                        .padding(13)
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(8)
                        .foregroundColor(.white)
                    }
                    
                }
                
                Spacer()
            }
            .padding()
            .background(.backgroud)
            .navigationBarTitle("Criar ficha", displayMode: .inline)
            .navigationBarItems(
                leading: Button("Voltar") {
                    
                }
                .foregroundColor(.blue),
                trailing: Button("Salvar") {
                    print("Salvar ficha")
                }
                .foregroundColor(.blue)
            )
        }
        .preferredColorScheme(.dark)
    }
}

// Componente do círculo da etapa
struct StepCircle: View {
    var systemImage: String
    var active: Bool
    
    var body: some View {
        Image(systemName: systemImage)
            .foregroundColor(.black)
            .font(.system(size: 20, weight: .bold))
            .padding(10)
            .background(active ? Color.blue : Color.gray.opacity(0.4))
            .clipShape(Circle())
    }
}

struct StepLine: View {
    var body: some View {
        Rectangle()
            .fill(Color.gray)
            .frame(width: 60, height: 2)
    }
}

struct CriarFichaView_Previews: PreviewProvider {
    static var previews: some View {
        CriarFichaView()
    }
}

