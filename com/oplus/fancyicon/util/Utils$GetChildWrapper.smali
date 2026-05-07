.class public Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/util/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetChildWrapper"
.end annotation


# instance fields
.field private mEle:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    return-void
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;
    .registers 3

    new-instance v0, Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;

    iget-object p0, p0, Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    invoke-static {p0, p1}, Lcom/oplus/fancyicon/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;-><init>(Lorg/w3c/dom/Element;)V

    return-object v0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .registers 1

    iget-object p0, p0, Lcom/oplus/fancyicon/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    return-object p0
.end method
