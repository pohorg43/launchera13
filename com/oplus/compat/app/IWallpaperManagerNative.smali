.class public Lcom/oplus/compat/app/IWallpaperManagerNative;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final COMPONENT_NAME:Ljava/lang/String; = "android.app.IWallpaperManager"

.field private static final RESULT:Ljava/lang/String; = "result"

.field private static final TAG:Ljava/lang/String; = "IWallpaperManagerNative"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallbackNative;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .registers 14
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1e
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isT()Z

    move-result v0

    if-nez v0, :cond_8d

    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isR()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    const-string v0, "android.app.IWallpaperManager"

    const-string v2, "getWallpaperWithFeature"

    const-string v3, "callingPkg"

    invoke-static {v0, v2, v3, p0}, Lcom/oplus/compat/app/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string v0, "callingFeatureId"

    invoke-virtual {p0, v0, p1}, Lcom/oplus/epona/Request$Builder;->withString(Ljava/lang/String;Ljava/lang/String;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string p2, "iWallpaperManagerCallback"

    invoke-virtual {p0, p2, p1}, Lcom/oplus/epona/Request$Builder;->withBinder(Ljava/lang/String;Landroid/os/IBinder;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "which"

    invoke-virtual {p0, p1, p3}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "outParams"

    invoke-virtual {p0, p1, p4}, Lcom/oplus/epona/Request$Builder;->withBundle(Ljava/lang/String;Landroid/os/Bundle;)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    const-string p1, "wallpaperUserId"

    invoke-virtual {p0, p1, p5}, Lcom/oplus/epona/Request$Builder;->withInt(Ljava/lang/String;I)Lcom/oplus/epona/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Request$Builder;->build()Lcom/oplus/epona/Request;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/epona/Epona;->newCall(Lcom/oplus/epona/Request;)Lcom/oplus/epona/internal/RealCall;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/internal/RealCall;->execute()Lcom/oplus/epona/Response;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_58

    invoke-virtual {p0}, Lcom/oplus/epona/Response;->getBundle()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    check-cast p0, Landroid/os/ParcelFileDescriptor;

    return-object p0

    :cond_58
    const-string p1, "getWallpaperWithFeature error: "

    invoke-static {p1}, Landroid/support/v4/media/d;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "IWallpaperManagerNative"

    invoke-static {p0, p1, p2}, Lcom/oplus/compat/app/c;->a(Lcom/oplus/epona/Response;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    return-object v1

    :cond_64
    invoke-static {}, Lcom/oplus/compat/utils/util/VersionUtils;->isQ()Z

    move-result p1

    if-eqz p1, :cond_85

    if-eqz p2, :cond_71

    new-instance v1, Lcom/oplus/compat/app/IWallpaperManagerNative$1;

    invoke-direct {v1, p2}, Lcom/oplus/compat/app/IWallpaperManagerNative$1;-><init>(Landroid/app/IWallpaperManagerCallbackNative;)V

    :cond_71
    move-object v4, v1

    const-string p1, "wallpaper"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/app/IWallpaperManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IWallpaperManager;

    move-result-object v2

    move-object v3, p0

    move v5, p3

    move-object v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Landroid/app/IWallpaperManager;->getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :cond_85
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "not supported before Q"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8d
    new-instance p0, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;

    const-string p1, "android T beta1 compat unSupported"

    invoke-direct {p0, p1}, Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
