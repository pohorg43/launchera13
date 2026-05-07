.class public Lcom/oplus/fancyicon/util/Task;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ENTER_MARKET:Ljava/lang/String; = "market"

.field public static final MARKET_DATA:Ljava/lang/String; = "marketdata"

.field public static final TAG_ACTION:Ljava/lang/String; = "action"

.field public static final TAG_ANIMATION:Ljava/lang/String; = "anim"

.field public static final TAG_CATEGORY:Ljava/lang/String; = "category"

.field public static final TAG_CLASS:Ljava/lang/String; = "class"

.field public static final TAG_ID:Ljava/lang/String; = "id"

.field public static final TAG_NAME:Ljava/lang/String; = "name"

.field public static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field public static final TAG_TYPE:Ljava/lang/String; = "type"

.field public static final TRUE_STR:Ljava/lang/String; = "true"


# instance fields
.field public mAction:Ljava/lang/String;

.field public mAnim:Z

.field public mCategory:Ljava/lang/String;

.field public mClassName:Ljava/lang/String;

.field public mEnterMarket:Z

.field public mMarketData:Ljava/lang/String;

.field public mPackageName:Ljava/lang/String;

.field public mType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static load(Lorg/w3c/dom/Element;)Lcom/oplus/fancyicon/util/Task;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Lcom/oplus/fancyicon/util/Task;

    invoke-direct {v0}, Lcom/oplus/fancyicon/util/Task;-><init>()V

    const-string v1, "action"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/fancyicon/util/Task;->mAction:Ljava/lang/String;

    const-string v1, "type"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/fancyicon/util/Task;->mType:Ljava/lang/String;

    const-string v1, "category"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/fancyicon/util/Task;->mCategory:Ljava/lang/String;

    const-string v1, "package"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/fancyicon/util/Task;->mPackageName:Ljava/lang/String;

    const-string v1, "class"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oplus/fancyicon/util/Task;->mClassName:Ljava/lang/String;

    const-string v1, "anim"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "market"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/oplus/fancyicon/util/Task;->mEnterMarket:Z

    const-string v2, "marketdata"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/oplus/fancyicon/util/Task;->mMarketData:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5a

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_58

    goto :goto_5a

    :cond_58
    const/4 p0, 0x0

    goto :goto_5b

    :cond_5a
    :goto_5a
    const/4 p0, 0x1

    :goto_5b
    iput-boolean p0, v0, Lcom/oplus/fancyicon/util/Task;->mAnim:Z

    return-object v0
.end method
