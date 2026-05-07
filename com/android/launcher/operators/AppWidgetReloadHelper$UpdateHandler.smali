.class Lcom/android/launcher/operators/AppWidgetReloadHelper$UpdateHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/operators/AppWidgetReloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateHandler"
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher3/Launcher;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;


# direct methods
.method public constructor <init>(Lcom/android/launcher/operators/AppWidgetReloadHelper;Lcom/android/launcher3/Launcher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$UpdateHandler;->this$0:Lcom/android/launcher/operators/AppWidgetReloadHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$UpdateHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/operators/AppWidgetReloadHelper$UpdateHandler;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_12

    const-string p0, "AppWidgetReloadHelper"

    const-string p1, "MESSAGE_START_LISTENING launcher null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->isListening()Z

    move-result p1

    if-eqz p1, :cond_23

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->stopListening()V

    :cond_23
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppWidgetHost()Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startListening()V

    return-void
.end method
