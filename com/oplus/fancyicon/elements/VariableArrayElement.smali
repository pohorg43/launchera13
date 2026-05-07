.class public Lcom/oplus/fancyicon/elements/VariableArrayElement;
.super Lcom/oplus/fancyicon/elements/ScreenElement;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;,
        Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/elements/VariableArrayElement$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mIsStringType:Z

.field private mVars:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    if-eqz p1, :cond_41

    const-string p2, "type"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "string"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mIsStringType:Z

    const-string p2, "Vars"

    invoke-static {p1, p2}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p2

    new-instance v0, Lcom/oplus/fancyicon/elements/VariableArrayElement$1;

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/elements/VariableArrayElement$1;-><init>(Lcom/oplus/fancyicon/elements/VariableArrayElement;)V

    const-string v1, "Var"

    invoke-static {p2, v1, v0}, Lcom/oplus/fancyicon/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;)V

    const-string p2, "Items"

    invoke-static {p1, p2}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    new-instance p2, Lcom/oplus/fancyicon/elements/VariableArrayElement$2;

    invoke-direct {p2, p0}, Lcom/oplus/fancyicon/elements/VariableArrayElement$2;-><init>(Lcom/oplus/fancyicon/elements/VariableArrayElement;)V

    const-string p0, "Item"

    invoke-static {p1, p0, p2}, Lcom/oplus/fancyicon/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;)V

    :cond_41
    return-void
.end method

.method public static bridge synthetic a(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static bridge synthetic b(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mIsStringType:Z

    return p0
.end method

.method public static bridge synthetic c(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .registers 2

    return-void
.end method

.method public init()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_7
    if-ge v1, v0, :cond_17

    iget-object v2, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->init()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_17
    return-void
.end method

.method public tick(J)V
    .registers 4

    invoke-super {p0, p1, p2}, Lcom/oplus/fancyicon/elements/ScreenElement;->tick(J)V

    iget-object p1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_a
    if-ge p2, p1, :cond_1a

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;

    invoke-virtual {v0}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;->tick()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    :cond_1a
    return-void
.end method
