.class Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;
.super Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/fancyicon/data/binder/BroadcastBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BroadcastVariable"
.end annotation


# instance fields
.field public mDefNumberValue:D

.field public mDefStringValue:Ljava/lang/String;

.field public mExtraName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/fancyicon/data/Variables;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;-><init>(Lorg/w3c/dom/Element;Lcom/oplus/fancyicon/data/Variables;)V

    return-void
.end method


# virtual methods
.method public onLoad(Lorg/w3c/dom/Element;)V
    .registers 4

    const-string v0, "extra"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mExtraName:Ljava/lang/String;

    const-string v0, "default"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefStringValue:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oplus/fancyicon/data/binder/VariableBinder$ExternalVariable;->isNumber()Z

    move-result p1

    if-eqz p1, :cond_26

    :try_start_16
    iget-object p1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefStringValue:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefNumberValue:D
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1e} :catch_1f

    goto :goto_26

    :catch_1f
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefStringValue:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/fancyicon/data/binder/BroadcastBinder$BroadcastVariable;->mDefNumberValue:D

    :cond_26
    :goto_26
    return-void
.end method
