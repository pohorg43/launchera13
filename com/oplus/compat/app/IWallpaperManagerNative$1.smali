.class Lcom/oplus/compat/app/IWallpaperManagerNative$1;
.super Landroid/app/IWallpaperManagerCallback$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/compat/app/IWallpaperManagerNative;->getWallpaperWithFeature(Ljava/lang/String;Ljava/lang/String;Landroid/app/IWallpaperManagerCallbackNative;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$callback:Landroid/app/IWallpaperManagerCallbackNative;


# direct methods
.method public constructor <init>(Landroid/app/IWallpaperManagerCallbackNative;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/compat/app/IWallpaperManagerNative$1;->val$callback:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-direct {p0}, Landroid/app/IWallpaperManagerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWallpaperChanged()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/compat/app/IWallpaperManagerNative$1;->val$callback:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-interface {p0}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperChanged()V

    return-void
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/compat/app/IWallpaperManagerNative$1;->val$callback:Landroid/app/IWallpaperManagerCallbackNative;

    invoke-interface {p0, p1, p2, p3}, Landroid/app/IWallpaperManagerCallbackNative;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V

    return-void
.end method
