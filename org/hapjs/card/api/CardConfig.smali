.class public Lorg/hapjs/card/api/CardConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final KEY_CLOSE_GLOBAL_DEFAULT_NIGHT_MODE:Ljava/lang/String; = "closeGlobalDefaultNightMode"

.field public static final KEY_DARK_MODE:Ljava/lang/String; = "darkMode"

.field public static final KEY_HOST_SOURCE:Ljava/lang/String; = "hostSource"

.field public static final KEY_TEXT_SIZE_AUTO:Ljava/lang/String; = "textSizeAuto"


# instance fields
.field private mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    iget-object p0, p0, Lorg/hapjs/card/api/CardConfig;->mConfigs:Ljava/util/Map;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lorg/hapjs/card/api/CardConfig;->mConfigs:Ljava/util/Map;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/hapjs/card/api/CardConfig;->mConfigs:Ljava/util/Map;

    :cond_b
    iget-object p0, p0, Lorg/hapjs/card/api/CardConfig;->mConfigs:Ljava/util/Map;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
