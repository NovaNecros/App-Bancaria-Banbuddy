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
                    
                    Text("Banco \nBanBuddy")
                        .multilineTextAlignment(.center)
                        .font(.system(
                            size: 32,
                            weight: .bold,
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

                    Text("Gestión")
                        .font(.system(size:30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 260, height: 50)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 24)
                        .background(
                            RoundedRectangle(cornerRadius: 32)
                                .fill(Color.red.opacity(1)))
                        .shadow(color: Color.red.opacity(0.4), radius: 8, x: 8, y: 4)
                }
                .padding(.vertical)
                
                
                NavigationLink(destination: Cajero())
                {

                    Text("Cajero")
                        .font(.system(size:30))
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .frame(width: 260, height: 50)
                        .padding(.vertical, 12)
                        .padding(.horizontal, 24)
                        .background(
                            RoundedRectangle(cornerRadius: 32)
                                .fill(Color.red.opacity(1)))
                        .shadow(color: Color.red.opacity(0.4), radius: 8, x: 8, y: 4)
                }
                .padding(.vertical)
            }
            .padding()
        }
    }
}

#Preview
{
    MenuPrincipal()
}
