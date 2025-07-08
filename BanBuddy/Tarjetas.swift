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
                Text("\(String(localized: "menu").capitalized) \(String(localized: "card").capitalized)s")
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
                        Text("\(String(localized: "number_abrev")) \(String(localized: "card").capitalized):")
                            .font(.system(size: 24))
                        
                        TextField("\(String(localized: "default_card_number"))", text: $numTarjeta)
                            .autocorrectionDisabled()
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding(.horizontal, 30)
                
                Spacer()
                
                NavigationLink(destination: NuevaTarjeta())
                {
                    Botones("\(String(localized: "new_fem").capitalized)")
                }
                .padding(.vertical)
                
                Button(action:
                {
                    numTarjeta = ""
                })
                {
                    Botones("\(String(localized: "clear").capitalized)")
                }
                .padding(.vertical)
                
                Button(action:
                {
                    dismiss()
                })
                {
                    Botones("\(String(localized: "return").capitalized)")
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
