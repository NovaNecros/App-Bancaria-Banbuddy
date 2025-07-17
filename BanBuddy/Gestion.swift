import SwiftUI

struct Gestion : View
{
    @Environment(\.dismiss) private var dismiss
    
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("\(String(localized: "management").capitalized) \(String(localized: "siglas_banbuddy"))")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded))
                
                Spacer()
                
                Image("database-management")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 320)
                    .padding(.top, 40)
                
                Spacer()
                
                VStack(alignment: .center, spacing: 20)
                {
                    NavigationLink(destination: Clientes())
                    {
                        Botones("\(String(localized: "client").capitalized)s", height: 30)
                    }
                    
                    NavigationLink(destination: Cuentas())
                    {
                        Botones("\(String(localized: "account").capitalized)s", height: 30)
                    }
                    
                    NavigationLink(destination: Tarjetas())
                    {
                        Botones("\(String(localized: "card").capitalized)s", height: 30)
                    }
                    
                    Button(action:
                    {
                        dismiss()
                    })
                    {
                        Botones("\(String(localized: "exit").capitalized)", height: 30)
                    }
                }
                .padding()

            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Gestion()
}

