.class public Lcom/oplus/compat/hypnus/HypnusManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HypnusManagerNative"


# instance fields
.field private mHypnusManager:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const-string v1, "HypnusManagerNative"

    if-eqz v0, :cond_11

    const-string p0, "not supported in R"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    :cond_11
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/oplus/compat/hypnus/HypnusManagerNative;->init()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/compat/hypnus/HypnusManagerNative;->mHypnusManager:Ljava/lang/Object;

    goto :goto_23

    :cond_1e
    const-string p0, "not supported before P"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_23
    return-void
.end method

.method private static hypnusGetBenchModeStateForQ(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method private static init()Ljava/lang/Object;
    .registers 1
    .annotation build Lcom/oplus/compatsdk/annotation/OplusCompatibleMethod;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public hypnusGetBenchModeState()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1c
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isP()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/oplus/compat/hypnus/HypnusManagerNative;->mHypnusManager:Ljava/lang/Object;

    invoke-static {p0}, Lcom/oplus/compat/hypnus/HypnusManagerNative;->hypnusGetBenchModeStateForQ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_15
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "should not be invoked before P"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v0, "should not be invoked in R"

    invoke-direct {p0, v0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
