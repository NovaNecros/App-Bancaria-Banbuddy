import SwiftUI

struct Botones : View
{
    @State var texto : String
    @State var width : CGFloat
    @State var height : CGFloat
    @State var textSize : CGFloat
    
    init(_ texto: String, width: Int = 260, height: Int = 50, textSize: Int = 30)
    {
        self.texto = texto
        self.width = CGFloat(width)
        self.height = CGFloat(height)
        self.textSize = CGFloat(textSize)
    }
    
    var body : some View
    {
        Text(texto)
            .font(.system(size: textSize))
            .foregroundColor(.white)
            .multilineTextAlignment(.center)
            .frame(width: width, height: height)
            .padding(.vertical, 12)
            .padding(.horizontal, 24)
            .background(
                RoundedRectangle(cornerRadius: 32)
                    .fill(Color("ColorPrincipal")))
            .shadow(color: Color("ColorPrincipal"), radius: 2, x: 4, y: 4)
    }
}

#Preview
{
    MenuPrincipal()
}
