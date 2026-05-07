.class public Lcom/android/launcher/pagepreview/PagePreviewListView;
.super Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;
.source ""

# interfaces
.implements Lcom/android/launcher3/DropTarget;


# static fields
.field private static final DEBUG_DRAG:Z = false

.field private static final DEBUG_ENABLE:Z = false

.field private static final RESCROLL_DELAY:I = 0x320

.field private static final SCROLL_DELAY_TIME:I = 0x1f4

.field private static final SCROLL_LEFT:I = 0x0

.field private static final SCROLL_NONE:I = -0x1

.field private static final SCROLL_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PagePreviewListView"


# instance fields
.field private mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

.field private final mLauncher:Lcom/android/launcher/Launcher;

.field private final mOnScrollAlarm:Lcom/android/launcher3/Alarm;

.field private final mPreviewItemRect:Landroid/graphics/Rect;

.field private mScrollDir:I

.field private final mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

.field private mScrollZoneWidth:I

.field private final mWorkspace:Lcom/android/launcher3/OplusWorkspace;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher/pagepreview/PagePreviewListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/togglebar/views/ToggleBarRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mOnScrollAlarm:Lcom/android/launcher3/Alarm;

    new-instance p2, Lcom/android/launcher3/Alarm;

    invoke-direct {p2}, Lcom/android/launcher3/Alarm;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollDir:I

    invoke-static {p1}, Lcom/android/launcher3/BaseActivity;->fromContext(Landroid/content/Context;)Lcom/android/launcher3/BaseActivity;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070ae3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollZoneWidth:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    return-void
.end method

.method private getTargetPagePreviewItemView(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher/pagepreview/PagePreviewItemView;
    .registers 5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/view/ViewGroup;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    iget v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->x:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget p1, p1, Lcom/android/launcher3/DropTarget$DragObject;->y:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v2

    iget-object v2, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/launcher3/DeviceProfile;->isTwoPanels:Z

    if-eqz v2, :cond_24

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher/pagepreview/PagePreviewListView;->getTargetPagePreviewItemViewForTwoPanel(Landroid/graphics/Rect;II)Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-result-object p0

    return-object p0

    :cond_24
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher/pagepreview/PagePreviewListView;->getTargetPagePreviewItemView(Landroid/graphics/Rect;II)Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z
    .registers 6

    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mWorkspace:Lcom/android/launcher3/OplusWorkspace;

    const/4 v2, 0x0

    const-string v3, "PagePreviewListView"

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string p0, "acceptDrop. Workspace isSwitchingState, can\'t accept!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_15
    invoke-direct {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewListView;->getTargetPagePreviewItemView(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-nez v1, :cond_23

    const-string p0, "acceptDrop. mDragTargetPage is null."

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_23
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    if-eqz v1, :cond_56

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_56

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-virtual {v1, v0}, Lcom/android/launcher3/OplusLauncherModel;->isShortcutExist(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_56

    const-string p1, "Drag"

    const-string v0, "acceptDrop -- the drag is attempt to pin a shortcut but the shortcut has already pinned!"

    invoke-static {p1, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f12048c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v2

    :cond_56
    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->acceptDrop(Lcom/android/launcher3/DropTarget$DragObject;)Z

    move-result p0

    return p0
.end method

.method public getDragTargetPage()Lcom/android/launcher/pagepreview/PagePreviewItemView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/android/launcher3/views/BaseDragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getTargetPagePreviewItemView(Landroid/graphics/Rect;II)Lcom/android/launcher/pagepreview/PagePreviewItemView;
    .registers 14

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_53

    iget-object v6, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_25

    goto :goto_50

    :cond_25
    iget-object v8, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v8}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p1, :cond_32

    iget-object v8, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    iget v9, p1, Landroid/graphics/Rect;->bottom:I

    iput v9, v8, Landroid/graphics/Rect;->bottom:I

    :cond_32
    if-nez v4, :cond_39

    iget-object v8, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_39
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    sub-int/2addr v8, v7

    if-ne v4, v8, :cond_45

    iget-object v7, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_45
    iget-object v7, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v7, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v7

    if-eqz v7, :cond_50

    move-object v5, v6

    check-cast v5, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    :cond_50
    :goto_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_53
    if-eqz v5, :cond_56

    return-object v5

    :cond_56
    iget p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollZoneWidth:I

    if-ge p2, p1, :cond_5c

    move p1, v7

    goto :goto_5d

    :cond_5c
    move p1, v3

    :goto_5d
    if-eqz p1, :cond_6a

    iget p1, v0, Landroid/graphics/Rect;->right:I

    if-gtz p1, :cond_6a

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0

    :cond_6a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget p3, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollZoneWidth:I

    sub-int/2addr p1, p3

    if-le p2, p1, :cond_74

    move v3, v7

    :cond_74
    if-eqz v3, :cond_88

    iget p1, v1, Landroid/graphics/Rect;->left:I

    sget p2, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    if-lt p1, p2, :cond_88

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0

    :cond_88
    return-object v2
.end method

.method public getTargetPagePreviewItemViewForTwoPanel(Landroid/graphics/Rect;II)Lcom/android/launcher/pagepreview/PagePreviewItemView;
    .registers 16

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v5, v2

    move v4, v3

    :goto_e
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_6f

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    if-eqz v6, :cond_6c

    invoke-virtual {p0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    move v8, v3

    :goto_24
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v9

    if-ge v8, v9, :cond_6c

    iget-object v9, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->setEmpty()V

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_69

    instance-of v10, v9, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-nez v10, :cond_3e

    goto :goto_69

    :cond_3e
    iget-object v10, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-eqz p1, :cond_4b

    iget-object v10, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    iget v11, p1, Landroid/graphics/Rect;->bottom:I

    iput v11, v10, Landroid/graphics/Rect;->bottom:I

    :cond_4b
    if-nez v4, :cond_52

    iget-object v10, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_52
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v7

    if-ne v4, v10, :cond_5e

    iget-object v10, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_5e
    iget-object v10, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mPreviewItemRect:Landroid/graphics/Rect;

    invoke-virtual {v10, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_69

    move-object v5, v9

    check-cast v5, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    :cond_69
    :goto_69
    add-int/lit8 v8, v8, 0x1

    goto :goto_24

    :cond_6c
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_6f
    if-eqz v5, :cond_72

    return-object v5

    :cond_72
    iget p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollZoneWidth:I

    if-ge p2, p1, :cond_78

    move p1, v7

    goto :goto_79

    :cond_78
    move p1, v3

    :goto_79
    if-eqz p1, :cond_9b

    iget p1, v0, Landroid/graphics/Rect;->right:I

    if-gtz p1, :cond_9b

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    if-eqz p1, :cond_94

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0

    :cond_94
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0

    :cond_9b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget p3, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollZoneWidth:I

    sub-int/2addr p1, p3

    if-le p2, p1, :cond_a6

    move p1, v7

    goto :goto_a7

    :cond_a6
    move p1, v3

    :goto_a7
    if-eqz p1, :cond_fa

    iget p1, v1, Landroid/graphics/Rect;->left:I

    sget p2, Lcom/android/common/config/ScreenInfo;->realScreenWidth:I

    if-lt p1, p2, :cond_fa

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    if-eqz p1, :cond_fa

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/togglebar/views/TwoPanelPagepreviewItemContainer;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x2

    if-le p1, p2, :cond_fa

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_e9

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v7

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0

    :cond_e9
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_fa

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/pagepreview/PagePreviewItemView;

    return-object p0

    :cond_fa
    return-object v2
.end method

.method public isDropEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p0

    if-nez p0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method public onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewListView;->getTargetPagePreviewItemView(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v1, :cond_d

    if-eq v1, v0, :cond_d

    invoke-virtual {v1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDragExit()V

    :cond_d
    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v0, :cond_14

    invoke-virtual {v0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_14
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 2

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDragExit()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    :cond_a
    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mOnScrollAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollDir:I

    return-void
.end method

.method public onDragOver(Lcom/android/launcher3/DropTarget$DragObject;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    if-ltz v1, :cond_39

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    if-ltz v0, :cond_39

    invoke-direct {p0, p1}, Lcom/android/launcher/pagepreview/PagePreviewListView;->getTargetPagePreviewItemView(Lcom/android/launcher3/DropTarget$DragObject;)Lcom/android/launcher/pagepreview/PagePreviewItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eq v0, v1, :cond_38

    if-eqz v1, :cond_31

    invoke-virtual {v1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {v1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->getCellLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/CellLayout;->onDragExit(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_2c
    iget-object v1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    invoke-virtual {v1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDragExit()V

    :cond_31
    iput-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-eqz v0, :cond_38

    invoke-virtual {v0, p1}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDragEnter(Lcom/android/launcher3/DropTarget$DragObject;)V

    :cond_38
    return-void

    :cond_39
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Improper spans found"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onDrop dragObject = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Drag"

    const-string v2, "PagePreviewListView"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_21

    const-string/jumbo p0, "onDrop -- dragObject is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    iget-object v0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mDragTargetPage:Lcom/android/launcher/pagepreview/PagePreviewItemView;

    if-nez v0, :cond_2c

    const-string/jumbo p0, "onDrop -- mDragTargetPage is null!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2c
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/pagepreview/PagePreviewItemView;->onDrop(Lcom/android/launcher3/DropTarget$DragObject;Lcom/android/launcher3/dragndrop/DragOptions;)V

    iget-object p1, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mOnScrollAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    iget-object p0, p0, Lcom/android/launcher/pagepreview/PagePreviewListView;->mScrollPauseAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {p0}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    return-void
.end method

.method public prepareAccessibilityDrop()V
    .registers 1

    return-void
.end method
