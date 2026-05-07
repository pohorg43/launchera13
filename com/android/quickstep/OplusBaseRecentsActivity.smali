.class public abstract Lcom/android/quickstep/OplusBaseRecentsActivity;
.super Lcom/android/launcher3/statemanager/StatefulActivity;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/statemanager/StatefulActivity<",
        "Lcom/android/quickstep/fallback/RecentsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final Companion:Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;

.field private static final TAG:Ljava/lang/String; = "OplusBaseRecentsActivity"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mDockviewPanel:Lcom/oplus/quickstep/dock/DockView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/quickstep/dock/DockView<",
            "*>;"
        }
    .end annotation
.end field

.field public mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

.field private mIsRecentsVisibility:Z

.field private final mScreenOffReceiver:Lcom/android/quickstep/OplusBaseRecentsActivity$mScreenOffReceiver$1;

.field private mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

.field private final mWms$delegate:Ly2/e;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/OplusBaseRecentsActivity;->Companion:Lcom/android/quickstep/OplusBaseRecentsActivity$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    sget-object v0, Ly2/g;->c:Ly2/g;

    sget-object v1, Lcom/android/quickstep/OplusBaseRecentsActivity$mWms$2;->INSTANCE:Lcom/android/quickstep/OplusBaseRecentsActivity$mWms$2;

    invoke-static {v0, v1}, Ly2/f;->b(Ly2/g;Lkotlin/jvm/functions/Function0;)Ly2/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mWms$delegate:Ly2/e;

    new-instance v0, Lcom/android/quickstep/OplusBaseRecentsActivity$mScreenOffReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/quickstep/OplusBaseRecentsActivity$mScreenOffReceiver$1;-><init>(Lcom/android/quickstep/OplusBaseRecentsActivity;)V

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mScreenOffReceiver:Lcom/android/quickstep/OplusBaseRecentsActivity$mScreenOffReceiver$1;

    return-void
.end method

.method private final getMWms()Landroid/view/IWindowManager;
    .registers 2

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mWms$delegate:Ly2/e;

    invoke-interface {p0}, Ly2/e;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-mWms>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/view/IWindowManager;

    return-object p0
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .registers 1

    return-void
.end method

.method public createAtomicAnimationFactory()Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/statemanager/StateManager$AtomicAnimationFactory<",
            "Lcom/android/quickstep/fallback/RecentsState;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/android/quickstep/util/OplusRecentsAtomicAnimationFactoryImpl;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/OplusRecentsAtomicAnimationFactoryImpl;-><init>(Lcom/android/launcher3/statemanager/StatefulActivity;)V

    return-object v0
.end method

.method public final getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    if-eqz p0, :cond_5

    return-object p0

    :cond_5
    const-string p0, "mFallbackRecentsView"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getTriggerPanel()Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-object p0
.end method

.method public final initView()V
    .registers 3

    const v0, 0x7f0a01e1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/oplus/quickstep/dock/DockView;

    if-eqz v1, :cond_e

    check-cast v0, Lcom/oplus/quickstep/dock/DockView;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_12

    goto :goto_1b

    :cond_12
    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mDockviewPanel:Lcom/oplus/quickstep/dock/DockView;

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setDockView(Lcom/oplus/quickstep/dock/DockView;)V

    :goto_1b
    const v0, 0x7f0a0404

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    iput-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mTriggerPanel:Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getRunningTaskView()Lcom/android/quickstep/views/TaskView;

    move-result-object v0

    if-nez v0, :cond_e

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_11

    :cond_e
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    :goto_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/android/launcher3/BaseDraggingActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mScreenOffReceiver:Lcom/android/quickstep/OplusBaseRecentsActivity$mScreenOffReceiver$1;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .registers 4

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mScreenOffReceiver:Lcom/android/quickstep/OplusBaseRecentsActivity$mScreenOffReceiver$1;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->setRecentsInVisibility()V

    :cond_15
    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onResume()V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMFallbackRecentsView()Lcom/android/quickstep/fallback/FallbackRecentsView;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "onResume"

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setControlViewVisible(ZLjava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .registers 5

    invoke-super {p0}, Lcom/android/launcher3/BaseDraggingActivity;->onStart()V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    const-string v2, "onStart"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_c
    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMWms()Landroid/view/IWindowManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V

    iput-boolean v3, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_1e
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_25

    goto :goto_2e

    :cond_25
    const-string v2, "setRecentsVisibility to true, e="

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2e
    return-void
.end method

.method public onStop()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->onStop()V

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    const-string v2, "onStop"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->setRecentsInVisibility()V

    return-void
.end method

.method public final setMFallbackRecentsView(Lcom/android/quickstep/fallback/FallbackRecentsView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mFallbackRecentsView:Lcom/android/quickstep/fallback/FallbackRecentsView;

    return-void
.end method

.method public final setRecentsInVisibility()V
    .registers 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/quickstep/OplusBaseRecentsActivity;->getMWms()Landroid/view/IWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->setRecentsVisibility(Z)V

    iput-boolean v1, p0, Lcom/android/quickstep/OplusBaseRecentsActivity;->mIsRecentsVisibility:Z

    sget-object p0, Ly2/p;->a:Ly2/p;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lq/d;->h(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Ly2/j;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_19

    goto :goto_26

    :cond_19
    const-string v0, "setRecentsVisibility to false, e="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "QuickStep"

    const-string v1, "OplusBaseRecentsActivity"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method
