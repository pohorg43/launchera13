.class public final Lcom/android/launcher/togglebar/ToggleBarStateStack;
.super Ljava/util/Stack;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/togglebar/ToggleBarStateStack$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Stack<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/togglebar/ToggleBarStateStack$Companion;

.field private static final TAG:Ljava/lang/String; = "ToggleBarStateStack"


# instance fields
.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/togglebar/ToggleBarStateStack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/togglebar/ToggleBarStateStack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->Companion:Lcom/android/launcher/togglebar/ToggleBarStateStack$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "mLauncher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    const v0, 0x7f0a0555

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "mLauncher.findViewById(R.id.toggle_state_toolbar)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    return-void
.end method

.method private final isTopMainState()Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->size()I

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher/togglebar/state/ToggleBarMainState;

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method


# virtual methods
.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public bridge getSize()I
    .registers 1

    invoke-super {p0}, Ljava/util/Vector;->size()I

    move-result p0

    return p0
.end method

.method public pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->pop(Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final pop(Z)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TE;"
        }
    .end annotation

    invoke-super {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->isTopMainState()Z

    move-result v1

    if-nez p1, :cond_26

    if-eqz v1, :cond_26

    instance-of p1, v0, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-nez p1, :cond_26

    const-string p1, "ToggleBarStateStack"

    const-string v2, "From second state to main state"

    invoke-static {p1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    const/high16 v2, 0x3f800000  # 1.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->toolbarAnimation(FF)Landroid/animation/AnimatorSet;

    move-result-object p1

    if-nez p1, :cond_23

    goto :goto_26

    :cond_23
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_26
    :goto_26
    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/togglebar/ToggleBarManager;->isCardStorePanelExpand()Z

    move-result p1

    const/4 v2, 0x1

    xor-int/2addr p1, v2

    iget-object v3, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_59

    iget-object v3, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/statemanager/StateManager;->getLastState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v3

    sget-object v5, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    move v3, v2

    goto :goto_5a

    :cond_59
    move v3, v4

    :goto_5a
    if-eqz v1, :cond_7c

    if-eqz p1, :cond_7c

    iget-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object p1

    const-string v1, "mLauncher.stateManager.state"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-static {p1}, Lcom/android/launcher/togglebar/ToggleBarUtils;->isToggleBarState(Lcom/android/launcher3/LauncherState;)Z

    move-result p1

    if-nez p1, :cond_77

    if-eqz v3, :cond_7c

    :cond_77
    iget-object p0, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v2, v4, v4, p0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    :cond_7c
    return-object v0
.end method

.method public push(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->isTopMainState()Z

    move-result v0

    if-eqz v0, :cond_36

    instance-of v1, p1, Lcom/android/launcher/togglebar/state/ToggleBarWidgetState;

    if-nez v1, :cond_36

    const-string v1, "ToggleBarStateStack"

    const-string v2, "From main state to second state"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v1, p1, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    invoke-virtual {v2}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->getToolbarTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item as ToggleBarBaseState).toolbarTitle"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->setSecondaryTitle(Ljava/lang/String;Z)V

    :cond_27
    iget-object v1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mToggleStateToolbar:Lcom/android/launcher/togglebar/views/ToggleStateToolbar;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher/togglebar/views/ToggleStateToolbar;->toolbarAnimation(FF)Landroid/animation/AnimatorSet;

    move-result-object v1

    if-nez v1, :cond_33

    goto :goto_36

    :cond_33
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_36
    :goto_36
    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v1, v1, v1, v0}, Lcom/android/common/util/StateSwitchUtils;->applyStateChange(ZIZLcom/android/launcher/Launcher;)V

    :cond_3e
    invoke-super {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final bridge remove(I)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge removeAt(I)Ljava/lang/Object;
    .registers 2

    invoke-super {p0, p1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final setMLauncher(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/togglebar/ToggleBarStateStack;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public final bridge size()I
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/togglebar/ToggleBarStateStack;->getSize()I

    move-result p0

    return p0
.end method
