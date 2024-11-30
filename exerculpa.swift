struct CustomBorderAndShadowModifier<Content: View>: ViewModifier {
    var content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    func body(content: Content) -> some View {
        content
            .border(Color.black, width: 1)
            .shadow(radius: 3)
    }
}
