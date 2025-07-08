import SwiftUI

struct Saldo : View
{
    @Environment(\.dismiss) private var dismiss
    
    var body : some View
    {
        NavigationStack()
        {
        
            VStack(alignment: .center, spacing: 0)
            {
                Text("\(String(localized: "balance").capitalized)")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                    .padding(.top)
                
                Spacer()
                
                Image("wallet")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 350)
                    .padding(.bottom, 50)
                
                HStack(alignment: .center, spacing: 30)
                {
                    Text("\(String(localized: "balance").capitalized) \(String(localized: "current")):")
                        .font(.system(size: 24))
                    
                    Text("$ \(UserDefaults.standard.string(forKey: "saldo") ?? "\(String(localized: "default_money"))")")
                        .font(.system(size: 24))
                }
                .padding([.top, .horizontal])
                
                Spacer()
                
                Button(action:
                {
                    withAnimation()
                    {
                        dismiss()
                    }
                })
                {
                    Botones("\(String(localized: "return").capitalized)")
                }
                .padding(.bottom)
            }
            .navigationBarBackButtonHidden(true)
            .padding()
        }
    }
}

#Preview
{
    Saldo()
}
