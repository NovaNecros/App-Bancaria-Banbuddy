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
                    
                    Text("Banco BanBuddy")
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
                    Botones("Gestión")
                }
                .padding(.vertical)
                
                
                NavigationLink(destination: Cajero())
                {

                    Botones("Cajero")
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
