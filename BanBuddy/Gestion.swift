import SwiftUI

struct Gestion : View
{
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
                
                NavigationLink(destination: Clientes())
                {
                    Botones("\(String(localized: "client").capitalized)s")
                }
                .padding(.vertical)
                
                NavigationLink(destination: Cuentas())
                {
                    Botones("\(String(localized: "account").capitalized)s")
                }
                .padding(.vertical)
                
                NavigationLink(destination: Tarjetas())
                {
                    Botones("\(String(localized: "card").capitalized)s")
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
    Gestion()
}

