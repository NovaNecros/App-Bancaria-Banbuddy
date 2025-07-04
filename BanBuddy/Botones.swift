import SwiftUI

struct Botones : View
{
    @State var texto : String
    
    init(_ texto: String)
    {
        self.texto = texto
    }
    
    var body : some View
    {
        Text(texto)
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
}
