.class Lcom/oplus/fancyicon/elements/VariableArrayElement$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/ScreenElementRoot;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/elements/VariableArrayElement;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$1;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$1;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-static {v0}, Lcom/oplus/fancyicon/elements/VariableArrayElement;->c(Lcom/oplus/fancyicon/elements/VariableArrayElement;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;

    iget-object p0, p0, Lcom/oplus/fancyicon/elements/VariableArrayElement$1;->this$0:Lcom/oplus/fancyicon/elements/VariableArrayElement;

    invoke-direct {v1, p0, p1}, Lcom/oplus/fancyicon/elements/VariableArrayElement$Var;-><init>(Lcom/oplus/fancyicon/elements/VariableArrayElement;Lorg/w3c/dom/Element;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
