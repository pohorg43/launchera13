.class public final Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/wallpaper/WallpaperResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isWorkspaceWpBright()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean p0, Lcom/android/launcher/wallpaper/WallpaperResolver;->sIsWorkspaceBright:Z

    return p0
.end method
