.class Lcom/oplus/fancyicon/data/binder/FileBinder$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/fancyicon/util/Utils$XmlTraverseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/fancyicon/data/binder/FileBinder;->loadVariables(Lorg/w3c/dom/Element;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/fancyicon/data/binder/FileBinder;


# direct methods
.method public constructor <init>(Lcom/oplus/fancyicon/data/binder/FileBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/FileBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .registers 5

    iget-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/FileBinder;

    new-instance v1, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;

    iget-object v2, v0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-virtual {v2}, Lcom/oplus/fancyicon/ScreenElementRoot;->getVariables()Lcom/oplus/fancyicon/data/Variables;

    move-result-object v2

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder$1;->this$0:Lcom/oplus/fancyicon/data/binder/FileBinder;

    iget-object p0, p0, Lcom/oplus/fancyicon/data/binder/VariableBinder;->mRoot:Lcom/oplus/fancyicon/ScreenElementRoot;

    invoke-direct {v1, p1, v2, p0}, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;Lcom/oplus/fancyicon/ScreenElementRoot;)V

    invoke-virtual {v0, v1}, Lcom/oplus/fancyicon/data/binder/FileBinder;->addVariable(Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;)V

    return-void
.end method
