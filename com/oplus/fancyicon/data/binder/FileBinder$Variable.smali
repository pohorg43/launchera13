.class Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/binder/FileBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Variable"
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Variable"


# instance fields
.field public mIndex:Lcom/oplus/fancyicon/data/expression/Expression;

.field public mName:Ljava/lang/String;

.field public mVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;Lcom/oplus/fancyicon/ScreenElementRoot;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;->mName:Ljava/lang/String;

    new-instance v1, Lcom/oplus/fancyicon/data/IndexedStringVariable;

    invoke-direct {v1, v0, p2}, Lcom/oplus/fancyicon/data/IndexedStringVariable;-><init>(Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    iput-object v1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;->mVar:Lcom/oplus/fancyicon/data/IndexedStringVariable;

    const-string p2, "index"

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p3}, Lcom/oplus/fancyicon/data/expression/Expression;->build(Ljava/lang/String;Lcom/oplus/fancyicon/ScreenElementRoot;)Lcom/oplus/fancyicon/data/expression/Expression;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/FileBinder$Variable;->mIndex:Lcom/oplus/fancyicon/data/expression/Expression;

    if-nez p1, :cond_27

    const-string p0, "Variable"

    const-string p1, "fail to load file index expression"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    return-void
.end method
