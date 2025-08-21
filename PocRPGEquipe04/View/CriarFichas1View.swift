import SwiftUI

struct CriarFicha1View: View {
    @State private var nome: String = ""
    @State private var raça: String = ""
    @State private var classe: String = ""
    @State private var elemento: String = ""
    
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
                        TextField("Nome do personagem", text: $nome)
                            .padding(13)
                        TextField("Raça do personagem", text: $raça)
                            .padding(13)
                        TextField("Classe do personagem", text: $classe)
                            .padding(13)
                        TextField("Elemento do personagem", text: $elemento)
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
            
            NavigationLink(destination: CriarFichas2View(), label: {
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
        
        
    }
}



struct CriarFichaView_Previews: PreviewProvider {
    static var previews: some View {
        CriarFicha1View()
    }
}

