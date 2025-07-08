import SwiftUI

struct MenuPrincipal : View
{
    var body: some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                HStack(alignment: .center, spacing: 30)
                {
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundStyle(Color.red)
                        .font(.system(size: 50))
                    
                    Text(LocalizedStringKey("titulo_app"))
                        .multilineTextAlignment(.center)
                        .font(.system(
                            size: 32,
                            weight: .heavy,
                            design: .rounded))
                        .kerning(1)
                        .foregroundStyle(Color.primary)
                        .padding(.top, 10)
                    
                    Image(systemName: "dollarsign.circle.fill")
                        .foregroundStyle(Color.red)
                        .font(.system(size: 50))
                }
            
                Spacer()
                
                Image("bank")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 360)
                
                Spacer()
                
                NavigationLink(destination: Gestion())
                {
                    Botones("\(String(localized: "management").capitalized)")
                }
                .padding(.vertical)
                
                
                NavigationLink(destination: Cajero())
                {

                    Botones("\(String(localized: "atm").capitalized)")
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
    MenuPrincipal()
}
