.class public final Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->registerUserPresentReceiver(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;->this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;->onReceive$lambda-0(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    return-void
.end method

.method private static final onReceive$lambda-0(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V
    .registers 3

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V

    invoke-static {}, Ljava/lang/System;->gc()V

    invoke-static {}, Ljava/lang/System;->runFinalization()V

    invoke-static {p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->access$getMUserPresentReceiver$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Landroid/content/BroadcastReceiver;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    const-string p0, "LauncherWallpaperManager"

    const-string/jumbo p1, "user present for auto GC"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    :goto_d
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_27

    sget-object p2, Lcom/oplus/util/OplusExecutors;->WALLPAPER_MANAGER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;->this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    new-instance v0, Lcom/android/launcher/guide/c;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/guide/c;-><init>(Landroid/content/Context;Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    const-wide/16 p0, 0xbb8

    invoke-virtual {p2, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_27
    return-void
.end method
