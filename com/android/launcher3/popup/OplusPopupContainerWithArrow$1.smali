.class Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->createPreDragCondition(Z)Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->lambda$onPreDragEnd$0()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->lambda$onPreDragEnd$1(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->lambda$onPreDragEnd$2()V

    return-void
.end method

.method private synthetic lambda$onPreDragEnd$0()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private static synthetic lambda$onPreDragEnd$1(Lcom/android/launcher3/folder/OplusFolderIcon;)V
    .registers 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    return-void
.end method

.method private synthetic lambda$onPreDragEnd$2()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .registers 6

    iget-object p1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {p1, p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$302(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;Z)Z

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-eqz p2, :cond_32

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p2, p2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, p2, Landroid/appwidget/AppWidgetHostView;

    if-nez v1, :cond_18

    instance-of v1, p2, Lcom/android/launcher3/card/LauncherCardView;

    if-nez v1, :cond_18

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of p2, p0, Lcom/android/launcher3/BubbleTextView;

    if-eqz p2, :cond_27

    check-cast p0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIconVisible(Z)V

    goto/16 :goto_a9

    :cond_27
    instance-of p2, p0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz p2, :cond_a9

    check-cast p0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    goto/16 :goto_a9

    :cond_32
    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p2, p2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, p2, Lcom/android/launcher3/card/uscard/USCardContainerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_5e

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p2, p2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    check-cast p2, Lcom/android/launcher3/card/uscard/USCardContainerView;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/card/uscard/USCardContainerView;->setTextVisible(Z)V

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$400(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    new-instance v1, Lcom/android/launcher3/popup/l;

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/popup/l;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;I)V

    invoke-virtual {p2, v1}, Lcom/android/launcher3/dragndrop/OplusDragController;->addShowOriginalIconOpsForPop(Ljava/lang/Runnable;)V

    goto :goto_61

    :cond_5e
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_61
    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p2, p2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, p2, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_84

    check-cast p2, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {p2, v2}, Lcom/android/launcher3/folder/FolderIcon;->setIconVisible(Z)V

    iget-object v1, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {v1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$500(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/popup/m;

    invoke-direct {v2, p2}, Lcom/android/launcher3/popup/m;-><init>(Lcom/android/launcher3/folder/OplusFolderIcon;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->addShowOriginalIconOpsForPop(Ljava/lang/Runnable;)V

    :cond_84
    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object p2, p2, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v1, p2, Lcom/android/launcher3/widget/LauncherAppWidgetHostView;

    if-nez v1, :cond_90

    instance-of v1, p2, Lcom/android/launcher3/card/TitleCardView;

    if-eqz v1, :cond_a9

    :cond_90
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-static {p2}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$600(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/popup/l;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/popup/l;-><init>(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;I)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/dragndrop/OplusDragController;->addShowOriginalIconOpsForPop(Ljava/lang/Runnable;)V

    :cond_a9
    :goto_a9
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$200(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Z

    move-result p0

    if-eqz p0, :cond_18

    iget-object p0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    instance-of p1, p0, Lcom/android/launcher3/dragndrop/LauncherDragView;

    if-eqz p1, :cond_18

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_18
    return-void
.end method

.method public shouldStartDrag(D)Z
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget v1, v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    int-to-double v1, v1

    cmpl-double v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2e

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$000(Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object v0, v0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->mLongPressedView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, v3}, Lcom/android/launcher3/hotseatexpand/OplusHotseatExpandDragHelper;->hotseatExpandItemShouldNotDragOutAndToast(Lcom/android/launcher3/model/data/ItemInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_25
    invoke-static {v3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->access$102(Z)Z

    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->handleClose(Z)V

    return v2

    :cond_2e
    iget-object v0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget-object v0, v0, Lcom/android/launcher3/popup/ArrowPopup;->mActivityContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_3f

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->shouldStartDragOrCancelDrag(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-nez v0, :cond_3f

    return v2

    :cond_3f
    iget-object p0, p0, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow$1;->this$0:Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;

    iget p0, p0, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mStartDragThreshold:I

    int-to-double v0, p0

    cmpl-double p0, p1, v0

    if-lez p0, :cond_49

    move v2, v3

    :cond_49
    return v2
.end method
