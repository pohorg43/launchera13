.class public final Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/wallpaper/LauncherBitmapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LauncherScreenBitmapConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;,
        Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;

.field public static final DEFAULT_CURRENT_FLIPFONT:I = -0x1


# instance fields
.field private mBlackFileNameUri:Landroid/net/Uri;

.field private mCurrentFlipFont:I

.field private mHotseatAlpha:I

.field private mNeedHotseatMoveDuetoNavigation:Z

.field private mNormalFileNameUri:Landroid/net/Uri;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;

    return-void
.end method

.method private constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->getMNeedHotseatMoveDuetoNavigation()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mNeedHotseatMoveDuetoNavigation:Z

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->getMHotseatAlpha()I

    move-result v0

    iput v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mHotseatAlpha:I

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->getMNormalFileNameUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mNormalFileNameUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->getMBlackFileNameUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mBlackFileNameUri:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;->getMCurrentFlipFont()I

    move-result p1

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mCurrentFlipFont:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;-><init>(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)V

    return-void
.end method

.method public static final create(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->Companion:Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Companion;->create(Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig$Builder;)Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getMBlackFileNameUri()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mBlackFileNameUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final getMCurrentFlipFont()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mCurrentFlipFont:I

    return p0
.end method

.method public final getMHotseatAlpha()I
    .registers 1

    iget p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mHotseatAlpha:I

    return p0
.end method

.method public final getMNeedHotseatMoveDuetoNavigation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mNeedHotseatMoveDuetoNavigation:Z

    return p0
.end method

.method public final getMNormalFileNameUri()Landroid/net/Uri;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mNormalFileNameUri:Landroid/net/Uri;

    return-object p0
.end method

.method public final setMBlackFileNameUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mBlackFileNameUri:Landroid/net/Uri;

    return-void
.end method

.method public final setMCurrentFlipFont(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mCurrentFlipFont:I

    return-void
.end method

.method public final setMHotseatAlpha(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mHotseatAlpha:I

    return-void
.end method

.method public final setMNeedHotseatMoveDuetoNavigation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mNeedHotseatMoveDuetoNavigation:Z

    return-void
.end method

.method public final setMNormalFileNameUri(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherBitmapManager$LauncherScreenBitmapConfig;->mNormalFileNameUri:Landroid/net/Uri;

    return-void
.end method
