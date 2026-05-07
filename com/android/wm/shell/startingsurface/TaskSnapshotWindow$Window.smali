.class Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;
.super Lcom/android/internal/view/BaseIWindow;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Window"
.end annotation


# instance fields
.field private mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/view/BaseIWindow;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/util/MergedConfiguration;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->lambda$resized$0(Landroid/util/MergedConfiguration;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Z)V

    return-void
.end method

.method private static synthetic lambda$resized$0(Landroid/util/MergedConfiguration;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Z)V
    .registers 4

    if-eqz p0, :cond_12

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->access$100(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)I

    move-result v0

    invoke-virtual {p0}, Landroid/util/MergedConfiguration;->getMergedConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p0, :cond_12

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->access$200(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    goto :goto_1d

    :cond_12
    if-eqz p2, :cond_1d

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->access$300(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)Z

    move-result p0

    if-eqz p0, :cond_1d

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->access$400(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    :cond_1d
    :goto_1d
    return-void
.end method


# virtual methods
.method public resized(Landroid/window/ClientWindowFrames;ZLandroid/util/MergedConfiguration;Landroid/view/InsetsState;ZZIII)V
    .registers 10

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    if-nez p0, :cond_b

    return-void

    :cond_b
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->access$000(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p1

    new-instance p4, Lcom/android/wm/shell/startingsurface/t;

    invoke-direct {p4, p3, p0, p2}, Lcom/android/wm/shell/startingsurface/t;-><init>(Landroid/util/MergedConfiguration;Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;Z)V

    invoke-interface {p1, p4}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setOuter(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .registers 3

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->mOuter:Ljava/lang/ref/WeakReference;

    return-void
.end method
