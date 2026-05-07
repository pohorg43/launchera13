.class public final Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/big/FolderFunctionGuide;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private tips:Lcom/coui/appcompat/tooltips/COUIToolTips;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->tips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->tips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v0, 0x0

    if-nez p1, :cond_b

    goto :goto_2c

    :cond_b
    invoke-virtual {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_16

    move-object p1, v0

    goto :goto_1a

    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    :goto_1a
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-nez p1, :cond_25

    goto :goto_2c

    :cond_25
    invoke-static {}, Lcom/android/launcher3/folder/big/FolderFunctionGuide;->access$getStateListener$p()Lcom/android/launcher3/folder/big/FolderFunctionGuide$stateListener$1;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :goto_2c
    iput-object v0, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->tips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final setTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/folder/big/FolderFunctionGuide$tipLifecycleObserver$1;->tips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method
