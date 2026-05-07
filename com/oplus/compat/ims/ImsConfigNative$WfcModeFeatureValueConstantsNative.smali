.class public Lcom/oplus/compat/ims/ImsConfigNative$WfcModeFeatureValueConstantsNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/ims/ImsConfigNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WfcModeFeatureValueConstantsNative"
.end annotation


# static fields
.field public static IMS_PREFERRED:I
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/Blocked;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/oplus/compat/ims/ImsConfigNative$ReflectInfo;->access$000()Lcom/oplus/utils/reflect/RefInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/utils/reflect/RefInt;->getWithException(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/oplus/compat/ims/ImsConfigNative$WfcModeFeatureValueConstantsNative;->IMS_PREFERRED:I

    goto :goto_24

    :cond_12
    new-instance v0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string v1, "not support before R"

    invoke-direct {v0, v1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1a

    :catchall_1a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsConfigNative"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
