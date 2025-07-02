import SwiftUI

struct Gestion : View
{
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("Gestión BBB")
                    .font(.system(
                        size: 30,
                        weight: .bold,
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
                    Text("Clientes")
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
                
                NavigationLink(destination: Cuentas())
                {
                    Text("Cuentas")
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
                
                NavigationLink(destination: Tarjetas())
                {
                    Text("Tarjetas")
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
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Gestion()
}

