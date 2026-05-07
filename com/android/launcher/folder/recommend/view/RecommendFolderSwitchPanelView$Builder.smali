.class public Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

.field private mMaxDragHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public create(Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->access$200(Landroid/content/Context;Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;

    move-result-object p1

    const v0, 0x7f0804c5

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->mMaxDragHeight:I

    invoke-virtual {p1, v0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->setMaxHeight(I)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    invoke-virtual {p1, p0}, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView;->setDialogDismissCallback(Lcom/android/launcher/folder/recommend/DialogDismissCallback;)V

    return-object p1
.end method

.method public setDialogDismissCallback(Lcom/android/launcher/folder/recommend/DialogDismissCallback;)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->mDialogDismissCallback:Lcom/android/launcher/folder/recommend/DialogDismissCallback;

    return-object p0
.end method

.method public setMaxHeightDiff(I)Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendFolderSwitchPanelView$Builder;->mMaxDragHeight:I

    return-object p0
.end method
