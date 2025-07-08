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
                Text("Ingresa NIP")
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
                
                SecureField(LocalizedStringKey("censored_4"), text: $nip)
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
                    Botones("Verificar")
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
                    Botones("Canclear")
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
