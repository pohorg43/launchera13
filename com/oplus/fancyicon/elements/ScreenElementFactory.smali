.class public Lcom/oplus/fancyicon/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/elements/ScreenElement;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/fancyicon/ScreenElementLoadException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Image"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p0, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/image/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_12
    const-string v0, "Path"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance p0, Lcom/oplus/fancyicon/elements/PathScreenElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/PathScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_20
    const-string v0, "Time"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance p0, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/image/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_2e
    const-string v0, "ImageNumber"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    new-instance p0, Lcom/oplus/fancyicon/elements/image/ImageNumberScreenElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/image/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_3c
    const-string v0, "Text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance p0, Lcom/oplus/fancyicon/elements/text/TextScreenElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/text/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_4a
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance p0, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/text/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_58
    const-string v0, "Button"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_66

    new-instance p0, Lcom/oplus/fancyicon/elements/ButtonScreenElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_66
    const-string v0, "ElementGroup"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "Group"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77

    goto :goto_b1

    :cond_77
    const-string v0, "Var"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85

    new-instance p0, Lcom/oplus/fancyicon/elements/VariableElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_85
    const-string v0, "VarArray"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93

    new-instance p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_93
    const-string v0, "FramerateController"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    new-instance p0, Lcom/oplus/fancyicon/elements/FramerateController;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_a1
    const-string v0, "VirtualScreen"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_af

    new-instance p0, Lcom/oplus/fancyicon/elements/VirtualScreen;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0

    :cond_af
    const/4 p0, 0x0

    return-object p0

    :cond_b1
    :goto_b1
    new-instance p0, Lcom/oplus/fancyicon/elements/ElementGroup;

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    return-object p0
.end method
