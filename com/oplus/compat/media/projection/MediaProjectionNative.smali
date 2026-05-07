.class public Lcom/oplus/compat/media/projection/MediaProjectionNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ACTION_NAME:Ljava/lang/String; = "createProjection"

.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.media.projection.IMediaProjection"

.field private static final KEY_PACKAGENAME:Ljava/lang/String; = "PACKAGE_NAME"

.field private static final KEY_UID:Ljava/lang/String; = "uid"

.field private static final RESULT:Ljava/lang/String; = "result"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProjection(Ljava/lang/String;I)Landroid/content/Intent;
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

    if-eqz v0, :cond_33

    const-string v0, "android.media.projection.IMediaProjection"

    const-string v1, "createProjection"

    const-string v2, "PACKAGE_NAME"

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/compat/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "uid"

    invoke-static {p0, v0, p1}, Lcom/oplus/compat/app/f;->a(Lcom/oplus/epona/Request$Builder;Ljava/lang/String;I)Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "result"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    const-string v0, "android.media.projection.extra.EXTRA_MEDIA_PROJECTION"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/IBinder;)Landroid/content/Intent;

    return-object p1

    :cond_31
    const/4 p0, 0x0

    return-object p0

    :cond_33
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    invoke-direct {p0}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>()V

    throw p0
.end method
