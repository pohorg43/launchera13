.class public final Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_CLEAN:Ljava/lang/String; = "com.action.GABREENOCLEAN"

.field public static final ACTION_GOTORECENT:Ljava/lang/String; = "com.action.GAENTER"

.field private static final ACTION_START_HOME:Ljava/lang/String; = "com.android.launcher.action.START_HOME"

.field private static final CALL_PKG:Ljava/lang/String; = "CALL_PKG"

.field public static final Companion:Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver$Companion;

.field private static final TAG:Ljava/lang/String; = "GoogleActionVoiceReceover"


# instance fields
.field private final mGaIntentFilter:Landroid/content/IntentFilter;

.field private mRv:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->Companion:Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.action.GAENTER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.action.GABREENOCLEAN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.launcher.action.START_HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->mGaIntentFilter:Landroid/content/IntentFilter;

    return-void
.end method

.method private final cleanAllTasks(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->mRv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object v0

    :goto_b
    instance-of v2, v0, Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_12

    check-cast v0, Lcom/android/launcher3/Launcher;

    goto :goto_13

    :cond_12
    move-object v0, v1

    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_19

    :cond_17
    move v0, v2

    goto :goto_22

    :cond_19
    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-ne v0, v3, :cond_17

    move v0, v3

    :goto_22
    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->mRv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->dismissAllTasks(Landroid/view/View;)V

    goto :goto_34

    :cond_2d
    new-array p0, v3, [Lcom/android/systemui/shared/recents/model/Task;

    aput-object v1, p0, v2

    invoke-static {p1, p2, p0}, Lcom/oplus/quickstep/memory/KillAppWrapper;->clearAllTasksExcept(Landroid/content/Context;Ljava/lang/String;[Lcom/android/systemui/shared/recents/model/Task;)V

    :goto_34
    return-void
.end method

.method private final goToHome(Landroid/content/Context;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->mRv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p0, :cond_23

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/Launcher;

    if-eqz p1, :cond_12

    check-cast p0, Lcom/android/launcher3/Launcher;

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-nez p0, :cond_16

    goto :goto_2f

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    if-nez p0, :cond_1d

    goto :goto_2f

    :cond_1d
    sget-object p1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    goto :goto_2f

    :cond_23
    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->notifyKeyEvent(I)V

    :goto_2f
    return-void
.end method

.method private final goToRecents(Landroid/content/Context;)V
    .registers 4

    const-string p0, "QuickStep"

    const-string v0, "GoogleActionVoiceReceover"

    const-string v1, "goToRecents(), notifyKeyEvent"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/quickstep/SystemUiProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    const/16 p1, 0xbb

    invoke-virtual {p0, p1}, Lcom/android/quickstep/proxy/OplusSystemUiProxyImpl;->notifyKeyEvent(I)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "intent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onReceive(), action="

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "QuickStep"

    const-string v3, "GoogleActionVoiceReceover"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x6f8458d

    if-eq v1, v2, :cond_51

    const v2, -0x440526d

    if-eq v1, v2, :cond_3e

    const p2, 0x38c4f912

    if-eq v1, p2, :cond_31

    goto :goto_5d

    :cond_31
    const-string p2, "com.android.launcher.action.START_HOME"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3a

    goto :goto_5d

    :cond_3a
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->goToHome(Landroid/content/Context;)V

    goto :goto_5d

    :cond_3e
    const-string v1, "com.action.GABREENOCLEAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    goto :goto_5d

    :cond_47
    const-string v0, "CALL_PKG"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->cleanAllTasks(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_5d

    :cond_51
    const-string p2, "com.action.GAENTER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5a

    goto :goto_5d

    :cond_5a
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->goToRecents(Landroid/content/Context;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method public final register(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "rv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->mRv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getActivity()Lcom/android/launcher3/statemanager/StatefulActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->mGaIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public final unregister(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/receiver/GoogleActionVoiceReceiver;->mRv:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method
