.class public final Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/common/IObserverListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/quickstep/navigation/NavigationController;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/quickstep/navigation/NavigationController;


# direct methods
.method public constructor <init>(Lcom/oplus/quickstep/navigation/NavigationController;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "NavigationController"

    const-string v0, " mNavStateListener onChange"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->access$updateMistouchState(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iget-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->notifyModeChange()V

    iget-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->access$updateTouchBounds(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iget-object p1, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-static {p1}, Lcom/oplus/quickstep/navigation/NavigationController;->access$notifyMistouchStateChange(Lcom/oplus/quickstep/navigation/NavigationController;)V

    iget-object p0, p0, Lcom/oplus/quickstep/navigation/NavigationController$mNavStateListener$1;->this$0:Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->isSwipeUpGesture()Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_35

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->showGestureViewIfNeeded(Landroid/content/Context;I)V

    :cond_35
    return-void
.end method
