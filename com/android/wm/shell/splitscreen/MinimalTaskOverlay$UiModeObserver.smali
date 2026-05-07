.class Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/splitscreen/observer/DisplayConfigurationObserver$OnDisplayConfigChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UiModeObserver"
.end annotation


# instance fields
.field private final mOuter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;->mOuter:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;-><init>(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;)V

    return-void
.end method


# virtual methods
.method public onDisplayUiModeChange(II)V
    .registers 3
    .annotation runtime Lcom/android/wm/shell/common/annotations/ShellMainThread;
    .end annotation

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay$UiModeObserver;->mOuter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;

    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;->access$100(Lcom/android/wm/shell/splitscreen/MinimalTaskOverlay;ILandroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
