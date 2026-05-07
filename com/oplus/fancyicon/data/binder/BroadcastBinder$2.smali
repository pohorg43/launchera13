.class Lcom/oplus/fancyicon/data/binder/BroadcastBinder$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/data/binder/BroadcastBinder;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/binder/BroadcastBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$2;->this$0:Lcom/oplus/fancyicon/data/binder/BroadcastBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 4

    new-instance v0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;

    iget-object v1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$2;->this$0:Lcom/oplus/fancyicon/data/binder/BroadcastBinder;

    iget-object v1, v1, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$2;->this$0:Lcom/oplus/fancyicon/data/binder/BroadcastBinder;

    invoke-virtual {p0, v0}, Lcom/oplus/fancyicon/data/binder/BroadcastBinder;->addVariable(Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;)V

    return-void
.end method
