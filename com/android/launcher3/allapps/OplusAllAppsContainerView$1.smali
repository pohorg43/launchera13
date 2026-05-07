.class Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/statemanager/StateManager$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
        "Lcom/android/launcher3/LauncherState;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_48

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object v0

    iget-object v0, v0, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    goto :goto_3d

    :cond_3c
    const/4 v0, 0x0

    :goto_3d
    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {v0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a()V

    :cond_48
    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_55

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->reset()V

    :cond_55
    return-void
.end method

.method public bridge synthetic onStateTransitionComplete(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->onStateTransitionComplete(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method

.method public onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    if-ne p1, v0, :cond_48

    :cond_8
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$000(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/poplist/COUIPopupListWindow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coui/appcompat/poplist/COUIPopupListWindow;->dismiss()V

    :cond_25
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object p1

    if-eqz p1, :cond_48

    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object p1

    iget-object p1, p1, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a:Lcom/coui/appcompat/panel/COUIBottomSheetDialog;

    if-eqz p1, :cond_3c

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    goto :goto_3d

    :cond_3c
    const/4 p1, 0x0

    :goto_3d
    if-eqz p1, :cond_48

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->this$0:Lcom/android/launcher3/allapps/OplusAllAppsContainerView;

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/OplusAllAppsContainerView;)Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;

    move-result-object p0

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIListBottomSheetDialog;->a()V

    :cond_48
    return-void
.end method

.method public bridge synthetic onStateTransitionStart(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsContainerView$1;->onStateTransitionStart(Lcom/android/launcher3/LauncherState;)V

    return-void
.end method
