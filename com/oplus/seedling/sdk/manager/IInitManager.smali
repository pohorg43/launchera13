.class public interface abstract Lcom/oplus/seedling/sdk/manager/IInitManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;

.field public static final FEATURE_INIT_SDK_WITH_USER_CONTEXT:I = 0x1

.field public static final FEATURE_PLUGIN_EXCHANGE_GIT_COMMIT_HASH:I = 0x2

.field public static final FEATURE_SDK_INTERNAL_INIT_CALLBACK:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;->$$INSTANCE:Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;

    sput-object v0, Lcom/oplus/seedling/sdk/manager/IInitManager;->Companion:Lcom/oplus/seedling/sdk/manager/IInitManager$Companion;

    return-void
.end method


# virtual methods
.method public abstract dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract exchangeVersion(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract initSdk(Landroid/content/Context;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;)V
.end method

.method public abstract initSdk(Lcom/oplus/channel/server/IUserContext;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;)V
.end method

.method public abstract isPluginSupportFeature(I)Z
.end method

.method public abstract onTrimMemory(I)V
.end method

.method public abstract releaseSdk()V
.end method
