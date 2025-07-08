import SwiftUI

struct Tarjetas : View
{
    @Environment(\.dismiss) private var dismiss
    
    @State private var numTarjeta : String = ""
    
    var body : some View
    {
        NavigationStack()
        {
        
            VStack(alignment: .center, spacing: 0)
            {
                Text("Menú Tarjetas")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                
                Spacer()
                
                Image("bank-card")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200)
                    .padding(.bottom, 30)
                
                VStack(alignment: .leading, spacing: 20)
                {
                    HStack(alignment: .center, spacing: 10)
                    {
                        Text("No. Tarjeta:")
                            .font(.system(size: 24))
                        
                        TextField(LocalizedStringKey("default_card_number"), text: $numTarjeta)
                            .autocorrectionDisabled()
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding(.horizontal, 30)
                
                Spacer()
                
                NavigationLink(destination: NuevaTarjeta())
                {
                    Botones("Nueva")
                }
                .padding(.vertical)
                
                Button(action:
                {
                    numTarjeta = ""
                })
                {
                    Botones("Limpiar")
                }
                .padding(.vertical)
                
                Button(action:
                {
                    dismiss()
                })
                {
                    Botones("Regresar")
                }
                .padding(.vertical)
                
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Tarjetas()
}
