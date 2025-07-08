import SwiftUI

struct IngresarNIP : View
{
    @Environment(\.dismiss) private var dismiss
    
    @State private var nip : String = ""
    
    var body : some View
    {
        NavigationStack()
        {
            VStack(alignment: .center, spacing: 0)
            {
                Text("\(String(localized: "insert").capitalized) \(String(localized: "nip"))")
                    .font(.system(
                        size: 30,
                        weight: .heavy,
                        design: .rounded
                    ))
                
                Image("unlocked")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300)
                    .padding(.top, 60)
                
                Spacer()
                
                SecureField("\(String(localized: "censored_4"))", text: $nip)
                    .font(.system(size: 60))
                    .autocorrectionDisabled(true)
                    .multilineTextAlignment(.center)
                    .keyboardType(.numberPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.top, 20)
                    .padding(.horizontal, 80)
                
                Spacer()
                
                NavigationLink(destination: MenuPrincipal())
                {
                    Botones("\(String(localized: "verify").capitalized)")
                }
                .padding(.vertical)
                
                Button(action:
                {
                    withAnimation(.spring())
                    {
                        dismiss()
                    }
                })
                {
                    Botones("\(String(localized: "cancel").capitalized)")
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
    IngresarNIP()
}
