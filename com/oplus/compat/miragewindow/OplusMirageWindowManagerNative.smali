.class public Lcom/oplus/compat/miragewindow/OplusMirageWindowManagerNative;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lcom/oplus/compat/annotation/OplusApi;
.end annotation


# static fields
.field private static final APPEND_PROTECTION_LIST:Ljava/lang/String; = "append"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "com.oplus.miragewindow.OplusMirageWindowManager"

.field private static final FLAG:Ljava/lang/String; = "flag"

.field public static final FLAG_NONE:I = 0x0

.field public static final FLAG_PRIVACY_PROTECTION:I = 0x10

.field private static final OPTION:Ljava/lang/String; = "option"

.field private static final PROTECTION_LIST:Ljava/lang/String; = "protectionList"

.field private static final RESULT:Ljava/lang/String; = "result"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z
    .registers 5
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.oplus.permission.safe.PROTECT"
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oplus/miragewindow/OplusMirageWindowManager;->getInstance()Lcom/oplus/miragewindow/OplusMirageWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/miragewindow/OplusMirageWindowManager;->updateMirageWindowCastFlag(ILandroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "com.oplus.miragewindow.OplusMirageWindowManager"

    const-string v1, "updateMirageWindowCastFlag"

    const-string v2, "flag"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "option"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withParcelable(Ljava/lang/String;Landroid/os/Parcelable;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_42

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_42
    const/4 p0, 0x0

    return p0

    :cond_44
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static updatePrivacyProtectionList(Ljava/util/List;Z)Z
    .registers 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation build Landroidx/annotation/RequiresPermission;
        value = "com.oplus.permission.safe.PROTECT"
    .end annotation

    .annotation build Lcom/oplus/compat/annotation/OplusApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/oplus/miragewindow/OplusMirageWindowManager;->getInstance()Lcom/oplus/miragewindow/OplusMirageWindowManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oplus/miragewindow/OplusMirageWindowManager;->updatePrivacyProtectionList(Ljava/util/List;Z)Z

    move-result p0

    return p0

    :cond_f
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    if-eqz v0, :cond_53

    new-instance v0, Lcom/oplus/epona/Request$Builder;

    invoke-direct {v0}, Lcom/oplus/epona/Request$Builder;-><init>()V

    const-string v1, "com.oplus.miragewindow.OplusMirageWindowManager"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setComponentName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    const-string v1, "updatePrivacyProtectionList"

    invoke-virtual {v0, v1}, Lcom/oplus/epona/Request$Builder;->setActionName(Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object v0

    check-cast p0, Ljava/util/ArrayList;

    const-string v1, "protectionList"

    invoke-virtual {v0, v1, p0}, Lcom/oplus/epona/Request$Builder;->withStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "append"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withBoolean(Ljava/lang/String;Z)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_51
    const/4 p0, 0x0

    return p0

    :cond_53
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before R"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
