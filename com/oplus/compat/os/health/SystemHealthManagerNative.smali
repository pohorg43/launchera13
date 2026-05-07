.class public Lcom/oplus/compat/os/health/SystemHealthManagerNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.os.health.SystemHealthManager"

.field private static final RESULT:Ljava/lang/String; = "result"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTimerCountFormTakeUidSnapshot(II)I
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/PrivilegedApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_29

    const-string v0, "android.os.health.SystemHealthManager"

    const-string v1, "getTimerCountFormTakeUidSnapshot"

    const-string v2, "uid"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "key"

    invoke-static {p0, v0, p1}, Lcom/oplus/compat/app/f;->a(Lcom/oplus/epona/Request$Builder;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_27
    const/4 p0, 0x0

    return p0

    :cond_29
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "Not Supported Before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
