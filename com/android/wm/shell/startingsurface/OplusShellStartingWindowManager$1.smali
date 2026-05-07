.class Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$1;
.super Landroid/util/LruCache;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Landroid/os/IBinder;",
        "Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$1;->this$0:Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method
