.class public final Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mBlackFileNameUri:Landroid/net/Uri;

.field private mCurrentFlipFont:I

.field private mHotseatAlpha:I

.field private mNeedHotseatMoveDuetoNavigation:Z

.field private mNormalFileNameUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mNeedHotseatMoveDuetoNavigation:Z

    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mHotseatAlpha:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mCurrentFlipFont:I

    return-void
.end method


# virtual methods
.method public final build()Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;
    .registers 3

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public final getMBlackFileNameUri()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mBlackFileNameUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getMCurrentFlipFont()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mCurrentFlipFont:I

    return p0
.end method

.method public final getMHotseatAlpha()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mHotseatAlpha:I

    return p0
.end method

.method public final getMNeedHotseatMoveDuetoNavigation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mNeedHotseatMoveDuetoNavigation:Z

    return p0
.end method

.method public final getMNormalFileNameUri()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mNormalFileNameUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final setBlackFileNameUri(Landroid/net/Uri;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mBlackFileNameUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final setCurrentFlipFont(I)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mCurrentFlipFont:I

    return-object p0
.end method

.method public final setHotseatAlpha(I)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mHotseatAlpha:I

    return-object p0
.end method

.method public final setMBlackFileNameUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mBlackFileNameUri:Landroid/net/Uri;

    return-void
.end method

.method public final setMCurrentFlipFont(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mCurrentFlipFont:I

    return-void
.end method

.method public final setMHotseatAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mHotseatAlpha:I

    return-void
.end method

.method public final setMNeedHotseatMoveDuetoNavigation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mNeedHotseatMoveDuetoNavigation:Z

    return-void
.end method

.method public final setMNormalFileNameUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mNormalFileNameUri:Landroid/net/Uri;

    return-void
.end method

.method public final setNormalFileNameUri(Landroid/net/Uri;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->mNormalFileNameUri:Landroid/net/Uri;

    return-object p0
.end method
